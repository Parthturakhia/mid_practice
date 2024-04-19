import 'package:flutter/material.dart';

import 'notification_class.dart';

class NotificationPanel extends StatelessWidget {
  final List<NotificationModel> notifications;

  const NotificationPanel({Key? key, required this.notifications}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: notifications.length,
      itemBuilder: (context, index) {
        final notification = notifications[index];
        return ListTile(
          title: Text(notification.title),
          subtitle: Text(notification.description),
          trailing: Text(
            '${notification.timestamp.hour}:${notification.timestamp.minute}',
          ),
          onTap: () {
            // Handle tapping on notification
          },
        );
      },
    );
  }
}
