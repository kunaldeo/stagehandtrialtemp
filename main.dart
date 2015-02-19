import 'package:plugins/plugin.dart';
import 'dart:isolate';
import 'src/stagehandtrialtemp_data.dart';

void main(List<String> args, SendPort port) {
  Receiver rec = new Receiver(port);
  rec.listen((Map<dynamic, dynamic> data) {
    Map pluginData = new Map();
    pluginData['info'] = "Stagehand Trial Template";
    pluginData['description'] = "Stagehnad Trial Template Information";
    pluginData['entrypoint'] = "web/index.html";
    pluginData['help'] = "to run your app, use 'pub serve'";
    pluginData['data'] = templateData;
    rec.send(pluginData);
  });
}
