import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Percent Indicator example"),
      ),
      body: Center(
        child: Container(
            color: Colors.grey[100],
            margin: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircularPercentIndicator(
                  radius: 120,
                  lineWidth: 30,
                  backgroundColor: Colors.grey,
                  progressColor: Colors.red,
                  percent: 0.6,
                  center: Text(
                    "60%",
                    style: TextStyle(fontSize: 20),
                  ),
                  circularStrokeCap: CircularStrokeCap.round,
                  animation: true,
                  animationDuration: 2000,
                  onAnimationEnd: () {
                    print("Animation finished");
                  },
                  header: Text(
                    "Task Progress",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                LinearPercentIndicator(
                  width: 180,
                  lineHeight: 30,
                  backgroundColor: Colors.grey,
                  progressColor: Colors.blue,
                  percent: 0.8,
                  center: Text(
                    "80%",
                    style: TextStyle(fontSize: 20),
                  ),
                  alignment: MainAxisAlignment.center,
                  animation: true,
                  animationDuration: 1000,
                  onAnimationEnd: () {
                    print("Linear Animation finished");
                  },
                  barRadius: Radius.circular(20),
                  leading: Text(
                    "Task Progress",
                    style: TextStyle(fontSize: 20),
                  ),
                )
              ],
            )),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
  }
}
