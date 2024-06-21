import 'dart:io';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../core/app_export.dart';

extension ImageTypeExtension on String {
  ImageType get imageType {
    if (this.startsWith('http') || this.startsWith('https')) {
      return ImageType.network;
    } else if (this.endsWith('.svg')) {
      return ImageType.svg;
    } else if (this.startsWith('file://')) {
      return ImageType.file;
    } else {
      return ImageType.png;
    }
  }
}

enum ImageType { svg, png, network, file, unknown }

// ignore_for_file: must_be_immutable
class CustomImageView extends StatelessWidget {
  CustomImageView({
    this.imagePath,
    this.height,
    this.width,
    this.color,
    this.fit,
    this.alignment,
    this.onTap,
    this.radius,
    this.margin,
    this.border,
    this.placeholder = 'assets/images/image_not_found.png',
  });

  String? imagePath;
  double? height;
  double? width;
  Color? color;
  BoxFit? fit;
  final String placeholder;
  Alignment? alignment;
  VoidCallback? onTap;
  EdgeInsetsGeometry? margin;
  BorderRadius? radius;
  BoxBorder? border;

  @override
  Widget build(BuildContext context) {
    return alignment != null ? Align(alignment: alignment!, child: _buildWidget()) : _buildWidget();
  }

  Widget _buildWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: InkWell(
        onTap: onTap,
        child: _buildCircleImage(),
      ),
    );
  }

  Widget _buildCircleImage() {
    if (radius != null) {
      return ClipRRect(
        borderRadius: radius ?? BorderRadius.zero,
        child: _buildImageWithBorder(),
      );
    } else {
      return _buildImageWithBorder();
    }
  }

  Widget _buildImageWithBorder() {
    if (border != null) {
      return Container(
        decoration: BoxDecoration(
          border: border,
          borderRadius: radius,
        ),
        child: _buildImageView(),
      );
    } else {
      return _buildImageView();
    }
  }

  Widget _buildImageView() {
    switch (imagePath!.imageType) {
      case ImageType.network:
        return _networkImage();
      case ImageType.svg:
        return _svgImage();
      case ImageType.file:
        return _fileImage();
      default:
        return _assetImage();
    }
  }

  Widget _networkImage() {
    return CachedNetworkImage(
      imageUrl: imagePath!,
      height: height ?? 24.v,
      width: width ?? 24.v,
      fit: fit ?? BoxFit.cover,
      color: color,
      placeholder: (context, url) => _placeholderImage(),
      errorWidget: (context, url, error) => _placeholderImage(),
    );
  }

  Widget _svgImage() {
    return SvgPicture.asset(
      imagePath!,
      height: height ?? 24.v,
      width: width ?? 24.v,
      fit: fit ?? BoxFit.cover,
      color: color,
      placeholderBuilder: (context) => _placeholderImage(),
    );
  }

  Widget _fileImage() {
    return Image.file(
      File(imagePath!.replaceAll('file://', '')),
      height: height ?? 24.v,
      width: width ?? 24.v,
      fit: fit ?? BoxFit.cover,
      color: color,
      errorBuilder: (context, error, stackTrace) => _placeholderImage(),
    );
  }

  Widget _assetImage() {
    return Image.asset(
      imagePath!,
      height: height ?? 24.v,
      width: width ?? 24.v,
      fit: fit ?? BoxFit.cover,
      color: color,
      errorBuilder: (context, error, stackTrace) => _placeholderImage(),
    );
  }

  Widget _placeholderImage() {
    return Image.asset(
      placeholder,
      height: height ?? 24.v,
      width: width ?? 24.v,
      fit: fit ?? BoxFit.cover,
    );
  }
}
