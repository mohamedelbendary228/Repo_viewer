import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reop_viewer/core/infrastructure/sembast_database.dart';

final sembastProvider = Provider((ref) => SembastDatabase());
