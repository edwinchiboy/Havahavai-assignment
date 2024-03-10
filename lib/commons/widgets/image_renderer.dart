import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class ImageRenderer extends StatelessWidget {
  const ImageRenderer({
    Key? key,
    required this.url,
    this.height,
    this.width,
    this.fit,
  }) : super(key: key);

  final String url;
  final double? height;
  final double? width;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return url.contains(".svg")
        ? SvgPicture.asset(url, height: height, width: width, fit: BoxFit.cover)
        : Image.asset(url, height: height, width: width, fit: BoxFit.cover);
  }
}
