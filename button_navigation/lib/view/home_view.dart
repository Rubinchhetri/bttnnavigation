import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery()
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 200,
              width: width,
              // color: Colors.pinkAccent,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://media.istockphoto.com/id/637696304/photo/patan.jpg?s=612x612&w=0&k=20&c=-53aSTGBGoOOqX5aoC3Hs1jhZ527v3Id_xOawHHVPpg='),
                    fit: BoxFit.fill),
              ),
            ),
            Positioned(
              top: 1,
              right: 1,
              child: Container(
                height: 100,
                width: 100,
                color: const Color.fromARGB(255, 228, 138, 130),
              ),
            ),
            // Positioned(
            //   bottom: -20,
            //   right: 150,
            //   child: Container(
            //     height: 100,
            //     width: 100,
            //     color: Colors.pink,
            //   ),
            // ),
            const Positioned(
              bottom: -20,
              left: 0,
              child: CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage('assets/images/ronaldo.webp')),
            )
          ],
        ));
  }
}
