import 'package:flutter/material.dart';
import 'package:toonflix/services/api_service.dart';

import '../models/WebtoonModel.dart';

class HomeScreenToon extends StatefulWidget {
  const HomeScreenToon({super.key});

  @override
  State<HomeScreenToon> createState() => _HomeScreenToonState();
}

class _HomeScreenToonState extends State<HomeScreenToon> {
  List<WebtoonModel> webtoons = [];
  bool isLoading = true;

  void waitForWebToons() async {
    webtoons = await ApiService.getTodaysToons();
    isLoading = false;
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    waitForWebToons();
  }

  @override
  Widget build(BuildContext context) {
    print(webtoons);
    print(isLoading);
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        elevation: 3, //음영
        backgroundColor: Colors.white,
        foregroundColor: Colors.green,
        title: const Text(
          "Today's 툰",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
