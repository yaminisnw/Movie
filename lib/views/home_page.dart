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
              crossAxisCount: 2,
              mainAxisSpacing: 8.0,
              crossAxisSpacing: 8.0,
              childAspectRatio: 1.5,
            ),itemCount: popularMovies?.length??0,
            itemBuilder: (BuildContext, index) {
              final movie = popularMovies![index];
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all( 5.0),
                    child: Container(
                        height: 90,
                        width: 150,
                        child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ContentPage(),),);
                            },
                            child:Image.network('https://image.tmdb.org/t/p/original${movie.posterPath}',fit: BoxFit.fill,))),
                  ),
                  Column(
                    children: [
                      Text(movie.title),
                    ],
                  ),
                ],
              );
            }),
      ),
    );
  }
}

/*for(int i =0;i<10;i++)
final movie = popularMovies[i];
[Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(height: 50,width: 50,child:GestureDetector(onTap:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ContentPage()
                    ));
                  },child:Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSg-3382ZgdUhzsOz0VYE8KVNtX_HTwTxRSps08Nli1&s'))),
                ),
                Text('The Super Mario Bros'),
              ],
            ),
 */
