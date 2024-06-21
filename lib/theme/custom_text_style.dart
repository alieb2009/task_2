import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension CustomTextStyle on TextStyle {
  TextStyle get sFProText {
    return copyWith(
      fontFamily: 'SF Pro Text',
    );
  }

  TextStyle get cabin {
    return copyWith(
      fontFamily: 'Cabin',
    );
  }

  TextStyle get readexPro {
    return copyWith(
      fontFamily: 'Readex Pro',
    );
  }

  TextStyle get montaga {
    return copyWith(
      fontFamily: 'Montaga',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get cairo {
    return copyWith(
      fontFamily: 'Cairo',
    );
  }

  TextStyle get mohamedamerEBNELNILE {
    return copyWith(
      fontFamily: 'Mohamedamer_EBN-ELNILE',
    );
  }

  TextStyle get montaguSlab {
    return copyWith(
      fontFamily: 'Montagu Slab',
    );
  }
}

class CustomTextStyles {
  // Body text style
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(

    color: appTheme.black900,
    fontSize: 20,
  );

  static get bodyLargeMohamedamerEBNELNILE =>
      theme.textTheme.bodyLarge!.mohamedamerEBNELNILE;

  static get bodyLargePrimaryContainer => theme.textTheme.bodyLarge!.copyWith(
    color: theme.colorScheme.primaryContainer,
  );

  static get bodyLargeSFProTextBlack900 =>
      theme.textTheme.bodyLarge!.sFProText.copyWith(
        color: appTheme.black900,
      );

  static get bodyLargeSecondaryContainer =>
      theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.secondaryContainer,
      );

  static get bodyMediumCabin => theme.textTheme.bodyMedium!.cabin.copyWith(
    color: appTheme.green900,
    fontSize: 14.fSize,
  );

  static get bodyMediumCabinPrimaryContainer =>
      theme.textTheme.bodyMedium!.cabin.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 14.fSize,
      );

  static get bodyMediumMohamedamerEBNELNILEPrimaryContainer =>
      theme.textTheme.bodyMedium!.mohamedamerEBNELNILE.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontSize: 15.fSize,
      );

  static get bodyMediumPrimaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );

  static get bodyMediumPrimaryContainer1 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
      );

  static get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
    color: appTheme.black900,
  );

  static get bodySmallPrimaryContainer =>
      theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
      );

  // Headline text style
  static get headlineSmallMontagaPrimaryContainer =>
      theme.textTheme.headlineSmall!.montaga.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontWeight: FontWeight.w400,
      );

  // Label text style
  static get labelLargePrimaryContainer =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
      );

  static get labelLargePrimaryContainer1 =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
      );

  // Title text style
  static get titleLargeCabinGreen100 =>
      theme.textTheme.titleLarge!.cabin.copyWith(
        color: appTheme.green100,
        fontWeight: FontWeight.w700,
      );

  static get titleLargeCabinPrimaryContainer =>
      theme.textTheme.titleLarge!.cabin.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontSize: 20.fSize,
        fontWeight: FontWeight.w500,
      );

  static get titleLargeMontaguSlab =>
      theme.textTheme.titleLarge!.montaguSlab.copyWith(
        fontSize: 20.fSize,
      );

  static get titleMediumCairoGreen20001 =>
      theme.textTheme.titleMedium!.cairo.copyWith(
        color: appTheme.green20001,
      );

  static get titleMediumGray400 => theme.textTheme.titleMedium!.copyWith(
    color: appTheme.gray400,
    fontSize: 18.fSize,
  );

  static get titleMediumGreen20001 => theme.textTheme.titleMedium!.copyWith(
    color: appTheme.green20001.withOpacity(0.2),
  );

  static get titleMediumGreen20001_1 => theme.textTheme.titleMedium!.copyWith(
    color: appTheme.green20001,
  );

  static get titleMediumInterGray600 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.gray600,
        fontWeight: FontWeight.w700,
      );

  static get titleMediumPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
      );

  static get titleMediumReadexProGreen20001 =>
      theme.textTheme.titleMedium!.readexPro.copyWith(
        color: appTheme.green20001,
      );

  static get titleMediumReadexProGreen20001_1 =>
      theme.textTheme.titleMedium!.readexPro.copyWith(
        color: appTheme.green20001.withOpacity(0.2),
      );
}
