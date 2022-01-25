import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
final List<String> data = ["FRUIT AND BERRIES ", "VEGETABLES", "BREAD","MILK"];

// final Map<String,Color> itemColors = {
//   "FRUIT AND BERRIES" : Color(0xfffffbe0),
//   "VEGETABLES": Color(0xffe5ffe0),
//   "BREAD" : Color(0xffe0fff2),
//   "MILK" : Color(0xffe0f2ff),
// };

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEDEFF4),


//bottom navigation
      bottomNavigationBar: BottomNavigationBar(

          items: [
        BottomNavigationBarItem(
          icon:  Icon(Icons.home,color: Color(0xffA3DD45), ),
          label: 'Home',
          backgroundColor: Colors.white,
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.person,color: Colors.grey),
          label: 'Profile',
           // backgroundColor:Colors.blue,
            ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart,color: Colors.grey),
          label: 'cart',
           // backgroundColor:Colors.blue,
            ),


            BottomNavigationBarItem(
              icon: Icon(Icons.notifications ,color: Colors.grey),
              label: 'bell',
              // backgroundColor:Colors.blue,
            ),

            BottomNavigationBarItem(
              icon: Icon( Icons.more_horiz, color: Colors.grey),
              label: 'bell',
              // backgroundColor:Colors.blue,
            ),

      ]),


      // green container
      body: ListView(


        children: [

                  Row(
                    children: [

                      Padding(
                          padding: const EdgeInsets.fromLTRB(20, 50, 0, 0),
                          child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color(0xffA3DD45),
                        ),

                        height: 50,
                        width: 50,

                           child: Column(
                             children: [
                          IconButton(
                           icon: new Icon(
                             Icons.menu_rounded,
                             color: Colors.white,
                           ), onPressed: () {
                            onPressed: () {Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>  HomePage()));
                            };
                          },
                          ),
                             ],
                        ),
                      )
                      ),

                      //search bar
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0,  45, 0, 0),
                          child: buildSearchInput(),
                        ),
                      ),
                    ],

                  ),

          //horizontal scroll bar

          Padding(


            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                  //width:60,
                  child: ListView.separated(
                    itemCount: data.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) =>
                        itemW(color: Color(0xffCAEC93), text: data[index]),
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        width: 5,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),

         //first container
          Stack(

            children: [

              Padding(
                  padding: const EdgeInsets.fromLTRB(10, 55, 10, 0),
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Color(0xffFFFCEE),
                      ),
                      height: 180,
                      width: 380,


                      child: Column(
                        children: const [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 80, 230, 10),
                            child: Text(
                              "FRUIT AND BERRIES",
                              style: TextStyle(
                                  fontFamily:'Roboto',
                                  fontSize: 10,
                                  color: Colors.lightGreen,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 250 , 10),
                            child: Text(
                              "Banana",
                              style: TextStyle(
                                  fontFamily:'Roboto',
                                  fontSize: 22,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 260, 10),
                            child: Text(
                              "Rs.0.90/kg",
                              style: TextStyle(
                                  fontFamily:'Roboto',
                                  fontSize: 12,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      )
                  )
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(120, 0, 60, 0),
                child: Image(
                  image: AssetImage("assets/images/banana.png"),

                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(350, 70, 0, 0),
                child:
                Icon(
                  Icons.favorite,
                  size: 20,
                  color: Colors.grey,

                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(320, 160, 0, 0),
                child: SizedBox(
                  height: 80,
                  child: ElevatedButton(
                      onPressed: (){
                      //counter

                        // int _count = 0;
                        // void _incrementCount(){
                        //   setState(() {
                        //     _count++;
                        //   });
                        // }
                        //
                        // void _decrementCount(){
                        //   setState(() {
                        //     _count--;
                        //   });
                        // }
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //   children: [
                        //     FloatingActionButton (
                        //       child:Icon(Icons.add),
                        //       onPressed:_incrementCount,
                        //     ),
                        //     Text ("${_count}"),
                        //     FloatingActionButton (
                        //       child:Icon(Icons.remove),
                        //       onPressed:_decrementCount,
                        //     )
                        //   ],
                        // );

                      },
                      style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          primary: Color(0xffA3DD45),
                          minimumSize: const Size(60,60)
                      ),
                      child: const Icon(Icons.add_circle_outline))
                ),
              ),



            ],
          ),

         // second container
          Stack(
            children: [
              Padding(
                  padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Color(0xffFFFCEE),
                      ),
                      height: 180,
                      width: 380,

                      child: Column(
                        children: const [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 75, 225, 30),
                            child: Text(
                              "FRUIT AND BERRIES",
                              style: TextStyle(
                                  fontFamily:'Roboto',
                                  fontSize: 10,
                                  color: Colors.lightGreen,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 225, 10),
                            child: Text(
                              "Tangerine",
                              style: TextStyle(
                                  fontFamily:'Roboto',
                                  fontSize: 22,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 265, 10),
                            child: Text(
                              "Rs.0.90/kg",
                              style: TextStyle(
                                  fontFamily:'Roboto',
                                  fontSize: 10,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      )

                  )),
              const Padding(
                padding: EdgeInsets.fromLTRB(120, 0, 60, 0),
                child: Image(
                  image: AssetImage("assets/images/orange.png"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(350, 50, 5, 0),
                child:
                Icon(
                  Icons.favorite,
                  size: 20,
                  color: Colors.red,

                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(320, 130, 0, 0),
                child: SizedBox(
                    height: 80,
                    child: ElevatedButton(
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                            shape: const CircleBorder(),
                            primary: Color(0xffA3DD45),
                            minimumSize: const Size(60,60)
                        ),
                        child: const Icon(Icons.add_circle_outline))
                ),
              ),
            ],
          ),


          // third container
          Stack(
            children: [
              Padding(
                  padding: const EdgeInsets.fromLTRB(10, 30, 10, 10),
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Color(0xffE2F3DF),
                      ),
                      height: 180,
                      width: 380,
                      child: Column(
                        children: const [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 80, 225, 20),
                            child: Text(
                              "FRUIT AND BERRIES",
                              style: TextStyle(
                                  fontFamily:'Roboto',
                                  fontSize: 10,
                                  color: Colors.lightGreen,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 275, 10),
                            child: Text(
                              "Kiwi",
                              style: TextStyle(
                                  fontFamily:'Roboto',
                                  fontSize: 22,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 265, 10),
                            child: Text(
                              "Rs.0.90/kg",
                              style: TextStyle(
                                  fontFamily:'Roboto',
                                  fontSize: 10,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),

                        ],
                      )
                  )),
              const Padding(
                padding: EdgeInsets.fromLTRB(120, 0, 40, 0),
                child: Image(
                  image: AssetImage("assets/images/kiwi.png"),
                 // height:200,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(350, 50, 5, 0),
                child:
                Icon(
                  Icons.favorite,
                  size: 20,
                  color: Colors.grey,

                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(325, 130, 0, 0),
                child: SizedBox(
                    height: 80,
                    child: ElevatedButton(
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                            shape: const CircleBorder(),
                            primary: Color(0xffA3DD45),
                            minimumSize: const Size(60,60)
                        ),
                        child: const Icon(Icons.add_circle_outline))
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }


//search box
  Widget buildSearchInput() => Padding(
    padding: const EdgeInsets.fromLTRB(100, 0, 20, 0),
    child: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(14)),
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  size: 30,
                  color: Colors.grey.shade400,
                ),
                // Padding(
                //   padding: const EdgeInsets.fromLTRB(50, 0, 5, 0),
                //   child:
                //   Icon(
                //     Icons.search,
                //     size: 30,
                //     color: Colors.grey.shade400,
                //
                //   ),
                // ),
                Flexible(
                  child: TextField(
                    decoration: InputDecoration(border: InputBorder.none),

                  ),
                ),
              ],
            ),
          ),
        ),
  );

//horizontal scroll bar

  Widget itemW({
    required String text,
    required Color color,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      alignment: Alignment.center,
      decoration: ShapeDecoration(
        shape: const StadiumBorder(),
        color: color,
      ),
      child: Text(text),
    );
  }





}
