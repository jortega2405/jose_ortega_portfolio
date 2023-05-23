import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart' show ByteData, rootBundle;
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jose_ortega_portfolio/utils/constants.dart';
import 'package:path_provider/path_provider.dart';
import 'package:url_launcher/url_launcher.dart';




import 'area_info_text.dart';
import 'coding.dart';
import 'knowledges.dart';
import 'my_info.dart';
import 'skills.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // ignore: no_leading_underscores_for_local_identifiers
  _launchURL() async {
         final Uri url = Uri.parse("https://www.linkedin.com/in/jose-ortega-13288b163/");
   if (!await launchUrl(url)) {
        throw Exception('Could not launch $url');
    }
  }

  Future<void> _downloadCV() async {
  const String cvAssetPath = 'assets/pdf/cv.pdf';

  // Get the directory for storing the downloaded file
  final Directory? directory = await getExternalStorageDirectory();
  final String filePath = '${directory?.path}/cv.pdf';

  try {
    // Copy the CV file from the assets folder to the specified file path
    final ByteData assetData = await rootBundle.load(cvAssetPath);
    final File file = File(filePath);
    await file.writeAsBytes(assetData.buffer.asUint8List());

    // Show a toast or a message to indicate successful download
    print('CV downloaded successfully!');

    // Open the downloaded file
    await FlutterDownloader.open(taskId: file.path);
  } catch (e) {
    // Handle any errors that occur during the download process
    print('Failed to download CV: $e');
  }
}







    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            const MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                     const AreaInfoText(
                      title: "Residence",
                      text: 'Barranquilla - Colombia',
                    ),
                     const AreaInfoText(
                      title: "City",
                      text: 'Barranquilla - Colombia',
                    ),
                     const AreaInfoText(
                      title: "Age",
                      text: '25',
                    ),
                    const Skills(),
                    const SizedBox(height: defaultPadding),
                    const Coding(),
                    const Knowledges(),
                    const Divider(),
                    const SizedBox(height: defaultPadding / 2),
                    TextButton(
                      onPressed: _downloadCV,
                      child: FittedBox(
                        child: Row(
                          children: [
                            Text(
                              "DOWNLOAD CV",
                              style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .color,
                              ),
                            ),
                            const SizedBox(width: defaultPadding / 2),
                            SvgPicture.asset("assets/icons/download.svg")
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: defaultPadding),
                      color: const Color(0xFF24242E),
                      child: Row(
                        children: [
                          const Spacer(),
                          IconButton(
                            onPressed:_launchURL,
                            icon: SvgPicture.asset("assets/icons/linkedin.svg"),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset("assets/icons/github.svg"),
                          ),
                          const Spacer(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
