import 'package:flutter_with_firebase_owp/movies/services/movies_firebase_repository.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_with_firebase_owp/movies/models/movie_model.dart';
import 'package:flutter_with_firebase_owp/themes/colors_theme.dart';

class DetailsPage extends StatelessWidget {
  final String? src;
  final Movie? movie;
  const DetailsPage({
    Key? key,
    this.movie,
    this.src,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBackground,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print(movie!.toJson());
          final Map<String, dynamic> data = movie!.toJson();
          print(data);
          MoviesFirebaseRepository().setMoviesFirebase(data: data);
        },
        child: const Icon(
          Icons.add,
          size: 40,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                height: 350,
                child: Stack(
                  children: [
                    Image.network(
                      src!,
                      fit: BoxFit.fill,
                      width: double.infinity,
                    ),
                    Container(
                      height: double.infinity,
                      width: double.infinity,
                      color: const Color.fromRGBO(0, 0, 0, 0.5),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        top: 75,
                        left: 10,
                        right: 10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                              size: 35,
                            ),
                            onPressed: () {
                              Get.back();
                            },
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 30.0,
                  left: 30,
                  right: 30,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      movie!.originalTitle!,
                      style: const TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      movie!.overview!,
                      style: const TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ],
                ),
              ),
            ]),
      ),
    );
  }
}
