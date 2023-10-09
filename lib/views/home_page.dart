import 'package:movie/views/content_page.dart';

import '../ui.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.appViewModel.getPopular();
  }

  @override
  Widget build(BuildContext context) {
    final appState = context.appState;
    final popularMovies = appState.popular;
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
            title: Text(
              "Book Movie",
              style: TextStyle(color: Colors.black),
            ),
            backgroundColor: Colors.white,
            centerTitle: true,
            iconTheme: IconThemeData(color: Colors.black),
            leading: GestureDetector(
              onTap: () {},
              child: Icon(Icons.menu),
            ),
            actions: [
              IconButton(
                onPressed: () => {},
                icon: Icon(Icons.mode_night_outlined),
              ),
            ],
            bottom: TabBar(tabs: [
              Tab(
                  child: Text(
                'Popular',
                style: TextStyle(color: Colors.black),
              )),
              Tab(
                child: Text(
                  'Top Rated',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Tab(
                child: Text(
                  'Upcoming',
                  style: TextStyle(color: Colors.black),
                ),
              )
            ])),
        body: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 8.0,
              crossAxisSpacing: 8.0,
              childAspectRatio: 1.5,
            ),
            itemCount: popularMovies?.length ?? 0,
            itemBuilder: (BuildContext, index) {
              final movie = popularMovies![index];
              return Container(
                height: 150,
                width: 100,
                padding: const EdgeInsets.all(0.05),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        height: 50,
                        width: 120,
                        child: GestureDetector(
                          onTap: ()  {
                             Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ContentPage(
                                  //ContentPage contents must be loaded before calling the contentPage
                                  movieDetails: movie,
                                ),
                              ),
                            );print('MovieTesting');
                          },
                          child: Image.network(
                            'https://image.tmdb.org/t/p/original${movie.posterPath}',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      child: Text(
                        movie.originalTitle!,
                        overflow: TextOverflow.ellipsis,
                      ),
                      width: 150,
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
