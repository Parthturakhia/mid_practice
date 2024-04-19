import 'package:flutter/material.dart';
import 'notification_class.dart';
import 'notification_panel.dart'; // Import the widget

class CompanyNotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<NotificationModel> notifications = [
      NotificationModel(
        title: 'New Feature Added',
        description: 'We have added a new feature to our platform.',
        timestamp: DateTime.now(),
      ),
      NotificationModel(
        title: 'Upcoming Maintenance',
        description: 'Our services will be undergoing maintenance tomorrow.',
        timestamp: DateTime.now().add(Duration(days: 1)),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Company Notifications'),
      ),
      body: NotificationPanel(notifications: notifications),
    );
  }
}
