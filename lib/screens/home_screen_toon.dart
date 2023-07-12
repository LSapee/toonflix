import 'package:flutter/material.dart';
import 'package:toonflix/services/api_service.dart';

import '../models/WebtoonModel.dart';

class HomeScreenToon extends StatelessWidget {
  HomeScreenToon({super.key});

  Future<List<WebtoonModel>> webtoons = ApiService.getTodaysToons();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
      body: FutureBuilder(
        future: webtoons,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              // 가로 스크롤 스크롤 될때마다 빌드되서 메모리 사용을 적게함
              scrollDirection: Axis.horizontal,
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                print(index);
                var webtoon = snapshot.data![index];
                return Text(webtoon.title);
              },
            );
          }
          return Text("Loading...");
        },
      ),
    );
  }
}
