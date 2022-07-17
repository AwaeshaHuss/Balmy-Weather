import 'package:flutter/material.dart';

buildCustomErrorWidget() => ErrorWidget.builder = ((details) => Material(
        child: Container(
      color: Colors.black87,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/error.png',
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 20,
          ),
          Card(
            margin: EdgeInsets.all(8.0),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12.0))),
            color: Colors.grey.withOpacity(0.5),
            elevation: 22.0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '${details.exception}',
                style: const TextStyle(
                    letterSpacing: 1.6,
                    wordSpacing: 2.0,
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: Colors.white54),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    )));
