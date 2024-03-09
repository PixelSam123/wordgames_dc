import 'dart:async';
import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:wordgames_dc/msg.dart';
import 'package:wordgames_dc/pages/settings.dart';
import 'package:wordgames_dc/providers.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  final _chatController = TextEditingController();
  StreamSubscription? _chatSubscription;
  Timer? _timer;

  final _chatMessages = <String>[];
  WebSocketChannel? _channel;
  String _wordBoxGuide = 'WAITING ROUND START!';
  String _wordBox = '';
  String _timerText = '';

  @override
  void dispose() async {
    await _disconnectFromServer();

    _chatController.dispose();
    _timer?.cancel();

    super.dispose();
  }

  void _openSettings() {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => const SettingsPage()),
    );
  }

  void _setServerUrl(String value) async {
    final serverUrl = ref.read(serverUrlProvider.notifier);
    await serverUrl.set(value);
  }

  Future<void> _toggleConnectToServer() async {
    if (_channel != null) {
      await _disconnectFromServer();
    } else {
      _connectToServer();
    }
  }

  void _connectToServer() async {
    if (_channel != null) {
      await _disconnectFromServer();
    }

    final channel = WebSocketChannel.connect(
      Uri.parse(ref.read(serverUrlProvider).asData!.value),
    );

    _chatSubscription = channel.stream.listen((event) {
      final message = Message.fromJson(json.decode(event.toString()));

      (switch (message) {
        ChatMessage(:final content) => setState(() {
            _chatMessages.add(content);
          }),
        OngoingRoundInfo(:final content) => (() {
            _timer?.cancel();
            _timer = Timer.periodic(
              const Duration(milliseconds: 100),
              (timer) {
                final diff = DateTime.parse(content.roundFinishTime)
                    .difference(DateTime.now());

                if (diff.isNegative) {
                  timer.cancel();
                }

                final decimalDisplay = max(
                  0,
                  ((diff.inMilliseconds - diff.inSeconds * 1000) / 100).floor(),
                );

                setState(() {
                  _timerText = '${diff.inSeconds}.${decimalDisplay}s';
                });
              },
            );

            setState(() {
              _wordBoxGuide = 'PLEASE GUESS!';
              _wordBox = content.wordToGuess;
            });
          })(),
        FinishedRoundInfo(:final content) => (() {
            _timer?.cancel();
            _timer = Timer.periodic(
              const Duration(milliseconds: 100),
              (timer) {
                final diff = DateTime.parse(content.toNextRoundTime)
                    .difference(DateTime.now());

                if (diff.isNegative) {
                  timer.cancel();
                }

                final decimalDisplay = max(
                  0,
                  ((diff.inMilliseconds - diff.inSeconds * 1000) / 100).floor(),
                );

                setState(() {
                  _timerText = '${diff.inSeconds}.${decimalDisplay}s';
                });
              },
            );

            setState(() {
              _wordBoxGuide = "TIME'S UP! THE ANSWER:";
              _wordBox = content.wordAnswer;
            });
          })(),
        FinishedGame() => (() {
            _timer?.cancel();

            setState(() {
              _timerText = '';

              _wordBoxGuide = 'WAITING ROUND START!';
              _wordBox = '';
            });
          })(),
        Message() => setState(() {
            _chatMessages.add(
              '(UNIMPLEMENTED MESSAGE WAS RECEIVED, PLEASE REPORT BUG)',
            );
          }),
      });
    });

    setState(() {
      _channel = channel;
    });
  }

  Future<void> _disconnectFromServer() async {
    _timer?.cancel();

    await _chatSubscription?.cancel();
    await _channel?.sink.close();

    setState(() {
      _timerText = '';

      _channel = null;

      _wordBoxGuide = 'WAITING ROUND START!';
      _wordBox = '';
    });
  }

  void _sendMessage() {
    final message = _chatController.text.trim();

    if (message == '/clear') {
      setState(() {
        _chatMessages.clear();
      });

      _chatController.clear();
    } else if (_channel != null && message.isNotEmpty) {
      _channel!.sink.add(message);

      _chatController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    final serverUrl = ref.watch(serverUrlProvider);

    if (serverUrl.isLoading) {
      return const CircularProgressIndicator();
    }

    if (serverUrl.hasError) {
      return const Text('Error loading server URL.');
    }

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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              initialValue: serverUrl.asData!.value,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                labelText:
                    'Server URL (Connection: ${_channel != null ? 'Connected' : 'Not Connected'})',
              ),
              onChanged: _setServerUrl,
              onEditingComplete: _connectToServer,
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _toggleConnectToServer,
              child: Text(_channel != null ? 'Disconnect' : 'Connect'),
            ),
            const SizedBox(height: 16.0),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      style: const TextStyle(
                        fontFamily: 'ui-monospace',
                        fontFamilyFallback: [
                          'SFMono-Regular',
                          'Menlo',
                          'Monaco',
                          'Consolas',
                          'Liberation Mono',
                          'Courier New',
                          'monospace',
                        ],
                      ),
                      '$_wordBoxGuide - $_timerText',
                    ),
                    Text(
                      style: TextStyle(
                        fontFamily: 'ui-monospace',
                        fontFamilyFallback: const [
                          'SFMono-Regular',
                          'Menlo',
                          'Monaco',
                          'Consolas',
                          'Liberation Mono',
                          'Courier New',
                          'monospace',
                        ],
                        fontSize: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .fontSize,
                      ),
                      _wordBox.isEmpty ? '-' : '"$_wordBox"',
                    ),
                  ],
                ),
              ),
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
