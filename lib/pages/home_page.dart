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
    _tabController = TabController(length: 3, vsync: this);
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
        // leading: Icon(Icons.menu_rounded),
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                border: Border.all(color: colors.secondaryColor),
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
            IconButton(
              icon: const Icon(Icons.notifications),
              onPressed: () {},
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
              isScrollable: true,
              labelColor: colors.primaryfontColor,
              unselectedLabelColor: colors.secondaryfontColor,
              controller: _tabController,
              labelPadding: const EdgeInsets.symmetric(horizontal:20),
              tabs: const [
                Tab(
                  text: "Hello",
                ),
                Tab(
                  text: "Hello",
                ),
                Tab(
                  text: "Hello",
                ),
              ],
            ),
          ),
          SizedBox(
            width: double.maxFinite,
            height: 300,
            child: TabBarView(
              controller: _tabController,
              children: const [
                Text('data'),
                Text('data'),
                Text('data'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
