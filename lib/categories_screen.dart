import 'package:flutter/material.dart';

class FourImages{
  final String image;
  final String title;
  final String sub;
  final String num;
  final String subNum;
  final String count;



  FourImages({
    required this.image,
    required this.title,
    required this.sub,
    required this.num,
    required this.subNum,
    required this.count,


  }
      );
}

class CategoriesScreen extends StatelessWidget {
List<FourImages>list4=[
  FourImages(
    count: '1',
    image: 'assets/images/music.png',
    title: 'Music',
    sub: 'view info',
    num: '1225.04',
    subNum: '46.0',


  ),
  FourImages(
    count: '2',
    image: 'assets/images/b7r.png',
    title: 'See',
    sub: 'view info',
    num: '24521.04',
    subNum: '252.0',


  ),
  FourImages(
    count: '3',
    image: 'assets/images/nokta.png',
    title: 'Dote',
    sub: 'view info',
    num: '6421.04',
    subNum: '125.0',


  ),
  FourImages(
    count: '4',
    image: 'assets/images/orange.png',
    title: 'Orange',
    sub: 'view info',
    num: '5556.04',
    subNum: '85.0',


  ),
  FourImages(
    count: '5',
    image: 'assets/images/wave.png',
    title: 'wave',
    sub: 'view info',
    num: '5642.04',
    subNum: '75.0',


  ),
  FourImages(
    count: '6',
    image: 'assets/images/wrda.png',
    title: 'Flower',
    sub: 'view info',
    num: '4556.04',
    subNum: '11.0',


  ),
  FourImages(
    count: '7',
    image: 'assets/images/st.png',
    title: 'girl',
    sub: 'view info',
    num: '15455.04',
    subNum: '7566.0',


  ),
  FourImages(
    count: '8',
    image: 'assets/images/art.png',
    title: 'Cover',
    sub: 'view info',
    num: '1556.04',
    subNum: '44.0',


  ),
  FourImages(
    count: '9',
    image: 'assets/images/alwanat.png',
    title: 'colors',
    sub: 'view info',
    num: '6231.04',
    subNum: '46.0',


  ),
  FourImages(
    count: '10',
    image: 'assets/images/music.png',
    title: 'Music',
    sub: 'view info',
    num: '1225.04',
    subNum: '46.0',


  ),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff211134),
      body: ListView(
        children: [
          Column(
            children:  [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'State',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0
                      ),
                    ),
                  ),
                  SizedBox(
                  height: 44,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 170,
                        height: 44,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            border: Border.all(width: 1.0,color: Color(0xff3C1E5D))
                        ),
                        child: OutlinedButton(onPressed: (){},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'All categories',
                                style: TextStyle(
                                    color: Colors.white
                                ),
                              ),
                              Icon(
                                    Icons.arrow_drop_down,
                                color: Colors.white,
                                  ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30.0,
                      ),
                      Container(
                        width: 164,
                        height: 44,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            border: Border.all(width: 1.0,color: Color(0xff3C1E5D))
                        ),
                        child: OutlinedButton(onPressed: (){},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.insert_link,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                'All Chains',
                                style: TextStyle(
                                    color: Colors.white
                                ),
                              ),
                            ],
                          )
                        ),
                      ),
                    ],
                  ),SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 800,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(width: 2.0,color: Color(0xff492575)
                        ),
                        color:Color(0xff31194E) ,
                      ),
                      child: ListView.separated(
                          itemBuilder: (context,index)=>buildListCat(list4[index]),

                          separatorBuilder: (context,index)=>SizedBox(
                            height: 20.0,
                          ),
                          itemCount: list4.length
                      ),

                    ),
                  ),




                ],
              ),
            ],
          )
        ],
      ),
    );
  }
  Widget buildListCat(FourImages model)=>Padding(
    padding: const EdgeInsets.only(
        top: 10.0
    ),
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            '${model.count}',
            style: TextStyle(
                color: Colors.white,
                fontSize: 15.0
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 50,
            width: 50,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image(
                image: AssetImage(
                    '${model.image}'
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Column(
          children: [
            Text(
              '${model.title}',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              '${model.sub}',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12.0,
              ),
            ),
          ],
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsetsDirectional.only(
              end: 10.0
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '${model.num}',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                '${model.subNum}',
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
