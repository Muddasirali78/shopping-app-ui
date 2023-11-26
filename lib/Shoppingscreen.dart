import 'package:flutter/material.dart';
import 'package:hello/addtocartscreen.dart';

class ShoppingScreen extends StatefulWidget {
  const ShoppingScreen({super.key});

  @override
  State<ShoppingScreen> createState() => _ShoppingScreenState();
}

class _ShoppingScreenState extends State<ShoppingScreen> {
  String selectedValue = 'Green Way 3000,Sylhet';
  String selectedValue2 = '1 Hour';
  TextEditingController search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Color rgbaColor = Color.fromARGB(255, 42, 75, 160);
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 293,
            color: rgbaColor,
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20, top: 50),
                      child: Row(
                        children: [
                          Text(
                            "Hey, Hilal",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                            ),
                          ),
                          SizedBox(
                            width: 180,
                          ),
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Cart()));
                            },
                            icon: Icon(
                              Icons.shopping_bag_outlined,
                              size: 30,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 335,
                  height: 56,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(103, 28, 27, 94),
                      borderRadius: BorderRadius.circular(28)),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 25,
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10, top: 10),
                        child: Container(
                          width: 260,
                          height: 25,
                          child: TextField(
                            controller: search,
                            decoration: InputDecoration(
                              hintText: "Search Products or store",
                              hintStyle: TextStyle(
                                color: Color.fromARGB(155, 187, 187, 199),
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 40, left: 20),
                      child: Row(
                        children: [
                          Text(
                            "DELIVERY TO",
                            style: TextStyle(color: Colors.white38),
                          ),
                          SizedBox(
                            width: 190,
                          ),
                          Text(
                            "Within",
                            style: TextStyle(color: Colors.white38),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 5, left: 20),
                      child: Row(
                        children: [
                          DropdownButton<String>(
                            value: selectedValue,
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedValue = newValue!;
                              });
                            },
                            items: <String>[
                              'Green Way 3000,Sylhet',
                              'Option 2',
                              'Option 3',
                              'Option 4',
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: TextStyle(
                                    color: Colors
                                        .white, // Set the text color to white
                                  ),
                                ),
                              );
                            }).toList(),
                            underline: Container(),
                          ),
                          SizedBox(
                            width: 80,
                          ),
                          DropdownButton<String>(
                            value: selectedValue2,
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedValue2 = newValue!;
                              });
                            },
                            items: <String>[
                              '1 Hour',
                              'Option 2',
                              'Option 3',
                              'Option 4',
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15
                                      // Set the text color to white
                                      ),
                                ),
                              );
                            }).toList(),
                            underline: Container(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 430,
            color: const Color.fromARGB(137, 207, 198, 198),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 40, left: 20),
                    child: Container(
                      width: double.infinity,
                      height: 170,
                      // color: Colors.orange,
                      child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Container(
                                width: 250,
                                height: 170,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                width: 250,
                                height: 170,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                width: 250,
                                height: 170,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                            ],
                          )),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, top: 15, right: 180),
                    child: Text(
                      "Recomended",
                      style: TextStyle(fontSize: 30),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 82,
            color: const Color.fromARGB(255, 255, 255, 255),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.home),
                ),
                SizedBox(
                  width: 60,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.category),
                ),
                SizedBox(
                  width: 60,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.favorite_outline_rounded),
                ),
                SizedBox(
                  width: 60,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.more_vert_sharp),
                ),
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}
