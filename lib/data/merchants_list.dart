import 'package:credpal_shopping/data/app_asets.dart';
import 'package:credpal_shopping/data/models/merchant_model.dart';
import 'package:flutter/material.dart';

final merchants = [
  MerchantModel(
    isOnline: true,
    brandColor: const Color(0xFF000065),
    brandName: 'Justrite',
    brandLogo: AppImages.justrite,
  ),
  MerchantModel(
    isOnline: true,
    brandColor: Colors.black,
    brandName: 'Orile Restaurant',
    brandLogo: AppImages.orile,
  ),
  MerchantModel(
    isOnline: true,
    brandColor: const Color(0xFFED3237),
    brandName: 'Slot',
    brandLogo: AppImages.slot,
  ),
  MerchantModel(
    isOnline: true,
    brandColor: const Color(0xFF0077C9),
    brandName: 'Pointek',
    brandLogo: AppImages.pointek,
  ),
  MerchantModel(
    isOnline: true,
    brandColor: const Color(0xFFF1F3FE),
    brandName: 'ogabassey',
    brandLogo: AppImages.ogaBassey,
  ),
  MerchantModel(
    isOnline: false,
    brandColor: const Color(0xFFFE2B5E),
    brandName: 'Casper Stores',
    brandLogo: AppImages.casper,
  ),
  MerchantModel(
    isOnline: false,
    brandColor: const Color(0xFF3F4195),
    brandName: 'Dreamworks ',
    brandLogo: AppImages.dw,
  ),
  MerchantModel(
    isOnline: true,
    brandColor: const Color(0xFF000000),
    brandName: 'Hubmart',
    brandLogo: AppImages.hubMart,
  ),
  MerchantModel(
    isOnline: true,
    brandColor: const Color(0xFF13AFEE),
    brandName: 'Just Used',
    brandLogo: AppImages.justUsed,
  ),
  MerchantModel(
    isOnline: true,
    brandColor: const Color(0xFF000000),
    brandName: 'Just fones',
    brandLogo: AppImages.justPhones,
  ),
];
