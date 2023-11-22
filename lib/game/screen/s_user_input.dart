import 'package:flutter/material.dart';
import 'package:flutter_example/game/data/input_type.dart';

class UserInput extends StatelessWidget {
  final bool isDone;
  final InputType? userInput;
  final Function(InputType) callback;

  const UserInput(
      {this.userInput,
      required this.isDone,
      required this.callback,
      super.key});

  @override
  Widget build(BuildContext context) {
    if (isDone) {
      return Row(
        children: [
          Expanded(child: SizedBox.shrink()),
          InputCard(child: Image.asset(userInput!.path)),
          Expanded(child: SizedBox.shrink()),
        ],
      );
    }

    return Row(
      children: _getInputs(callback),
    );
  }

  List<Widget> _getInputs(Function(InputType) callback) {
    return InputType.values
        .map(
          (type) => InputCard(
            child: Image.asset(type.path),
            callback: () => callback.call(type),
          ),
        )
        .toList();
  }
}

class InputCard extends StatelessWidget {
  final VoidCallback? callback;
  final Widget child;

  const InputCard({this.callback, required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: InkWell(
            onTap: () => callback?.call(), child: InputContent(child: child)));
  }
}

class InputContent extends StatelessWidget {
  final Widget child;

  const InputContent({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.grey, width: 8),
      ),
      child: child,
    );
  }
}
