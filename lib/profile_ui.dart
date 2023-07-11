import 'package:flutter/material.dart';

class ProfileUi extends StatelessWidget {
  const ProfileUi({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none, // for overflow control
            alignment: Alignment.center,
            children: [
              Image(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.45,
                  fit: BoxFit.cover,
                  image: const NetworkImage(
                      'https://images.unsplash.com/photo-1531297484001-80022131f5a1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cG9ydGZvbGlvJTIwYmFja2dyb3VuZHxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80')),
              const Positioned(
                  bottom: -55,
                  child: CircleAvatar(
                    radius: 70,
                    backgroundImage: NetworkImage(
                        'https://media.istockphoto.com/id/1095289632/vector/purple-user-icon-in-the-circle-a-solid-gradient.jpg?s=612x612&w=0&k=20&c=35BA2rH_fHDkiSlCyJXzvofllOyvNdc9V-VZzZQxzD4='),
                  )),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          const ListTile(
            title: Center(
                child: Text(
              "LIHAZ ALI SHAH",
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
            subtitle:
                Center(child: Text('Frontend Mobile Application Developer')),
          ),
          SizedBox(
            height: 20,
          ),
          FloatingActionButton.extended(
            label: const Text('Hire Me'), // <-- Text
            backgroundColor: Colors.black,
            icon: const Icon(
              // <-- Icon
              Icons.mail,
              size: 24.0,
            ),
            onPressed: () {},
          ),
          const ListTile(
            title: Text(
              'About Me',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
                'Lihaz Ali is a Pakistani software engineer and entrepreneur, best known as the creator and lead developer of the jQuery JavaScript library. As of 2021, he works as the chief software architect at Khan Academy'),
          )
        ],
      ),
    );
  }
}
