import 'types.dart';

class AsyncCableError extends Error {}

class AsyncCableProtocolError extends AsyncCableError {
  String error;

  AsyncCableProtocolError(this.error);

  @override
  String toString() => "AsyncCableProtocolError: $error";
}

class AsyncCableUnauthorized extends AsyncCableError {}

class AsyncCableInvalidRequest extends AsyncCableError {}

class AsyncCableServerRestart extends AsyncCableError {}

class AsyncCableServerClosedConnection extends AsyncCableError {}

class AsyncCablePingTimeoutError extends AsyncCableError {}

class AsyncCableNetworkError extends AsyncCableError {
  Object error;

  AsyncCableNetworkError(this.error);

  @override
  String toString() => "AsyncCableNetworkError: $error";
}

class AsyncCableSubscriptionRejected extends AsyncCableError {
  /// The channel.
  final AsyncCableChannel channel;

  AsyncCableSubscriptionRejected(this.channel);

  @override
  String toString() => "AsyncCableSubscriptionRejected: ${channel.name}";
}
