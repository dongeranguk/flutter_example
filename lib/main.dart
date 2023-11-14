import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Body(),
    ),
  ));
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TestCheckBox(),
        TestRadioButton(),
        TestSlider(),
        TestSwitch(),
        TestSwitch2(),
        TestPopupMenu()

      ],
    );
  }
}

class TestCheckBox extends StatefulWidget {
  const TestCheckBox({super.key});

  @override
  State<TestCheckBox> createState() => _TestCheckState();
}

class _TestCheckState extends State<TestCheckBox> {
  late bool checked1 = false;
  late bool checked2 = false;
  late bool checked3 = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            value: checked1,
            onChanged: (newValue) =>
                setState(() => checkMethod(1, newValue ?? false))),
        Checkbox(
            value: checked2,
            onChanged: (newValue) =>
                setState(() => checkMethod(2, newValue ?? false))),
        Checkbox(
            value: checked3,
            onChanged: (newValue) =>
                setState(() => checkMethod(3, newValue ?? false))),
      ],
    );
  }

  checkMethod(int index, bool newValue) {
    if (newValue != null) {
      if (index == 1) {
        checked1 = newValue;
      } else if (index == 2) {
        checked2 = newValue;
      } else {
        checked3 = newValue;
      }
    }
  }
}

class TestRadioButton extends StatefulWidget {
  const TestRadioButton({super.key});

  @override
  State<TestRadioButton> createState() => _TestRadioButtonState();
}

class _TestRadioButtonState extends State<TestRadioButton> {
  TestValue? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: selectedValue == TestValue.test1
              ? Text(TestValue.test1.name)
              : null,
          leading: Radio<TestValue>(
              value: TestValue.test1,
              groupValue: selectedValue,
              onChanged: (newValue) =>
                  setState(() => selectedValue = newValue!)),
          onTap: () => setState(() {
            if (selectedValue != TestValue.test1) {
              selectedValue = TestValue.test1;
            }
          }),
        ),
        ListTile(
          title: selectedValue == TestValue.test2
              ? Text(TestValue.test2.name)
              : null,
          leading: Radio<TestValue>(
              value: TestValue.test2,
              groupValue: selectedValue,
              onChanged: (newValue) =>
                  setState(() => selectedValue = newValue!)),
          onTap: () => setState(() {
            if (selectedValue != TestValue.test2) {
              selectedValue = TestValue.test2;
            }
          }),
        ),
        ListTile(
          title: selectedValue == TestValue.test3
              ? Text(TestValue.test3.name)
              : null,
          leading: Radio<TestValue>(
              value: TestValue.test3,
              groupValue: selectedValue,
              onChanged: (newValue) =>
                  setState(() => selectedValue = newValue!)),
          onTap: () => setState(() {
            if (selectedValue != TestValue.test3) {
              selectedValue = TestValue.test3;
            }
          }),
        ),
      ],
    );
  }
}

enum TestValue { test1, test2, test3 }

class TestSlider extends StatefulWidget {
  const TestSlider({super.key});

  @override
  State<TestSlider> createState() => _TestSliderState();
}

class _TestSliderState extends State<TestSlider> {
  double selectedValue = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('${selectedValue.round()}'),
        Slider(
            label: selectedValue.round().toString(),
            value: selectedValue,
            divisions: 100,
            max: 100,
            min: 0,
            onChanged: (newValue) => setState(() => selectedValue = newValue)),
      ],
    );
  }
}


class TestSwitch extends StatefulWidget {

  const TestSwitch({super.key});

  @override
  State<TestSwitch> createState() => _TestSwitchState();
}

class _TestSwitchState extends State<TestSwitch> {
  bool selectedValue = false;

  @override
  Widget build(BuildContext context) {
    return Switch(value: selectedValue, onChanged: (newValue) => setState(() => selectedValue = newValue));
  }
}

class TestSwitch2 extends StatefulWidget {

  const TestSwitch2({super.key});

  @override
  State<TestSwitch2> createState() => _TestSwitch2State();
}

class _TestSwitch2State extends State<TestSwitch2> {
  bool selectedValue = false;

  @override
  Widget build(BuildContext context) {
    return CupertinoSwitch(value: selectedValue, onChanged: (newValue) => setState(() => selectedValue = newValue));
  }
}

class TestPopupMenu extends StatefulWidget {

  const TestPopupMenu({super.key});

  @override
  State<TestPopupMenu> createState() => _TestPopupMenu();
}

class _TestPopupMenu extends State<TestPopupMenu> {
  TestValue selectedValue = TestValue.test1;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(itemBuilder: (context) {
      return TestValue.values.map((value) => PopupMenuItem(value: selectedValue, child: Text(value.name))).toList();
    });
  }
}