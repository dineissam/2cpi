import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NotificationPage(),
    );
  }
}


class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  final List<NotificationData> notifications = [
    NotificationData(
      time: "10:30 AM",
      icon: Icons.mail,
      name: "John Smith",
      note: "You have a new message",
    ),
    NotificationData(
      time: "12:45 PM",
      icon: Icons.notification_add_sharp,
      name: "Jane Doe",
      note: "Reminder: Meeting at 2 PM",
    ),
    NotificationData(
      time: "2:15 PM",
      icon: Icons.calendar_today,
      name: "Alex Johnson",
      note: "Event starting in 45 minutes",
    ),
    NotificationData(
      time: "4:00 PM",
      icon: Icons.check_circle_outline,
      name: "David Lee",
      note: "Task completed",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/Notification/backnotif.jpg'),
                fit: BoxFit.cover)),
      ),
      Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.all(30),
            child: Row(
              children: const [
                Icon(
                  Icons.arrow_back_ios,
                  size: 35,
                  color: Color(0xFFBFBFBF),
                ),
                SizedBox(width: 59),
                Text(
                  'Notification',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Gadugi'),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          (notifications.isEmpty)
              ? Column(
                  children: [
                    const SizedBox(
                      height: 0,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'You dont have any notifications',
                        style: TextStyle(
                            fontSize: 22,
                            color: Color(0xFF4F5054),
                            fontFamily: 'Gadugi'),
                      ),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    const Text(
                      'Come back later !',
                      style: TextStyle(
                          fontSize: 25,
                          color: Color(0xFF4F5054),
                          fontFamily: 'Gadugi'),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    Image.asset('images/Notification/nonotification.jpg'),
                  ],
                )
              : Expanded(
                  child: ListView.builder(
                    itemCount: notifications.length,
                    itemBuilder: (context, index) {
                      final notification = notifications[index];

                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 3),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(12),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.1),
                                        spreadRadius: 12,
                                        blurRadius: 7,
                                        offset: const Offset(0, 3))
                                  ]),
                              child: ListTile(
                                leading: Icon(
                                  notification.icon,
                                  color: const Color(0xFF00246B),
                                ),
                                title: Text(
                                  notification.name,
                                  style: const TextStyle(
                                      color: Color(0xFF00246B), fontSize: 25),
                                ),
                                subtitle: Text(notification.note),
                                trailing: Text(notification.time),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
        ],
      )
    ]));
  }
}

class NotificationData {
  final String time;
  final IconData icon;
  final String name;
  final String note;

  NotificationData({
    required this.time,
    required this.icon,
    required this.name,
    required this.note,
  });
}
