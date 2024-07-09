// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

#if os(macOS)
  import AppKit
#elseif os(iOS)
  import UIKit
#elseif os(tvOS) || os(watchOS)
  import UIKit
#endif
#if canImport(SwiftUI)
  import SwiftUI
#endif

// Deprecated typealiases
@available(*, deprecated, renamed: "ImageAsset.Image", message: "This typealias will be removed in SwiftGen 7.0")
public typealias AssetImageTypeAlias = ImageAsset.Image

// swiftlint:disable superfluous_disable_command file_length implicit_return

// MARK: - Asset Catalogs

// swiftlint:disable identifier_name line_length nesting type_body_length type_name
public enum Asset {
  public static let icBroom = ImageAsset(name: "ic_broom")
  public static let icBroom2 = ImageAsset(name: "ic_broom_2")
  public static let icBroom3 = ImageAsset(name: "ic_broom_3")
  public static let icBroom4 = ImageAsset(name: "ic_broom_4")
  public static let icClose = ImageAsset(name: "ic_close")
  public static let icCoding = ImageAsset(name: "ic_coding")
  public static let icContacts = ImageAsset(name: "ic_contacts")
  public static let icContacts2 = ImageAsset(name: "ic_contacts_2")
  public static let icCrown = ImageAsset(name: "ic_crown")
  public static let icDailyNote32 = ImageAsset(name: "ic_daily_note_32")
  public static let icGallery1 = ImageAsset(name: "ic_gallery_1")
  public static let icGallery2 = ImageAsset(name: "ic_gallery_2")
  public static let icGear1 = ImageAsset(name: "ic_gear_1")
  public static let icGear2 = ImageAsset(name: "ic_gear_2")
  public static let icInfo = ImageAsset(name: "ic_info")
  public static let icMail = ImageAsset(name: "ic_mail")
  public static let icPersonBlock = ImageAsset(name: "ic_person_block")
  public static let icPhoneBlock = ImageAsset(name: "ic_phone_block")
  public static let icPhoneMessage = ImageAsset(name: "ic_phone_message")
  public static let icPhonePlus = ImageAsset(name: "ic_phone_plus")
  public static let icPrivacy = ImageAsset(name: "ic_privacy")
  public static let icScannerApp32 = ImageAsset(name: "ic_scanner_app_32")
  public static let icShare = ImageAsset(name: "ic_share")
  public static let icStar = ImageAsset(name: "ic_star")
  public static let icTerm = ImageAsset(name: "ic_term")
}
// swiftlint:enable identifier_name line_length nesting type_body_length type_name

// MARK: - Implementation Details

public struct ImageAsset {
  public fileprivate(set) var name: String

  #if os(macOS)
  public typealias Image = NSImage
  #elseif os(iOS) || os(tvOS) || os(watchOS)
  public typealias Image = UIImage
  #endif

  @available(iOS 8.0, tvOS 9.0, watchOS 2.0, macOS 10.7, *)
  public var image: Image {
    let bundle = BundleToken.bundle
    #if os(iOS) || os(tvOS)
    let image = Image(named: name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    let name = NSImage.Name(self.name)
    let image = (bundle == .main) ? NSImage(named: name) : bundle.image(forResource: name)
    #elseif os(watchOS)
    let image = Image(named: name)
    #endif
    guard let result = image else {
      fatalError("Unable to load image asset named \(name).")
    }
    return result
  }

  #if os(iOS) || os(tvOS)
  @available(iOS 8.0, tvOS 9.0, *)
  public func image(compatibleWith traitCollection: UITraitCollection) -> Image {
    let bundle = BundleToken.bundle
    guard let result = Image(named: name, in: bundle, compatibleWith: traitCollection) else {
      fatalError("Unable to load image asset named \(name).")
    }
    return result
  }
  #endif

  #if canImport(SwiftUI)
  @available(iOS 13.0, tvOS 13.0, watchOS 6.0, macOS 10.15, *)
  public var swiftUIImage: SwiftUI.Image {
    SwiftUI.Image(asset: self)
  }
  #endif
}

public extension ImageAsset.Image {
  @available(iOS 8.0, tvOS 9.0, watchOS 2.0, *)
  @available(macOS, deprecated,
    message: "This initializer is unsafe on macOS, please use the ImageAsset.image property")
  convenience init?(asset: ImageAsset) {
    #if os(iOS) || os(tvOS)
    let bundle = BundleToken.bundle
    self.init(named: asset.name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    self.init(named: NSImage.Name(asset.name))
    #elseif os(watchOS)
    self.init(named: asset.name)
    #endif
  }
}

#if canImport(SwiftUI)
@available(iOS 13.0, tvOS 13.0, watchOS 6.0, macOS 10.15, *)
public extension SwiftUI.Image {
  init(asset: ImageAsset) {
    let bundle = BundleToken.bundle
    self.init(asset.name, bundle: bundle)
  }

  init(asset: ImageAsset, label: Text) {
    let bundle = BundleToken.bundle
    self.init(asset.name, bundle: bundle, label: label)
  }

  init(decorative asset: ImageAsset) {
    let bundle = BundleToken.bundle
    self.init(decorative: asset.name, bundle: bundle)
  }
}
#endif

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}
// swiftlint:enable convenience_type
