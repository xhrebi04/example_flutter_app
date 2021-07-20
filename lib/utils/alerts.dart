import 'package:example_flutter/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void showAlert(context,
    {String title, String content, List<Map<String, dynamic>> buttons}) {
  showDialog(
    context: context,
    builder: (BuildContext ctx) => CupertinoAlertDialog(
      title: Text(title,
          style: TextStyle(
              color: Colors.black, fontSize: 17, fontWeight: FontWeight.w600)),
      content: content != null
          ? Container(margin: EdgeInsets.only(top: 10), child: Text(content))
          : Container(),
      actions: buttons
          .map((e) => CupertinoDialogAction(
              isDestructiveAction: e['isDestructiveAction'] != null
                  ? e['isDestructiveAction']
                  : false,
              child: Text(e['btnTitle']),
              onPressed: () => e['onBtnPress'](ctx)))
          .toList(),
    ),
  );
}

void showErrorAlert(context, content) {
  showAlert(context,
      title: S.of(context).warning,
      content: content is String ? content : content?.toString(),
      buttons: [
        {
          'btnTitle': 'OK',
          'onBtnPress': (context) => Navigator.pop(context),
        },
      ]);
}
