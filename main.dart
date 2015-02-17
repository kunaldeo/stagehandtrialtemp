import 'package:plugins/plugin.dart';
import 'dart:isolate';
import 'src/stagehandtrialtemp_data.dart';

void main(List<String> args, SendPort port) {
  Receiver rec = new Receiver(port);
  rec.listen((Map<dynamic, dynamic> rdata) {
    Map pluginData = new Map();
    pluginData['info'] = "Stagehand Trial Template";
    pluginData['description'] = "Stagehnad Trial Template Information";
    pluginData['entrypoint'] = "web/index.html";
    pluginData['data'] = data;
    rec.send(pluginData);
  });
}
