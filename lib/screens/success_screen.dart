import 'package:flutter/material.dart';
import 'package:confetti/confetti.dart';

class SuccessScreen extends StatefulWidget {
  final String name;
  final String avatar;

  const SuccessScreen({
    super.key,
    required this.name,
    required this.avatar,
  });

  @override
  State<SuccessScreen> createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {
  late ConfettiController _controller;

  @override
  void initState() {
    super.initState();
    _controller = ConfettiController(duration: const Duration(seconds: 3));
    _controller.play();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Success")),
      body: Stack(
        alignment: Alignment.center,
        children: [
          ConfettiWidget(
            confettiController: _controller,
            blastDirectionality: BlastDirectionality.explosive,
            shouldLoop: false,
            emissionFrequency: 0.05,
            numberOfParticles: 20,
            gravity: 0.2,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(widget.avatar, style: const TextStyle(fontSize: 60)),
              const SizedBox(height: 20),
              Text(
                "Welcome, ${widget.name}!",
                style: const TextStyle(fontSize: 24),
              ),
            ],
          ),
        ],
      ),
    );
  }
}