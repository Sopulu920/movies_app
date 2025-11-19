import 'package:flutter/material.dart';
import 'package:movies_app/components/styled_text.dart';

enum Time {
  morning('lib/assets/images/morning.jpg'),
  afternoon('lib/assets/images/afternoon.jpg'),
  evening('lib/assets/images/evening.jpg'),
  empty('');

  final String path;
  const Time(this.path);
}

enum Greet {
  morning('Good Morning'),
  afternoon('Good Afternoon'),
  evening('Good Evening'),
  empty('');

  final String value;
  const Greet(this.value);
}

Greet greeting = Greet.empty;
Time greetingTime = Time.empty;

void greetings() {
  final DateTime time = DateTime.now();
  // String greetings;

  if (time.hour <= 11) {
    greeting = Greet.morning;
    greetingTime = Time.morning;
  } else if (12 <= time.hour && time.hour <= 17) {
    greeting = Greet.afternoon;
    greetingTime = Time.afternoon;
    // print('animal');
  } else {
    greeting = Greet.evening;
    greetingTime = Time.evening;
  }
}

class Greeting extends StatefulWidget {
  const Greeting({super.key});

  @override
  State<Greeting> createState() => _GreetingState();
}

class _GreetingState extends State<Greeting> {
  @override
  Widget build(BuildContext context) {
    greetings();
    return Container(
      // width: 200,
      height: 100,

      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(25),
        image: DecorationImage(
          image: AssetImage(greetingTime.path),
          fit: BoxFit.cover,
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0x006E6E6E),
            blurRadius: 4,
            offset: Offset(2, 2),
            spreadRadius: 2,
          ),
        ],
      ),
      child: Center(child: StyledText(greeting.value, fontSize: 45)),
    );
  }
}
