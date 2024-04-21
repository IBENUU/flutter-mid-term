import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfileState();
}

class _ProfileState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(padding: EdgeInsets.zero, children: [
        Container(
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(50),
              )),
          child: Column(
            children: [
              const SizedBox(height: 30),
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                title: Text('Steven',
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall
                        ?.copyWith(color: Colors.white)),
                subtitle: Text('Steven123@gmail.com',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(color: Colors.white54)),
                trailing: const CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 30)
            ],
          ),
        ),
        Container(
          color: Theme.of(context).primaryColor,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 30),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(0))),
            child: GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              children: [
                itemProfile('Personal', Icons.person_outline_rounded,
                    const Color(0xFF858FE9)),
                itemProfile('Work', Icons.work_outline_rounded,
                    const Color(0xFF7FC9E7)),
                itemProfile('Private', Icons.lock_outline_rounded,
                    const Color(0xFFE77D7D)),
                itemProfile('Meeting', Icons.meeting_room_outlined,
                    const Color(0xFF81E89E)),
                itemProfile(
                    'Events', Icons.calendar_month, const Color(0xFF858FE9)),
                itemProfile('Create Board', Icons.add, const Color(0xFFF0A58E)),
              ],
            ),
          ),
        )
      ]),
    );
  }

  itemProfile(String title, IconData iconData, Color background) => Container(
        decoration: BoxDecoration(
          color: background.withOpacity(0.18), 
          borderRadius: BorderRadius.circular(20),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: background,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Icon(iconData, color: Colors.white),
              ),
              const SizedBox(height: 10),
              Text(
                title,
                style: Theme.of(context).textTheme.titleMedium,
              )
            ],
          ),
        ),
      );
}

