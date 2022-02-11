import 'package:flutter/material.dart';

impoert 'splash_content.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Find and land your next job",
      "image": "assets/image1.jpg"
    },
    {
      "text": "Build your network on the go",
      "image": "assets/image2.jpg"
    },
    {
      "text": "stay ahead with curated content for your career",
      "image": "assets/image3.jpg"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          color:Colors.white
        ),

        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SvgPicture.assets(
                "assets/logo.svg",
                width: 30,
                height: 30,
              ),
            ),
            
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  image: splashData[index]["image"],
                  text: splashData[index]['text'],
                ),
              ),
            ),

            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.lenght,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    SizedBox(height:20,),
                    SizedBox(
                      width: double.infinity,
                      height: getProportionateScreenHieght(55),
                      child: E
                    ),
                  ]
                ),
                ),
              ),
            ),
          ]
        ),
      )
    );
  }
}