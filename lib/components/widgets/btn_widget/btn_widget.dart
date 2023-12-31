import 'package:flutter/material.dart';

typedef OnBtnCallback = void Function();

ElevatedButton buildBtnWidget(String txt, OnBtnCallback callback) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      fixedSize: const Size.fromHeight(48.0), // 设置按钮的高度
    ),
    child: Text(
      txt,
      style: const TextStyle(color: Colors.white),
    ),
    // color: Colors.blue[600],
    onPressed: callback,
  );
}
