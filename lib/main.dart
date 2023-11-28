import 'package:custom_chips/custom_chip.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> jobList = [
    'Accounting',
    'Agriculture',
    'Architecture',
    'Automotive',
    'Aviation',
    'Banking',
    'Business',
    'Charity',
    'Construction',
    'Creative',
    'Customer Service',
    'Design',
    'Digital Media',
    'Education',
    'Engineering',
    'Entertainment',
    'Fashion',
    'Finance',
    'Food & Beverage',
    'Healthcare',
    'Hospitality',
    'Human Resources',
    'Information Technology',
    'Insurance',
    'Law Enforcement',
    'Legal',
    'Logistics',
    'Manufacturing',
    'Marketing',
    'Mechanical',
    'Media',
    'Military',
    'Mining',
    'Nursing',
    'Oil & Gas',
    'Pharmaceutical',
    'Public Relations',
    'Real Estate',
    'Retail',
    'Sales',
    'Science',
    'Security',
    'Social Care',
    'Sports',
    'Telecommunications',
    'Tourism',
    'Transportation',
    'Travel',
    'Utilities',
    'Web Design',
  ];

  List<String> selectedList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Custom Chips"),
        backgroundColor: Colors.purple,
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Get Your Job",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: const Text(
                  "Help us recommend the best jobs for you by "
                  "telling us what type of job you're looking for.",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: Wrap(
                  spacing: 12,
                  runSpacing: 12,
                  alignment: WrapAlignment.start,
                  children: List.generate(
                    jobList.length,
                    (index) => CustomChip(
                      text: jobList[index],
                      isSelected: selectedList.contains(jobList[index]),
                      onTap: () {
                        setState(() {
                          if (selectedList.contains(jobList[index])) {
                            selectedList.remove(jobList[index]);
                          } else {
                            selectedList.add(jobList[index]);
                          }
                        });
                      },
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
