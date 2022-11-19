import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

typedef Uint8ListCallBack = Function(Uint8List data);
typedef DynamicCallBack = Function(dynamic data);

class Host {
  Uint8ListCallBack? onData;
  DynamicCallBack? onError;

  Host(this.onData, this.onError);

  ServerSocket? serverSocket;
  bool running = false;
  List<Socket> sockets = [];

  Future<void> start() async {
    runZoned(() async {
      serverSocket = await ServerSocket.bind("198.168.0.105", 400);
      running = true;
      serverSocket!.listen(onRequest);
      const message = "Server is listening on port 400";
      onData!(Uint8List.fromList(message.codeUnits));
    }, onError: onError);
  }

  void onRequest(Socket socket) {
    if (!sockets.contains(socket)) {
      sockets.add(socket);
    }
    socket.listen((event) {
      onData!(event);
    });
  }
}
