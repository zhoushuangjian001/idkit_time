import 'package:flutter_test/flutter_test.dart';

import 'package:idkit_time/idkit_time.dart';

void main() {
  test('adds one to input values', () {
    expect(IDKitTime.formatDate(DateTime.parse("2020-08-11 14:41:03")),
        "2020-08-11 14:41:03");
  });
}
