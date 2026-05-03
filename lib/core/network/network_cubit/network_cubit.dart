import 'dart:async';
import 'package:doctorak/core/network/network_info.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

import 'network_state.dart';

class NetworkCubit extends Cubit<NetworkState> {
  final NetworkInfo networkInfo;
  StreamSubscription<InternetStatus>? _subscription;

  NetworkCubit(this.networkInfo) : super(const NetworkState.initial()) {
    _monitorConnection();
  }

  void _monitorConnection() {
    _subscription = networkInfo.onStatusChange.listen((status) {
      if (status == InternetStatus.connected) {
        emit(const NetworkState.connected());
      } else {
        emit(const NetworkState.disconnected());
      }
    });
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
