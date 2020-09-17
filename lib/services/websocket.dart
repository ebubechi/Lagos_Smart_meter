import 'package:injectable/injectable.dart';
import 'package:signalr_client/signalr_client.dart';

@lazySingleton
class WebSocks {
  static const endPoint = '';

  final hubConnection = new HubConnectionBuilder().withUrl(endPoint).build();

  
}
