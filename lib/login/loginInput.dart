
import 'package:flutter/material.dart';

inputView_login(hint, conter, _focusN, smp, context,type) {
  return Container(
    alignment: Alignment.center,
    margin: const EdgeInsets.only(bottom: 10),
    decoration: BoxDecoration(
        border: Border.all(
            color: _focusN.hasFocus ? Colors.blueAccent : Colors.grey),
        borderRadius: const BorderRadius.all(
          Radius.circular(5),
        )),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Container(
            child: TextFormField(
              controller: conter,
              focusNode: _focusN,
              textAlign: TextAlign.left,
              onChanged: (t) {
                if (type == 'id') {
                  smp.setUserId(t);
                } else {
                  smp.setUserPassword(t);
                }

              },

              decoration: InputDecoration(
                hintText: hint,
                border: const OutlineInputBorder(borderSide: BorderSide.none),
              ),
            ),
          ),
        ),

      ],
    ),
  );
}