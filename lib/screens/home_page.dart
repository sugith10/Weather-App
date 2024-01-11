import 'package:flutter/material.dart';
import 'package:weather/utils/custom_text.dart';
import 'package:weather/utils/image_path.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 0, 0, 1),
      extendBodyBehindAppBar: true,
      appBar: AppBar(),
      body: Container(
        padding:
            const EdgeInsets.only(top: 70, left: 20, right: 20, bottom: 20),
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage(background[0]))),
        child: Stack(
          children: [
            Container(
              height: 50,
              child: Row(
                children: [
                  Container(
                    child: Row(
                      children: [
                        const Icon(
                          Icons.location_pin,
                          color: Colors.red,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CommonText(
                                data: 'Dubai',
                                color: Colors.white,
                                fw: FontWeight.w700,
                                size: 18),
                            CommonText(
                                data: 'Good Morning',
                                color: Colors.white,
                                fw: FontWeight.w500,
                                size: 15)
                          ],
                        )
                      ],
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment(0, -0.7),
              child: Image.asset(imagePath[0]),
            ),
            Align(
              alignment: Alignment(0, 0),
              child: Container(
                height: 130,
                width: 130,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CommonText(
                      data: '21 C',
                      color: Colors.white,
                      fw: FontWeight.bold,
                      size: 32,
                    ),
                    CommonText(
                      data: 'Snow',
                      color: Colors.white,
                      fw: FontWeight.w600,
                      size: 26,
                    ),
                    CommonText(data: DateTime.now().toString(), color: Colors.white,)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
