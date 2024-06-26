// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return prefer_self_in_static_references

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
public enum L10n {
  public enum All {
    public enum Contact {
      /// Delete
      public static let delete = L10n.tr("Localizable", "all.contact.delete", fallback: "Delete")
      /// Deselect
      public static let deselect = L10n.tr("Localizable", "all.contact.deselect", fallback: "Deselect")
      /// Select
      public static let select = L10n.tr("Localizable", "all.contact.select", fallback: "Select")
      /// All Contact
      public static let title = L10n.tr("Localizable", "all.contact.title", fallback: "All Contact")
      public enum Confirm {
        public enum Delete {
          /// Delete the selected contacts
          public static let message = L10n.tr("Localizable", "all.contact.confirm.delete.message", fallback: "Delete the selected contacts")
          /// Are you sure?
          public static let title = L10n.tr("Localizable", "all.contact.confirm.delete.title", fallback: "Are you sure?")
        }
      }
    }
  }
  public enum Clean {
    public enum Up {
      public enum Guide {
        /// Cleaning Guide
        public static let title = L10n.tr("Localizable", "clean.up.guide.title", fallback: "Cleaning Guide")
      }
    }
  }
  public enum Contacts {
    /// Contacts
    public static let title = L10n.tr("Localizable", "contacts.title", fallback: "Contacts")
    public enum All {
      /// All Contact
      public static let contact = L10n.tr("Localizable", "contacts.all.contact", fallback: "All Contact")
    }
    public enum Duplicate {
      /// Duplicate Emails
      public static let emails = L10n.tr("Localizable", "contacts.duplicate.emails", fallback: "Duplicate Emails")
      /// Duplicate Names
      public static let names = L10n.tr("Localizable", "contacts.duplicate.names", fallback: "Duplicate Names")
      /// Duplicate Numbers
      public static let numbers = L10n.tr("Localizable", "contacts.duplicate.numbers", fallback: "Duplicate Numbers")
    }
    public enum Incomplete {
      /// Incomplete Names
      public static let names = L10n.tr("Localizable", "contacts.incomplete.names", fallback: "Incomplete Names")
      /// Incomplete Numbers
      public static let numbers = L10n.tr("Localizable", "contacts.incomplete.numbers", fallback: "Incomplete Numbers")
    }
  }
  public enum Duplicate {
    public enum Deselect {
      public enum All {
        /// Deselect All
        public static let button = L10n.tr("Localizable", "duplicate.deselect.all.button", fallback: "Deselect All")
      }
    }
    public enum Emails {
      /// Duplicate Emails
      public static let title = L10n.tr("Localizable", "duplicate.emails.title", fallback: "Duplicate Emails")
      public enum Empty {
        /// You don't have any contacts with the same email
        public static let description = L10n.tr("Localizable", "duplicate.emails.empty.description", fallback: "You don't have any contacts with the same email")
      }
    }
    public enum Guide {
      public enum Select {
        public enum Contact {
          /// Select Contacts To Merge
          public static let title = L10n.tr("Localizable", "duplicate.guide.select.contact.title", fallback: "Select Contacts To Merge")
        }
      }
    }
    public enum Merge {
      /// Merge
      public static let button = L10n.tr("Localizable", "duplicate.merge.button", fallback: "Merge")
      /// Merged Contacts
      public static let heading = L10n.tr("Localizable", "duplicate.merge.heading", fallback: "Merged Contacts")
    }
    public enum Name {
      public enum Empty {
        /// You don't have any contacts with the same name
        public static let description = L10n.tr("Localizable", "duplicate.name.empty.description", fallback: "You don't have any contacts with the same name")
      }
    }
    public enum Names {
      /// Duplicate Names
      public static let title = L10n.tr("Localizable", "duplicate.names.title", fallback: "Duplicate Names")
    }
    public enum Numbers {
      /// Duplicate Numbers
      public static let title = L10n.tr("Localizable", "duplicate.numbers.title", fallback: "Duplicate Numbers")
      public enum Empty {
        /// You don't have any contacts with the same number
        public static let description = L10n.tr("Localizable", "duplicate.numbers.empty.description", fallback: "You don't have any contacts with the same number")
      }
    }
    public enum Select {
      public enum All {
        /// Select All
        public static let button = L10n.tr("Localizable", "duplicate.select.all.button", fallback: "Select All")
      }
    }
  }
  public enum Gallery {
    /// Media to Clean
    public static let title = L10n.tr("Localizable", "gallery.title", fallback: "Media to Clean")
  }
  public enum Home {
    /// Contacts
    public static let contacts = L10n.tr("Localizable", "home.contacts", fallback: "Contacts")
    /// Premium
    public static let premium = L10n.tr("Localizable", "home.premium", fallback: "Premium")
    /// Smart Cleaner
    public static let title = L10n.tr("Localizable", "home.title", fallback: "Smart Cleaner")
    public enum Cleaning {
      /// How to clean up your iphone manually
      public static let description = L10n.tr("Localizable", "home.cleaning.description", fallback: "How to clean up your iphone manually")
      /// Clean Guide
      public static let guide = L10n.tr("Localizable", "home.cleaning.guide", fallback: "Clean Guide")
    }
    public enum No {
      public enum Contacts {
        /// No contacts permission
        public static let permision = L10n.tr("Localizable", "home.no.contacts.permision", fallback: "No contacts permission")
      }
      public enum Gallery {
        /// No gallery permission
        public static let permision = L10n.tr("Localizable", "home.no.gallery.permision", fallback: "No gallery permission")
      }
    }
    public enum Photo {
      public enum And {
        /// Photo & Video
        public static let video = L10n.tr("Localizable", "home.photo.and.video", fallback: "Photo & Video")
      }
    }
  }
  public enum Iap {
    public enum No {
      public enum Product {
        public enum Available {
          /// No Products Available
          public static let error = L10n.tr("Localizable", "iap.no.product.available.error", fallback: "No Products Available")
        }
      }
      public enum Subscription {
        public enum Purchased {
          /// No Subscription Purchased
          public static let error = L10n.tr("Localizable", "iap.no.subscription.purchased.error", fallback: "No Subscription Purchased")
        }
      }
    }
    public enum Unknown {
      /// Process Error
      public static let error = L10n.tr("Localizable", "iap.unknown.error", fallback: "Process Error")
    }
  }
  public enum Incomplete {
    public enum Names {
      /// You don't have a contact that hasn't completed the name
      public static let description = L10n.tr("Localizable", "incomplete.names.description", fallback: "You don't have a contact that hasn't completed the name")
      /// Incomplete Names
      public static let title = L10n.tr("Localizable", "incomplete.names.title", fallback: "Incomplete Names")
    }
    public enum Numbers {
      /// You don't have a contact that hasn't completed the number
      public static let description = L10n.tr("Localizable", "incomplete.numbers.description", fallback: "You don't have a contact that hasn't completed the number")
      /// Incomplete Numbers
      public static let title = L10n.tr("Localizable", "incomplete.numbers.title", fallback: "Incomplete Numbers")
    }
  }
  public enum Premium {
    /// Privacy
    public static let privacy = L10n.tr("Localizable", "premium.privacy", fallback: "Privacy")
    /// Restore
    public static let restore = L10n.tr("Localizable", "premium.restore", fallback: "Restore")
    /// Term
    public static let term = L10n.tr("Localizable", "premium.term", fallback: "Term")
    /// Smart Cleaner Premium
    public static let title = L10n.tr("Localizable", "premium.title", fallback: "Smart Cleaner Premium")
    public enum Add {
      /// No adds
      public static let benefit = L10n.tr("Localizable", "premium.add.benefit", fallback: "No adds")
    }
    public enum Album {
      /// Cleanup photo albums
      public static let benefit = L10n.tr("Localizable", "premium.album.benefit", fallback: "Cleanup photo albums")
    }
    public enum Contacts {
      /// Clean up contacts
      public static let benefit = L10n.tr("Localizable", "premium.contacts.benefit", fallback: "Clean up contacts")
    }
    public enum Continue {
      /// Continue
      public static let button = L10n.tr("Localizable", "premium.continue.button", fallback: "Continue")
    }
    public enum Family {
      /// Family sharing
      public static let benefit = L10n.tr("Localizable", "premium.family.benefit", fallback: "Family sharing")
    }
    public enum Month {
      /// One month subscription
      public static let description = L10n.tr("Localizable", "premium.month.description", fallback: "One month subscription")
      public enum Time {
        /// month
        public static let unit = L10n.tr("Localizable", "premium.month.time.unit", fallback: "month")
      }
    }
    public enum Monthly {
      /// Monthly
      public static let name = L10n.tr("Localizable", "premium.monthly.name", fallback: "Monthly")
    }
    public enum Week {
      /// One week subscription
      public static let description = L10n.tr("Localizable", "premium.week.description", fallback: "One week subscription")
      public enum Time {
        /// week
        public static let unit = L10n.tr("Localizable", "premium.week.time.unit", fallback: "week")
      }
    }
    public enum Weekly {
      /// Weekly
      public static let name = L10n.tr("Localizable", "premium.weekly.name", fallback: "Weekly")
    }
    public enum Year {
      /// One year subscription
      public static let description = L10n.tr("Localizable", "premium.year.description", fallback: "One year subscription")
      public enum Time {
        /// year
        public static let unit = L10n.tr("Localizable", "premium.year.time.unit", fallback: "year")
      }
    }
    public enum Yearly {
      /// Yearly
      public static let name = L10n.tr("Localizable", "premium.yearly.name", fallback: "Yearly")
    }
  }
  public enum Quick {
    public enum Clean {
      /// Quick Clean
      public static let title = L10n.tr("Localizable", "quick.clean.title", fallback: "Quick Clean")
    }
  }
  public enum Settings {
    /// Settings
    public static let title = L10n.tr("Localizable", "settings.title", fallback: "Settings")
    public enum Contact {
      /// Contact us
      public static let title = L10n.tr("Localizable", "settings.contact.title", fallback: "Contact us")
    }
    public enum Daily {
      public enum To {
        public enum Do {
          /// Daily To Do
          public static let title = L10n.tr("Localizable", "settings.daily.to.do.title", fallback: "Daily To Do")
        }
      }
    }
    public enum Guide {
      /// SUPPORT
      public static let section = L10n.tr("Localizable", "settings.guide.section", fallback: "SUPPORT")
    }
    public enum More {
      public enum App {
        /// MORE APPS
        public static let section = L10n.tr("Localizable", "settings.more.app.section", fallback: "MORE APPS")
      }
    }
    public enum Privacy {
      /// Privacy policy
      public static let titte = L10n.tr("Localizable", "settings.privacy.titte", fallback: "Privacy policy")
    }
    public enum Review {
      /// Give us a review
      public static let title = L10n.tr("Localizable", "settings.review.title", fallback: "Give us a review")
    }
    public enum Scanner {
      /// Smart Scanner
      public static let title = L10n.tr("Localizable", "settings.scanner.title", fallback: "Smart Scanner")
    }
    public enum Share {
      /// Share
      public static let title = L10n.tr("Localizable", "settings.share.title", fallback: "Share")
    }
    public enum Term {
      /// Term of use
      public static let title = L10n.tr("Localizable", "settings.term.title", fallback: "Term of use")
    }
  }
  public enum Text {
    /// Cancel
    public static let cancel = L10n.tr("Localizable", "text.cancel", fallback: "Cancel")
    /// Done
    public static let done = L10n.tr("Localizable", "text.done", fallback: "Done")
    /// Error
    public static let error = L10n.tr("Localizable", "text.error", fallback: "Error")
    /// OK
    public static let oke = L10n.tr("Localizable", "text.oke", fallback: "OK")
    public enum Feature {
      public enum Coming {
        public enum Soon {
          /// This feature is in development and will be released in the next version
          public static let description = L10n.tr("Localizable", "text.feature.coming.soon.description", fallback: "This feature is in development and will be released in the next version")
          /// Coming Soon !!!
          public static let title = L10n.tr("Localizable", "text.feature.coming.soon.title", fallback: "Coming Soon !!!")
        }
      }
    }
  }
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name vertical_whitespace_opening_braces

// MARK: - Implementation Details

extension L10n {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg..., fallback value: String) -> String {
    let format = BundleToken.bundle.localizedString(forKey: key, value: value, table: table)
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

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
