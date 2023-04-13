
import 'package:flutter/material.dart';

import 'categories_screen.dart';

class FirstImages{
  final String image;
  final String title;


  FirstImages({
    required this.image,
    required this.title,
    }
    );
}

class SecondImages{
  final String image;
  final String title;
  final String like;


  SecondImages({
    required this.image,
    required this.title,
    required this.like,
  }
  );
}

class ThirdImages{
  final String image;
  final String title;
  final String like;


  ThirdImages({
    required this.image,
    required this.title,
    required this.like,
  }
      );
}

class HomeScreen extends StatelessWidget {
List<FirstImages>list1=[
  FirstImages(
    image: 'assets/images/music.png',
    title: 'Music',
  ),
  FirstImages(
    image: 'assets/images/art.png',
    title: 'Art',
  ),
  FirstImages(
    image: 'assets/images/Image.png',
    title: 'Virtual World',
  ),
];

List<SecondImages>list2=[
  SecondImages(
    image: 'assets/images/wrda.png',
    title: '3D Art',
    like: '200'
    
    
  ),
  SecondImages(
    image: 'assets/images/alwanat.png',
    title: 'Abstract Art',
    like: '130',
  ),
  SecondImages(
    image: 'assets/images/st.png',
    title: 'portrait Art',
    like: '340'
  ),
];

List<ThirdImages>list3=[
  ThirdImages(
      image: 'assets/images/wave.png',
      title: 'Wave Art',
      like: '500'


  ),
  ThirdImages(
    image: 'assets/images/orange.png',
    title: 'mokka',
    like: '650',
  ),
  ThirdImages(
      image: 'assets/images/b7r.png',
      title: 'portrait Art',
      like: '540'
  ),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff211134),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'NTF Marketplace',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28.0,
                  fontWeight:FontWeight.bold
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200.0,
              child: Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),

                  itemBuilder: (context,index)=> buildListOneItem(list1[index],context),

                  itemCount:list1.length ,

                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(
                start: 20.0,
                top: 10.0),
            child: Text(
                'Trending collections',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold
              ),
            ),
          ),

          Container(
            height: 240.0,
            child: Expanded(
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index)=>buildListTwoItem(list2[index]),

                itemCount:list2.length ,),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(
                start: 20.0,
                top: 10.0),
            child: Text(
              'Top seller',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          Container(
            height: 240.0,
            child: Expanded(
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index)=>buildListThirdItem(list3[index]),

                itemCount:list3.length ,),
            ),
          ),
        ],
      ),
    );
  }
  
  
  
  
  
Widget buildListOneItem(FirstImages model,context)=>
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: ()
        {
          Navigator.push(
              context,
              MaterialPageRoute(
              builder: (context) =>CategoriesScreen()
              )
          );
        },
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
  children: [
   ClipRRect(borderRadius: BorderRadius.circular(15.0),
         child: Image(image: AssetImage(
             '${model.image}',
         ),
         ),
   ),
    Positioned(
        bottom: 10.0,
        child: Text(
            '${model.title}',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22.0,
            fontWeight: FontWeight.bold
          ),
        ),
    ),
  ],
),
      ),
    );


  Widget buildListTwoItem(SecondImages second)=>Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 216,
      width: 175,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          border: Border.all(width: 1,color: Color(0xff3C1E5D),)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image(image: AssetImage('${second.image}')),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                    '${second.title}',
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
                Spacer(),
                Row(
                  children: [
                    Icon(
                      Icons.favorite,
                      color: Colors.red, size: 16.0,
                    ),
                    Text(
                      '${second.like}',
                      style: TextStyle(
                          color: Colors.grey
                      ),),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );

Widget buildListThirdItem(ThirdImages Third)=>Padding(
  padding: const EdgeInsets.all(8.0),
  child: Container(
    height: 216,
    width: 175,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        border: Border.all(width: 1,color: Color(0xff3C1E5D),)
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image(image: AssetImage('${Third.image}')),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(
                '${Third.title}',
                style: TextStyle(
                    color: Colors.white
                ),
              ),
              Spacer(),
              Row(
                children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.red, size: 16.0,
                  ),
                  Text(
                    '${Third.like}',
                    style: TextStyle(
                        color: Colors.grey
                    ),),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  ),
);
}
