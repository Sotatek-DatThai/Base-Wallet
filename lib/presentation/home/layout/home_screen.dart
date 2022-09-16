import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:base_wallet/presentation/home/provider/home_provider.dart';
import 'package:base_wallet/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final String value = ref.watch<String>(homeProvider);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: _setNotifi,
      ),
      body: Center(
        child: Text(value),
      ),
    );
  }

  void _setNotifi() async {
    const int sec = 10;
    await AwesomeNotifications().createNotification(
      content: NotificationContent(
        id: 0,
        channelKey: 'scheduled',
        title: 'wait $sec seconds to show',
        body: 'now is $sec seconds later',
        wakeUpScreen: true,
        category: NotificationCategory.Alarm,
        customSound: Sound.fresh,
      ),
      schedule: NotificationInterval(
        interval: sec,
        preciseAlarm: true,
        timeZone: await AwesomeNotifications().getLocalTimeZoneIdentifier(),
      ),
    );
  }
}
