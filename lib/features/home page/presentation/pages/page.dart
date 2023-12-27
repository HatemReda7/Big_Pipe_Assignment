import 'package:flutter/material.dart';
import 'package:movies_app/core/api/api_manager.dart';
import '../widgets/first_listview_item.dart';

class HomePage extends StatelessWidget {
  static const String routeName = "home";

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: SizedBox(
              height: 150,
              child: FutureBuilder(
                future: Future.delayed(const Duration(seconds: 2)),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(color: Colors.blue),
                    );
                  } else {
                    return FutureBuilder(
                      future: ApiFunction.getMovies(index: 1),
                      builder: (context, snapshot) {
                        var results = snapshot.data?.results ?? [];
                        return ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return NewReleasesListViewItem(movie: results[index]);
                          },
                          itemCount: results.length,
                        );
                      },
                    );
                  }
                },
              ),
            ),
          ),
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: SizedBox(
              height: 150,
              child: FutureBuilder(
                future: Future.delayed(const Duration(seconds: 5)),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(color: Colors.blue),
                    );
                  } else {
                    return FutureBuilder(
                      future: ApiFunction.getMovies(index: 2),
                      builder: (context, snapshot) {
                        var results = snapshot.data?.results ?? [];
                        return ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return NewReleasesListViewItem(movie: results[index]);
                          },
                          itemCount: results.length,
                        );
                      },
                    );
                  }
                },
              ),
            ),
          ),
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(.0),
            child: SizedBox(
              height: 150,
              child: FutureBuilder(
                future: Future.delayed(const Duration(seconds: 8)),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(color: Colors.blue),
                    );
                  } else {
                    return FutureBuilder(
                      future: ApiFunction.getMovies(index: 3),
                      builder: (context, snapshot) {
                        var results = snapshot.data?.results ?? [];
                        return ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return NewReleasesListViewItem(movie: results[index]);
                          },
                          itemCount: results.length,
                        );
                      },
                    );
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
