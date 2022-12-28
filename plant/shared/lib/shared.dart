library shared;

import 'log/log.dart';
import 'log/log_impl.dart';

export 'extensions/extensions.dart';

Log get log => LogImpl();
