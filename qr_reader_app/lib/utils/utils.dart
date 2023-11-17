import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:qr_reader_app/models/scan_model.dart';
import 'package:url_launcher/url_launcher.dart';

launchUrlUtils(BuildContext context, ScanModel scan) async {
  final url = Uri.parse(scan.valor);

  if (scan.tipo == 'http') {
    // Abrir el sitio web
    try {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } catch (e) {
      if (kDebugMode) {
        print('Error al lanzar la URL: $e');
      }
    }
  } else {
    Navigator.pushNamed(context, 'mapa', arguments: scan);
  }
}
