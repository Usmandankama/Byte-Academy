import 'package:byteacademy/pages/profile_page.dart';
import 'package:byteacademy/widgets/courses_tile.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:byteacademy/constants/colors.dart' as colors;

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        scrolledUnderElevation: 2,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfilePage(),
                  ),
                );
              },
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  border:
                      Border.all(color: colors.secondaryColor, strokeAlign: .5),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    './assets/images/avatar.jpg',
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                  ),
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications),
            ),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Text(
            'Hello, Usman!',
            style: TextStyle(
              fontSize: 30,
              color: colors.primaryfontColor,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            'What do you want to learn today?',
            style: TextStyle(color: colors.secondaryfontColor),
          ),
          const SizedBox(height: 20),
          Container(
            height: 170,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.black12,
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 15,
                left: 20,
                right: 10,
              ),
              child: SizedBox(
                width: 180,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Black Friday Offer',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'Get up to 30% off of our amazing courses ',
                      style: TextStyle(fontSize: 12),
                    ),
                    const Text(
                      'Get up to 30% off of our amazing courses ',
                      style: TextStyle(fontSize: 12),
                    ),
                    const Row(
                      children: [
                        Text('from'),
                        SizedBox(width: 5),
                        Text('Nov 15th',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                            )),
                        SizedBox(width: 5),
                        Text('to'),
                        SizedBox(width: 5),
                        Text(
                          'Dec 5th',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Get'),
                    )
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: TabBar(
              indicator: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                    color: colors.primaryColor,
                    width: 2,
                    style: BorderStyle.solid,
                    strokeAlign: 1),
              ),
              splashBorderRadius: BorderRadius.circular(50),
              isScrollable: true,
              padding: const EdgeInsets.all(10),
              labelColor: Colors.white,
              unselectedLabelColor: Colors.black54,
              controller: _tabController,
              indicatorSize: TabBarIndicatorSize.tab,
              labelPadding: const EdgeInsets.symmetric(horizontal: 30),
              unselectedLabelStyle: const TextStyle(color: Colors.black45),
              dividerColor: Colors.transparent,
              tabs: const [
                Tab(text: 'HTML'),
                Tab(text: 'PYTHON'),
                Tab(text: 'JAVA'),
                Tab(text: 'XML'),
                Tab(text: 'SQL'),
                Tab(text: 'CSS'),
              ],
            ),
          ),
          SizedBox(
            width: double.maxFinite,
            height: 350,
            child: TabBarView(
              controller: _tabController,
              children: const [
                CoursesTile(),
                Text('data'),
                Text('data'),
                Text('data'),
                Text('data'),
                Text('data'),
              ],
            ),
          ),
        //TODO: implement other sections
          const Text('Your Courses'),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded), label: 'Courses'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      ]),
    );
  }

  void logout() {
    FirebaseAuth.instance.signOut();
  }
}
