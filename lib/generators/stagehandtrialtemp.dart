// Copyright (c) 2014, Google Inc. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
library stagehand.stagehandtrialtemp;

import '../../../../stagehand/lib/stagehand.dart';
import '../../../../stagehand/lib/src/common.dart';
import 'stagehandtrialtemp_data.dart';

/**
 * A test generator for new Stagehand third party template implementation
 */
class stagehandtrialtemp extends DefaultGenerator {
  stagehandtrialtemp() : super(
      'stagehandtrialtemp',
      'Polymer Web Application',
      'A test generator for new Stagehand third party template implementation',
      categories: const ['dart', 'web']) {

    for (TemplateFile file in decodeConcanenatedData(data)) {
      addTemplateFile(file);
    }

    setEntrypoint(getFile('web/index.html'));
  }

  String getInstallInstructions() =>
      "${super.getInstallInstructions()}\n"
      "to run your app, use 'pub serve'";
}
