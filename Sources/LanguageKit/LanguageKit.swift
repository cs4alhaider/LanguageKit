// The Swift Programming Language
// https://docs.swift.org/swift-book
//
//  Language.swift
//  LanguageKit
//
//  Created by Abdullah Alhaider on 21/02/2023.
//

import Foundation

public enum Language {
  case LTR
  case RTL
  
  /// Get the current language code in lowercase format.
  ///
  /// Returns: The current language code lowercased.
  public static var code: String {
    (Locale
      .current
      .language
      .languageCode?
      .identifier ?? preferredLocalizations.first)?.lowercased() ?? "en"
  }
  
  /// Get the preferred localizations for the current app
  ///
  /// - Note: This is the list of languages that the app supports, for example: ["en", "ar", "fr", "es"]
  ///  and it's used to determine the language of the app by ordering the languages by the user's preference.
  ///
  /// Returns: The list of languages that the app supports.
  public static var preferredLocalizations: [String] {
    Bundle.main.preferredLocalizations
  }

  /// Get the current language direction
  ///
  /// Returns: The current language direction, e.
  public static var currentDirection: Language {
    Locale
      .Language(
        identifier: code
      ).characterDirection == .rightToLeft ? .RTL : .LTR
  }
  
  /// Check if the current language is RTL
  public static var isRTL: Bool {
    Locale.Language(identifier: code).characterDirection == .rightToLeft
  }

  /// Check if the current language is LTR  
  public static var isLTR: Bool {
    Locale.Language(identifier: code).characterDirection == .leftToRight
  }
}
