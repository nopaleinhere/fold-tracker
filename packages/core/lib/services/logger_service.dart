import 'package:logger/logger.dart';

class LoggerService {
  late final Logger _logger;

  LoggerService() {
    _logger = Logger(
      printer: PrettyPrinter(
        methodCount: 1,
        errorMethodCount: 5,
        lineLength: 80,
        colors: true,
        printEmojis: true,
      ),
    );
  }

  // Debug
  void d(dynamic message) {
    _logger.d(message);
  }

  // Info
  void i(dynamic message) {
    _logger.i(message);
  }

  // Warning
  void w(dynamic message) {
    _logger.w(message);
  }

  // Error
  void e(dynamic message, {dynamic error, StackTrace? stackTrace}) {
    _logger.e(message, error: error, stackTrace: stackTrace);
  }
}
