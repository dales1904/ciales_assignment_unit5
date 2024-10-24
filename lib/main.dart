import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const CalculatorScreen(),
    );
  }
}

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  // manage the sum section

  //Addition
  TextEditingController additionFirstController = TextEditingController();
  TextEditingController additionSecondController = TextEditingController();
  int sum = 0;

  TextEditingController subtractFirstController = TextEditingController();
  TextEditingController subtractSecondController = TextEditingController();
  int difference = 0;

  TextEditingController multiplyFirstController = TextEditingController();
  TextEditingController multiplySecondController = TextEditingController();
  int product = 0;

  // either use a TextEditingController for each input field to get the value
  TextEditingController divisionFirstController = TextEditingController();
  TextEditingController divisionSecondController = TextEditingController();
  double quotient = 0;

  // or store each value in the state
  int firstAddNum = 0;

  void calculateSum() {
    setState(() {
      int firstNum = int.parse(additionFirstController.text);
      int secondNum = int.parse(additionSecondController.text);
      sum = firstNum + secondNum;
    });
  }

  void calculateDifference() {
    setState(() {
      int firstNum = int.parse(subtractFirstController.text);
      int secondNum = int.parse(subtractSecondController.text);
      difference = firstNum - secondNum;
    });
  }

  void calculateProduct() {
    setState(() {
      int firstNum = int.parse(multiplyFirstController.text);
      int secondNum = int.parse(multiplySecondController.text);
      product = firstNum * secondNum;
    });
  }

  void calculateQuotient() {
    setState(() {
      double firstNum = double.parse(divisionFirstController.text);
      double secondNum = double.parse(divisionSecondController.text);
      quotient = firstNum / secondNum;
    });
  }

  void clearSumRow() {
    setState(() {
      additionFirstController.clear();
      additionSecondController.clear();

      sum = 0;
    });
  }

  void clearDiffRow() {
    setState(() {
      subtractFirstController.clear();
      subtractSecondController.clear();

      difference = 0;
    });
  }

  void clearProdRow() {
    setState(() {
      multiplyFirstController.clear();
      multiplySecondController.clear();

      product = 0;
    });
  }

  void clearDivRow() {
    setState(() {
      divisionFirstController.clear();
      divisionSecondController.clear();

      quotient = 0;
    });
  }


  void clearRows() {
    setState(() {
      additionFirstController.clear();
      additionSecondController.clear();
      subtractFirstController.clear();
      subtractSecondController.clear();
      multiplyFirstController.clear();
      multiplySecondController.clear();
      divisionFirstController.clear();
      divisionSecondController.clear();

      sum = 0;
      difference = 0;
      product = 0;
      quotient = 0;
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Unit 5 Calculator"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // Add Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: TextField(
                  controller: additionFirstController,
                  decoration: InputDecoration(labelText: "First Number"),
                  keyboardType: TextInputType.number,
                ),
              ),
              const Text(" + "),
              Expanded(
                child: TextField(
                  controller: additionSecondController,
                  decoration: InputDecoration(labelText: "Second Number"),
                  keyboardType: TextInputType.number,
                ),
              ),
              Text(' = $sum'),
              // 3.a Add an IconButton here
              IconButton(
                icon: const Icon(Icons.calculate_outlined),
                onPressed: () {
                  calculateSum();
                },
              ),
              // b.b Add an button here
              ElevatedButton(
              onPressed: clearSumRow, 
              child: const Text("clear")
              ),
            ],
          ),

          // 3.c - Add the other operations
          // Minus Row

          // Multiplication Row

          // Division Row

          //Subtraction
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: TextField(
                  controller: subtractFirstController,
                  decoration: InputDecoration(labelText: "First Number"),
                  keyboardType: TextInputType.number,
                ),
              ),
              const Text(" - "),
              Expanded(
                child: TextField(
                  controller: subtractSecondController,
                  decoration: InputDecoration(labelText: "Second Number"),
                  keyboardType: TextInputType.number,
                ),
              ),
              Text(' = $difference'),
              // 3.a Add an IconButton here
              IconButton(
                icon: const Icon(Icons.calculate_outlined),
                onPressed: () {
                  calculateDifference();
                },
              ),
              // b.b Add an button here
              ElevatedButton(
              onPressed: clearDiffRow, 
              child: const Text("clear")
              ),
            ],
          ),

          //Multiplication
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: TextField(
                  controller: multiplyFirstController,
                  decoration: InputDecoration(labelText: "First Number"),
                  keyboardType: TextInputType.number,
                ),
              ),
              const Text(" * "),
              Expanded(
                child: TextField(
                  controller: multiplySecondController,
                  decoration: InputDecoration(labelText: "Second Number"),
                  keyboardType: TextInputType.number,
                ),
              ),
              Text(' = $product'),
              // 3.a Add an IconButton here
              IconButton(
                icon: const Icon(Icons.calculate_outlined),
                onPressed: () {
                  calculateProduct();
                },
              ),
              // b.b Add an button here
              ElevatedButton(
              onPressed: clearProdRow, 
              child: const Text("clear")
              ),
            ],
          ),

          //Division
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: TextField(
                  controller: divisionFirstController,
                  decoration: InputDecoration(labelText: "First Number"),
                  keyboardType: TextInputType.number,
                ),
              ),
              const Text(" / "),
              Expanded(
                child: TextField(
                  controller: divisionSecondController,
                  decoration: InputDecoration(labelText: "Second Number"),
                  keyboardType: TextInputType.number,
                ),
              ),
              Text(' = $quotient'),
              // 3.a Add an IconButton here 
              IconButton(
                icon: const Icon(Icons.calculate_outlined),
                onPressed: () {
                  calculateQuotient(); 
                },
              ),
              // b.b Add an button here
              ElevatedButton(
              onPressed: clearDivRow, 
              child: const Text("clear")
              ),
            ],
          ),


          ElevatedButton(
            onPressed: clearRows, 
            child: const Text("Clear All")
          ),

          
        ],
       ),
      ),
    );
  }
}
