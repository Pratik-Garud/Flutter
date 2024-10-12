import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuizApp(),
    );
  }
}

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});
  @override
  State createState() => _QuizAppState();
}

class _QuizAppState extends State {
  int score = 0;
  int currentIndexQuestion = 0;
  int selectAnswerIndex = -1;
  bool questionpage = true;
  List<Map> allQuestions = [
    {
      "question": "Who is the founder of microsoft?",
      "options": ["Steve Jobs", "Bill Gates", "Elon Musk", "Lary Page"],
      "answers": 1,
    },
    {
      "question": "Who is the founder of google?",
      "options": ["Steve Jobs", "Bill Gates", "Elon Musk", "Lary Page"],
      "answers": 3,
    },
    {
      "question": "Who is the founder of spaceX?",
      "options": ["Steve Jobs", "Bill Gates", "Elon Musk", "Lary Page"],
      "answers": 2,
    },
    {
      "question": "Who is the founder of apple?",
      "options": ["Steve Jobs", "Bill Gates", "Elon Musk", "Lary Page"],
      "answers": 0,
    },
    {
      "question": "Who is the founder of Meta?",
      "options": ["Steve Jobs", "Mark Zuckerberg", "Elon Musk", "Lary Page"],
      "answers": 1,
    },
  ];

  WidgetStateProperty<Color?> checkAnswer(int answerIndex) {
    if (selectAnswerIndex != -1) {
      if (answerIndex == allQuestions[currentIndexQuestion]["answers"]) {
        return const WidgetStatePropertyAll(Colors.green);
      } else if (selectAnswerIndex == answerIndex) {
        return const WidgetStatePropertyAll(Colors.red);
      } else {
        return const WidgetStatePropertyAll(null);
      }
    } else {
      return const WidgetStatePropertyAll(null);
    }
  }

  @override
  Widget build(BuildContext context) {
    return isQuestionScreen();
  }

  Scaffold isQuestionScreen() {
    if (questionpage == true) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Quiz App",
            style: TextStyle(
              color: Colors.amber,
              fontSize: 40,
              fontWeight: FontWeight.w900,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 100,
                ),
                SizedBox(
                  child: Text(
                    "Question : ${currentIndexQuestion + 1} / ${allQuestions.length}",
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              child: Text(
                allQuestions[currentIndexQuestion]["question"],
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 70,
              width: 350,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkAnswer(0),
                ),
                onPressed: () {
                  if (selectAnswerIndex == -1) {
                    selectAnswerIndex = 0;
                    setState(() {});
                  }
                },
                child: Text(
                  allQuestions[currentIndexQuestion]["options"][0],
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              height: 70,
              width: 350,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkAnswer(1),
                ),
                onPressed: () {
                  if (selectAnswerIndex == -1) {
                    selectAnswerIndex = 1;
                    setState(() {});
                  }
                },
                child: Text(
                  allQuestions[currentIndexQuestion]["options"][1],
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              height: 70,
              width: 350,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkAnswer(2),
                ),
                onPressed: () {
                  if (selectAnswerIndex == -1) {
                    selectAnswerIndex = 2;
                    setState(() {});
                  }
                },
                child: Text(
                  allQuestions[currentIndexQuestion]["options"][2],
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              height: 70,
              width: 350,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkAnswer(3),
                ),
                onPressed: () {
                  if (selectAnswerIndex == -1) {
                    selectAnswerIndex = 3;
                    setState(() {});
                  }
                },
                child: Text(
                  allQuestions[currentIndexQuestion]["options"][3],
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
        floatingActionButton: Row(
          children: [
            const SizedBox(
              width: 70,
            ),
            FloatingActionButton(
              onPressed: () {
                if (currentIndexQuestion > 0) {
                  currentIndexQuestion--;
                  setState(() {});
                  selectAnswerIndex = -1;
                }
              },
              backgroundColor: Colors.blue,
              child: const Icon(Icons.arrow_back, color: Colors.yellow),
            ),
            const SizedBox(
              width: 200,
            ),
            FloatingActionButton(
              onPressed: () {
                if (selectAnswerIndex ==
                    allQuestions[currentIndexQuestion]["answers"]) {
                  score++;
                }
                if (currentIndexQuestion < allQuestions.length - 1) {
                  currentIndexQuestion++;
                } else {
                  questionpage = false;
                }

                selectAnswerIndex = -1;

                setState(() {});
              },
              backgroundColor: Colors.blue,
              child: const Icon(Icons.arrow_forward, color: Colors.yellow),
            ),
          ],
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Quiz Score",
            style: TextStyle(
              color: Colors.amber,
              fontSize: 40,
              fontWeight: FontWeight.w900,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                child: Image.network(
                    "https://img.freepik.com/free-vector/trophy-flat-style_78370-3222.jpg?size=338&ext=jpg&ga=GA1.1.1819120589.1727395200&semt=ais_hybrid"),
              ),
              const SizedBox(
                height: 40,
              ),
              const SizedBox(
                child: Text(
                  "Congratulations",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 40,
                child: Text(
                  "Score: $score / ${allQuestions.length}",
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            questionpage = true;
            currentIndexQuestion = 0;
            score = 0;
            setState(() {});
          },
          backgroundColor: Colors.blue,
          child: const Text("Reseat"),
        ),
      );
    }
  }
}
