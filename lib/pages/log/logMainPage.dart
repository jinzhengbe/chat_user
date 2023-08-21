
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'LogProvider.dart';
class LogViewerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LogProvider()..fetchLogFiles(),
      child: Scaffold(
        appBar: AppBar(title: Text("Log Viewer")),
        body: Consumer<LogProvider>(
          builder: (context, provider, child) {
            if (provider.logFiles.isEmpty) {
              return Center(child: Text("No log files available."));
            }
            return ListView.builder(
              itemCount: provider.logFiles.length,
              itemBuilder: (context, index) {
                final file = provider.logFiles[index];
                return ListTile(
                  title: Text(file.path.split('/').last),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LogDetailPage(file: file)));
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class LogDetailPage extends StatelessWidget {
  final File file;

  LogDetailPage({required this.file});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
      future: file.readAsString(),
      builder: (context, snapshot) {
        return Scaffold(
          appBar: AppBar(title: Text("Log Details")),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: snapshot.connectionState == ConnectionState.done
                ? SingleChildScrollView(child: Text(snapshot.data ?? "Empty log."))
                : Center(child: CircularProgressIndicator()),
          ),
        );
      },
    );
  }
}
