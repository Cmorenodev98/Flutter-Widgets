import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {

  static const String name = 'buttons_screen';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons screen'),
      ),
      body: _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_outlined),
        onPressed: () => context.pop(),
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {

    final colors= Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [

            ElevatedButton(onPressed: (){}, child: const Text('Elevated Button')),
            const ElevatedButton(onPressed: null, child: Text('Disabled')),
            ElevatedButton.icon(
              onPressed: (){}, 
              label: Text('Elevated Icon'), 
              icon: const Icon( Icons.access_alarm_rounded ),),

            FilledButton(onPressed: (){}, child: const Text('Filled')),
            FilledButton.icon(
              onPressed: (){}, 
              icon: const Icon(Icons.admin_panel_settings_outlined), 
              label: Text('Filled Icon'),),

            OutlinedButton(onPressed: () {}, child: const Text('Outlined')),
            OutlinedButton.icon(
              onPressed: () {}, 
              label: const Text('Outlined Icon'),
              icon: const Icon(Icons.terminal_outlined),),

            TextButton(onPressed: () {}, child: const Text('Text btn')),
            TextButton.icon(onPressed: () {}, 
            label: const Text('Text icon btn'),
            icon: Icon(Icons.compare_rounded),),

            IconButton(onPressed: () {}, icon: const Icon(Icons.app_registration_rounded)),
            IconButton(
            onPressed: () {}, 
            icon: const Icon(Icons.app_registration_outlined),
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(colors.primary),
              iconColor: WidgetStatePropertyAll(Colors.white),
            ),
            ),


          ],
        ),
      ),
    );
  }
}