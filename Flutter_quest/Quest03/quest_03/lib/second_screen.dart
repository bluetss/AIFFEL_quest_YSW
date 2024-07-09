import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SecondScreen extends StatelessWidget {
  final void Function(BuildContext, bool) setIsCat;
  const SecondScreen({super.key, required this.setIsCat});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text(
          'Second Page',
          style: TextStyle(color: Colors.white),
        ),
        leading: const Center(
          child: FaIcon(
            FontAwesomeIcons.dog,
            color: Colors.white,
            size: 30,
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 150,
              ),
              ElevatedButton(
                onPressed: () => setIsCat(context, false),
                child: const Text('Back'),
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 300,
                width: 300,
                child: Image.network(
                  'https://images.unsplash.com/photo-1503256207526-0d5d80fa2f47?q=80&w=2848&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
