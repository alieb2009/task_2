import 'package:flutter/material.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:task_2/main.dart';

// For checking internet connectivity
abstract class NetworkInfo {
  Future<bool> isConnected();
  Future<ConnectivityResult> get connectivityResult;
  Stream<ConnectivityResult> get onConnectivityChanged;
}

class NetworkInfoImpl implements NetworkInfo {
  Connectivity connectivity;

  static final NetworkInfoImpl _networkInfo = NetworkInfoImpl._internal(Connectivity());

  factory NetworkInfoImpl() {
    return _networkInfo;
  }

  NetworkInfoImpl._internal(this.connectivity) {
    connectivity = this.connectivity;
  }

  /// Checks if internet is connected or not
  /// Returns [true] if internet is connected, else [false]
  @override
  Future<bool> isConnected() async {
    final result = await connectivity.checkConnectivity();
    if (result != ConnectivityResult.none) {
      return true;
    }
    return false;
  }

  /// To check type of internet connectivity
  @override
  Future<ConnectivityResult> get connectivityResult async {
    return connectivity.checkConnectivity();
  }

  /// Check the type of internet connection on change of internet connection
  @override
  Stream<ConnectivityResult> get onConnectivityChanged => connectivity.onConnectivityChanged;
}

abstract class Failure {}

/// General failures
class ServerFailure extends Failure {}

class CacheFailure extends Failure {}

class NetworkFailure extends Failure {}

class ServerException implements Exception {}

class CacheException implements Exception {}

class NetworkException implements Exception {}

/// Can be used for throwing [NoInternetException]
class NoInternetException implements Exception {
  late String _message;

  NoInternetException([String message = 'NoInternetException Occurred']) {
    this._message = message;
  }

  @override
  String toString() {
    return _message;
  }
}
