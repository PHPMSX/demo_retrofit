import 'package:flutter/material.dart';

import '../models/user_model.dart';

class ItemUserWidget extends StatelessWidget {
  final User user;
  const ItemUserWidget({required this.user, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.network(user.avatar ?? '', height: 75, width: 75, fit: BoxFit.cover,),
        Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              user.name ?? '',
              style: const TextStyle(
                  fontSize: 24,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold),
            ),
            Text(user.gender ?? '')
          ],
        ))
      ],
    );
  }
}
