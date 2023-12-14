import 'package:byteacademy/widgets/courses_tile.dart';
import 'package:flutter/material.dart';
import 'package:byteacademy/constants/colors.dart' as colors;

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 150,
              width: 150,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  './assets/images/avatar.jpg',
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Center(
              child: Text(
                'Account Name',
                style: TextStyle(
                  fontSize: 20,
                  color: colors.secondaryfontColor,
                ),
              ),
            ),
            const SizedBox(height: 15),
            const Row(
              children: [
                Text(
                  'Account',
                  style: TextStyle(color: Colors.black45),
                ),
              ],
            ),
            const SizedBox(height: 15),
            const ListTile(
              leading: Icon(Icons.person, size: 25),
              title: Text(
                'Account',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                size: 16,
              ),
              tileColor: Color.fromARGB(31, 131, 131, 131),
            ),
            const ListTile(
              leading: Icon(Icons.lock, size: 25),
              title: Text(
                'Privacy',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                size: 16,
              ),
              tileColor: Color.fromARGB(31, 131, 131, 131),
            ),
            const ListTile(
              leading: Icon(Icons.color_lens, size: 25),
              title: Text(
                'Theme',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                size: 16,
              ),
              tileColor: Color.fromARGB(31, 131, 131, 131),
            ),
            const ListTile(
              leading: Icon(Icons.security_rounded, size: 25),
              title: Text(
                'Security',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                size: 16,
              ),
              tileColor: Color.fromARGB(31, 131, 131, 131),
            ),
            const SizedBox(height: 15),
            const Row(
              children: [
                Text(
                  'Support & About',
                  style: TextStyle(color: Colors.black45),
                ),
              ],
            ),
            const SizedBox(height: 15),
            const ListTile(
              leading: Icon(Icons.flag, size: 25),
              title: Text(
                'Report a problem',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                size: 16,
              ),
              tileColor: Color.fromARGB(31, 131, 131, 131),
            ),
            const ListTile(
              leading: Icon(Icons.contact_support_rounded, size: 25),
              title: Text(
                'Support',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                size: 16,
              ),
              tileColor: Color.fromARGB(31, 131, 131, 131),
            ),
            const ListTile(
              leading: Icon(Icons.info, size: 25),
              title: Text(
                'Terms and Policies',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                size: 16,
              ),
              tileColor: Color.fromARGB(31, 131, 131, 131),
            ),
            const SizedBox(height: 15),
            const Row(
              children: [
                Text(
                  'Login',
                  style: TextStyle(color: Colors.black45),
                ),
              ],
            ),
            const SizedBox(height: 15),
            const ListTile(
              leading: Icon(Icons.swap_horiz, size: 25),
              title: Text(
                'Switch account',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                size: 16,
              ),
              tileColor: Color.fromARGB(31, 131, 131, 131),
            ),
            const ListTile(
              leading: Icon(Icons.logout_rounded, size: 25),
              title: Text(
                'Logout',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                size: 16,
              ),
              tileColor: Color.fromARGB(31, 131, 131, 131),
            ),
            const SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
}
