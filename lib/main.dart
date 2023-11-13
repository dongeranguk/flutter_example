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
  TestRadioValue? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: selectedValue == TestRadioValue.test1
              ? Text(TestRadioValue.test1.name)
              : null,
          leading: Radio<TestRadioValue>(
              value: TestRadioValue.test1,
              groupValue: selectedValue,
              onChanged: (newValue) =>
                  setState(() => selectedValue = newValue!)),
          onTap: () => setState(() {
            if (selectedValue != TestRadioValue.test1) {
              selectedValue = TestRadioValue.test1;
            }
          }),
        ),
        ListTile(
          title: selectedValue == TestRadioValue.test2
              ? Text(TestRadioValue.test2.name)
              : null,
          leading: Radio<TestRadioValue>(
              value: TestRadioValue.test2,
              groupValue: selectedValue,
              onChanged: (newValue) =>
                  setState(() => selectedValue = newValue!)),
          onTap: () => setState(() {
            if (selectedValue != TestRadioValue.test2) {
              selectedValue = TestRadioValue.test2;
            }
          }),
        ),
        ListTile(
          title: selectedValue == TestRadioValue.test3
              ? Text(TestRadioValue.test3.name)
              : null,
          leading: Radio<TestRadioValue>(
              value: TestRadioValue.test3,
              groupValue: selectedValue,
              onChanged: (newValue) =>
                  setState(() => selectedValue = newValue!)),
          onTap: () => setState(() {
            if (selectedValue != TestRadioValue.test3) {
              selectedValue = TestRadioValue.test3;
            }
          }),
        ),
      ],
    );
  }
}

enum TestRadioValue { test1, test2, test3 }

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


