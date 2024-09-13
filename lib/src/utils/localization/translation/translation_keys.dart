import 'package:get/get.dart';

/// Provides a blueprint for classes that offer translations for predefined keys.
/// Each translation class must implement this interface to ensure consistency.
///
/// To add a new translation:
///   1. Add the new key to the [TranslationKey] enum:
///     ```dart
///     enum TranslationKey {
///       // ... existing keys
///       yourNewKey,
///     }
///     ```
///   2. Add a corresponding getter to the [TranslationProvider] interface:
///     ```dart
///     String get yourNewKey;
///     ```
///   3. Include the new key and its getter in the [toMap] method of [TranslationProvider]:
///     ```dart
///     Map<String, String> toMap() {
///       return {
///         // ... existing key-value pairs
///         TranslationKey.yourNewKey.name: yourNewKey,
///       };
///     }
///     ```
///   4. Finally, provide the translation for the new key in each language-specific implementation.
abstract class TranslationProvider {
  String get appTitle;
  String get appDescription;
  String get admin;
  String get user;
  String get changeLocale;
  String get darkMode;
  String get lightMode;
  String get fa;
  String get en;
  String get ir;
  String get us;
  String get language;
  String get country;
  String get continueString;
  String get cancel;
  String get skip;
  String get next;
  String get previous;

  /// Transforms the translation keys and their corresponding values into a map.
  Map<String, String> toMap() {
    return {
      TranslationKey.appTitle.name: appTitle,
      TranslationKey.appDescription.name: appDescription,
      TranslationKey.admin.name: admin,
      TranslationKey.user.name: user,
      TranslationKey.changeLocale.name: changeLocale,
      TranslationKey.darkMode.name: darkMode,
      TranslationKey.lightMode.name: lightMode,
      TranslationKey.fa.name: fa,
      TranslationKey.en.name: en,
      TranslationKey.ir.name: ir,
      TranslationKey.us.name: us,
      TranslationKey.language.name: language,
      TranslationKey.country.name: country,
      TranslationKey.continueString.name: continueString,
      TranslationKey.cancel.name: cancel,
      TranslationKey.skip.name: skip,
      TranslationKey.next.name: next,
      TranslationKey.previous.name: previous,
    };
  }
}

/// Enumerates the various translatable strings used within the application.
enum TranslationKey {
  appTitle,
  appDescription,
  admin,
  user,
  changeLocale,
  darkMode,
  lightMode,
  fa,
  en,
  ir,
  us,
  language,
  country,
  continueString,
  cancel,
  skip,
  next,
  previous,
}

/// Extends the [TranslationKey] enum with a helper method for retrieving translations.
extension TranslationKeyExtension on TranslationKey {
  /// Fetches the translated string associated with this enum value.
  String get translate => name.tr;
}
