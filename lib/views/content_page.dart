import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie/model/movie_details.dart';
import 'package:movie/ui.dart';

import '../model/movie.dart';

class ContentPage extends StatelessWidget {
  ContentPage({
    super.key,
    required this.movieDetails,
  });

  final Movie movieDetails;

  @override
  Widget build(BuildContext context) {
    //final appState = context.appState;
    return AppScaffold(
      body: Column(
        children: [
          Stack(children: <Widget>[
            Container(
              height: 300,
              width: 500,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(
                  movieDetails.imageUrl,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 20,
              child: Container(
                  height: 50,
                  child: Text(
                    movieDetails.title!,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  )),
            ),
          ]),
          Column(
            children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Synopsis',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  movieDetails.overview!,
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'About',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 40),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Text('Original Title:${movieDetails.originalTitle}'),
                            Text('Status:${movieDetails.status}'),
                            Text('Runtime:${movieDetails.runtime}'),
                            //Text('Premiere:${movieDetails.p}'),
                            Text('Budget:${movieDetails.budget}'),
                            Text('Revenue:${movieDetails.revenue}'),
                            Text('Imdb:${movieDetails.imdb}'),
                            Text('Vote Rating:${movieDetails.voteRating}'),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
