import 'package:flutter_test/flutter_test.dart';

import 'package:idkit_time/idkit_time.dart';

void main() {
  test('adds one to input values', () {
    expect(
        IDKitTime.formatDate(DateTime.parse("2020-08-11 14:41:03"),
            format: TimeFormat.yyyyMMdd),
        "2020-08-11");
    expect(IDKitTime.formatDate(DateTime.parse("2020-08-11 14:41:03")),
        "2020-08-11 14:41:03");
    expect(IDKitTime.diyFormatDate(stamp: "1610523651676", format: "yyyy年MM月"),
        "2021年01月");
    expect(IDKitTime.diyFormatDate(stamp: "1610523651676", format: "yyyy年"),
        "2021年");
    expect(
        IDKitTime.diyFormatDate(stamp: "1610523651676", format: "yyyy年MM月dd日"),
        "2021年01月13日");
    expect(
        IDKitTime.diyFormatDate(
            stamp: "1610523651676", format: "yyyy年MM月dd日 hh时"),
        "2021年01月13日 15时");
    expect(
        IDKitTime.diyFormatDate(
            stamp: "1610523651676", format: "yyyy年MM月dd日 hh时mm分"),
        "2021年01月13日 15时40分");
    expect(
        IDKitTime.diyFormatDate(
            stamp: "1610523651676", format: "yyyy年MM月dd日 hh时mm分ss秒"),
        "2021年01月13日 15时40分51秒");
    expect(
        IDKitTime.diyFormatDate(
            stamp: "1610523651676", format: "yyyy年MM月dd日 hh:mm:ss"),
        "2021年01月13日 15:40:51");
    expect(
        IDKitTime.diyFormatDate(
            stamp: "1610523651676", format: "yyyy年MM月dd日 hh:mm"),
        "2021年01月13日 15:40");
  });
}
