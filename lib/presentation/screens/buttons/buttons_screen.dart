// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {

  static const name = 'buttons_screens';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: const Text("Buttons Screen"),
      ),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back),
        onPressed:() {
          context.pop();
      },),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: SizedBox(
          child: Wrap(
            spacing: 10,
            alignment: WrapAlignment.center,
            children: [
              ElevatedButton(onPressed: (){}, child: Text('Elevated button')),
              ElevatedButton(onPressed: null, child: Text('Elevated button disabled')),
              ElevatedButton.icon(icon: Icon(Icons.access_alarm_rounded) ,onPressed: null, label: Text('Elevated icon'),),
              FilledButton(onPressed: (){}, child: Text('Filled')),
              FilledButton.icon(icon: Icon(Icons.accessibility_new),onPressed: (){}, label: Text('Filled icon')),
              OutlinedButton(onPressed: (){}, child: Text('Outlined')),
              OutlinedButton.icon(icon: Icon(Icons.terminal), onPressed: (){}, label: Text('Outlined icon')),
              TextButton(onPressed: (){}, child: Text('Text button')),
              TextButton.icon(icon: Icon(Icons.account_box_outlined), onPressed: (){}, label: Text('Text icon button')),
              IconButton(onPressed: (){}, icon: Icon(Icons.app_registration_rounded)),
              IconButton(onPressed: (){}, icon: Icon(Icons.app_registration_rounded), style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(colors.primary)
              )),
            ],
          )
        ),
      ),
    );
  }
}