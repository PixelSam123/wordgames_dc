import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:wordgames_dc/msg.dart';
import 'package:wordgames_dc/pages/settings.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _serverUrlController = TextEditingController();
  final _chatController = TextEditingController();
  StreamSubscription? _chatSubscription;

  final _chatMessages = <String>[];
  WebSocketChannel? _channel;

  @override
  void dispose() async {
    await _disconnectFromServer();

    _serverUrlController.dispose();
    _chatController.dispose();

    super.dispose();
  }

  void _openSettings() {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => const SettingsPage()),
    );
  }

  void _connectToServer() {
    final channel = WebSocketChannel.connect(
      Uri.parse(_serverUrlController.text),
    );

    _chatSubscription = channel.stream.listen((event) {
      final message = Message.fromJson(json.decode(event.toString()));
      print(message);

      setState(() {
        switch (message.type) {
          case 'ChatMessage':
            _chatMessages.add(message.content);
            break;
          case 'OngoingRoundInfo':
            _chatMessages.add('PLACEHOLDER ONGOINGROUNDINFO: $message.content');
            break;
          case 'FinishedRoundInfo':
            _chatMessages.add(
              'PLACEHOLDER FINISHEDROUNDINFO: $message.content',
            );
            break;
          case 'FinishedGame':
            _chatMessages.add('PLACEHOLDER FINISHEDGAME: $message.content');
        }
      });
    });

    setState(() {
      _channel = channel;
    });
  }

  Future<void> _disconnectFromServer() async {
    await _chatSubscription?.cancel();

    await _channel?.sink.close();
    setState(() {
      _channel = null;
    });
  }

  void _sendMessage() {
    if (_channel != null) {
      _channel!.sink.add(_chatController.text);
      _chatController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Wordgames Client'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            tooltip: 'Settings',
            onPressed: _openSettings,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _serverUrlController,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                labelText:
                    'Server URL (Connection: ${_channel != null ? 'Connected' : 'Not Connected'})',
              ),
              onEditingComplete: _connectToServer,
            ),
            const SizedBox(height: 16.0),
            Expanded(
              child: ListView(
                reverse: true,
                children: _chatMessages.reversed
                    .map((message) => Text(message))
                    .toList(),
              ),
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: _chatController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'message/answer here, send with Enter',
              ),
              onEditingComplete: _sendMessage,
            ),
          ],
        ),
      ),
    );
  }
}
