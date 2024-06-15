import 'package:flutter/material.dart';

class MoreServicesScreen extends StatefulWidget {
  const MoreServicesScreen({super.key});

  @override
  State<MoreServicesScreen> createState() => _MoreServicesScreenState();
}

class _MoreServicesScreenState extends State<MoreServicesScreen> {
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Row(
            children: [
              InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    size: 25,
                    color: Colors.white,
                  )),
              SizedBox(
                width: 70,
              ),
              const Text(
                'More Services',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
            ],
          ),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.deepOrange,
        elevation: 2,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 140,
            width: double.infinity,
            color: Colors.deepOrange,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        'More Services',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Spacer(),
                      Container(
                        height: 35,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.deepOrange,
                          border: Border.all(
                            color: Colors.white,
                            width: 2,
                          ),
                        ),
                        child: const Center(
                            child: Text(
                          'বাংলা',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        )),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                    height: 50,
                    width: double.infinity,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: TextField(
                      controller: _controller,
                      decoration: const InputDecoration(
                          hintText: '    Search...',
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                              color:
                                  Colors.grey), // Change hint text color here
                      )
                    )

                    ),

              ],
            ),
          ),
          SizedBox(height: 20,),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 43,
                    width: 43,
                    margin: EdgeInsets.only(left: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.yellow,
                        width: 2,
                      ),
                    ),
                    child: Icon(Icons.airplane_ticket,size: 29,),
                  ),
                  SizedBox(width: 40,),
                  const Text('Tickets',style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.black54,
                    fontSize: 25,
                  ),)
                ],
              ),
              Divider(
                height: 40,
                thickness: 1,
                color: Colors.grey.shade300,
              ),

              Row(
                children: [
                  Container(
                    height: 43,
                    width: 43,
                    margin: EdgeInsets.only(left: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.yellow,
                        width: 2,
                      ),
                    ),
                    child: Icon(Icons.list_alt_rounded,size: 29,),
                  ),
                  SizedBox(width: 40,),
                  const Text('Toll',style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.black54,
                    fontSize: 25,
                  ),)
                ],
              ),
              Divider(
                height: 40,
                thickness: 1,
                color: Colors.grey.shade300,
              ),
              Row(
                children: [
                  Container(
                    height: 43,
                    width: 43,
                    margin: EdgeInsets.only(left: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.yellow,
                        width: 2,
                      ),
                    ),
                    child: Icon(Icons.tv_rounded,size: 29,),
                  ),
                  SizedBox(width: 40,),
                  const Text('Digital TV',style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.black54,
                    fontSize: 25,
                  ),)
                ],
              ),
              Divider(
                height: 40,
                thickness: 1,
                color: Colors.grey.shade300,
              ),
              Row(
                children: [
                  Container(
                    height: 43,
                    width: 43,
                    margin: EdgeInsets.only(left: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.yellow,
                        width: 2,
                      ),
                    ),
                    child: Icon(Icons.videogame_asset_sharp,size: 29,),
                  ),
                  SizedBox(width: 40,),
                  const Text('Games',style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.black54,
                    fontSize: 25,
                  ),)
                ],
              ),
              Divider(
                height: 40,
                thickness: 1,
                color: Colors.grey.shade300,
              ),



            ],
          )
        ],
      ),
    );
  }
}
