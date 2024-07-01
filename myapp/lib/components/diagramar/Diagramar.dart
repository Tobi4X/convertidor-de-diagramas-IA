import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:myapp/MyAppState.dart';
import 'package:provider/provider.dart';


class Diagramar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    var appState = context.watch<MyAppState>();
    var mermaidCode = appState.currentDiagram;
    
    String htmlContent = '''
    <!DOCTYPE html>
    <html>
    <head>
      <script type="module">
        import mermaid from 'https://cdn.jsdelivr.net/npm/mermaid@9.1.3/dist/mermaid.esm.min.mjs';
        mermaid.initialize({startOnLoad:true});
      </script>
    </head>
    <body>
      <div class="mermaid">
        $mermaidCode
      </div>
    </body>
    </html>
    ''';

    return InAppWebView(
      initialData: InAppWebViewInitialData(data: htmlContent),
      initialOptions: InAppWebViewGroupOptions(
        crossPlatform: InAppWebViewOptions(
          javaScriptEnabled: true,
        ),
      ),
    );
  }
}
