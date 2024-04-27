import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_auth_tut/models/app_user.dart';

final authProvider = StreamProvider.autoDispose<AppUser?>((ref) async* {
  
  // create a stream provides continues values (user/null)

  // YIELD that value whenevr it changes

});