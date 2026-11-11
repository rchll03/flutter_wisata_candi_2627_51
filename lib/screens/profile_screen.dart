import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  //Todo 1 variabel
  bool isSignedIn= false;
  String fullName="Rachmadi.";
  String userName="Rachmadi";
  int favoriteCandiCount=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.deepPurple,
          ),
          Column(
            children: [
              //Todo 2 Profile Header
              Align(
                alignment: AlignmentGeometry.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top : 200-50),
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.purple),
                          shape: BoxShape.circle,
                        ),
                        child: const CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage('images/placeholder_image.png'),
                        ),
                      ),
                      if(isSignedIn)
                        IconButton(
                          onPressed: () {
                            
                          }, 
                          icon: Icon(Icons.camera_alt, color : Colors.deepPurple))
                    ],
                  ),
                ),
              ),
              //Todo 3 Profile Info
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width/3,
                    child : Row(children: [
                      Icon(Icons.lock, color: Colors.amber,),
                      SizedBox(width: 8,),
                      Text("Pengguna", style: TextStyle(fontSize: 18 , fontWeight: FontWeight.bold),)
                    ],)
                  ),
                  Expanded(child: Text(' : $userName', style: TextStyle(fontSize: 18),))
                ],
              ),
              SizedBox(height: 4,),
              Divider(color: Colors.deepPurple,),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width/3,
                    child : Row(children: [
                      Icon(Icons.person, color: Colors.blue,),
                      SizedBox(width: 8,),
                      Text("Nama", style: TextStyle(fontSize: 18 , fontWeight: FontWeight.bold),)
                    ],)
                  ),
                  Expanded(child: Text(' : $fullName', style: TextStyle(fontSize: 18),)),
                  if(isSignedIn) const Icon(Icons.edit)
                ],
              ),
              SizedBox(height: 4,),
              Divider(color: Colors.deepPurple,),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width/3,
                    child : Row(children: [
                      Icon(Icons.favorite, color: Colors.blue,),
                      SizedBox(width: 8,),
                      Text("Favorit", style: TextStyle(fontSize: 18 , fontWeight: FontWeight.bold),)
                    ],)
                  ),
                  Expanded(child: Text(' : $favoriteCandiCount', style: TextStyle(fontSize: 18),))
                ],
              ),
              SizedBox(height: 4,),
              Divider(color: Colors.deepPurple,),
              SizedBox(height: 16,),
              isSignedIn 
              ? TextButton(onPressed: () {}, child: const Text('Signed Out'))
              : TextButton(onPressed: () {}, child: const Text('Signed In'))
              //Todo 4 Profile Action
            ],
          ),
        ],
      ),
    );
  }
}