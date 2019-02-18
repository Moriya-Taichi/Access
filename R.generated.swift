//
// This is a generated file, do not edit!
// Generated by R.swift, see https://github.com/mac-cain13/R.swift
//

import Foundation
import Rswift
import UIKit

/// This `R` struct is generated and contains references to static resources.
struct R: Rswift.Validatable {
  fileprivate static let applicationLocale = hostingBundle.preferredLocalizations.first.flatMap(Locale.init) ?? Locale.current
  fileprivate static let hostingBundle = Bundle(for: R.Class.self)
  
  static func validate() throws {
    try intern.validate()
  }
  
  /// This `R.image` struct is generated, and contains static references to 5 images.
  struct image {
    /// Image `home`.
    static let home = Rswift.ImageResource(bundle: R.hostingBundle, name: "home")
    /// Image `launchLogo`.
    static let launchLogo = Rswift.ImageResource(bundle: R.hostingBundle, name: "launchLogo")
    /// Image `testUserIcon`.
    static let testUserIcon = Rswift.ImageResource(bundle: R.hostingBundle, name: "testUserIcon")
    /// Image `topics`.
    static let topics = Rswift.ImageResource(bundle: R.hostingBundle, name: "topics")
    /// Image `twitter`.
    static let twitter = Rswift.ImageResource(bundle: R.hostingBundle, name: "twitter")
    
    /// `UIImage(named: "home", bundle: ..., traitCollection: ...)`
    static func home(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.home, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "launchLogo", bundle: ..., traitCollection: ...)`
    static func launchLogo(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.launchLogo, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "testUserIcon", bundle: ..., traitCollection: ...)`
    static func testUserIcon(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.testUserIcon, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "topics", bundle: ..., traitCollection: ...)`
    static func topics(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.topics, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "twitter", bundle: ..., traitCollection: ...)`
    static func twitter(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.twitter, compatibleWith: traitCollection)
    }
    
    fileprivate init() {}
  }
  
  /// This `R.nib` struct is generated, and contains static references to 2 nibs.
  struct nib {
    /// Nib `LaunchScreen`.
    static let launchScreen = _R.nib._LaunchScreen()
    /// Nib `TimeLineViewControllerCell`.
    static let timeLineViewControllerCell = _R.nib._TimeLineViewControllerCell()
    
    /// `UINib(name: "LaunchScreen", in: bundle)`
    @available(*, deprecated, message: "Use UINib(resource: R.nib.launchScreen) instead")
    static func launchScreen(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.launchScreen)
    }
    
    /// `UINib(name: "TimeLineViewControllerCell", in: bundle)`
    @available(*, deprecated, message: "Use UINib(resource: R.nib.timeLineViewControllerCell) instead")
    static func timeLineViewControllerCell(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.timeLineViewControllerCell)
    }
    
    static func launchScreen(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> UIKit.UIView? {
      return R.nib.launchScreen.instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? UIKit.UIView
    }
    
    static func timeLineViewControllerCell(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> TimeLineViewControllerCell? {
      return R.nib.timeLineViewControllerCell.instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? TimeLineViewControllerCell
    }
    
    fileprivate init() {}
  }
  
  /// This `R.storyboard` struct is generated, and contains static references to 7 storyboards.
  struct storyboard {
    /// Storyboard `DirectMailViewController`.
    static let directMailViewController = _R.storyboard.directMailViewController()
    /// Storyboard `LaunchScreenViewController`.
    static let launchScreenViewController = _R.storyboard.launchScreenViewController()
    /// Storyboard `Main`.
    static let main = _R.storyboard.main()
    /// Storyboard `SearchViewController`.
    static let searchViewController = _R.storyboard.searchViewController()
    /// Storyboard `TimeLineViewController`.
    static let timeLineViewController = _R.storyboard.timeLineViewController()
    /// Storyboard `TopicsDetailViewController`.
    static let topicsDetailViewController = _R.storyboard.topicsDetailViewController()
    /// Storyboard `TopicsViewController`.
    static let topicsViewController = _R.storyboard.topicsViewController()
    
    /// `UIStoryboard(name: "DirectMailViewController", bundle: ...)`
    static func directMailViewController(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.directMailViewController)
    }
    
    /// `UIStoryboard(name: "LaunchScreenViewController", bundle: ...)`
    static func launchScreenViewController(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.launchScreenViewController)
    }
    
    /// `UIStoryboard(name: "Main", bundle: ...)`
    static func main(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.main)
    }
    
    /// `UIStoryboard(name: "SearchViewController", bundle: ...)`
    static func searchViewController(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.searchViewController)
    }
    
    /// `UIStoryboard(name: "TimeLineViewController", bundle: ...)`
    static func timeLineViewController(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.timeLineViewController)
    }
    
    /// `UIStoryboard(name: "TopicsDetailViewController", bundle: ...)`
    static func topicsDetailViewController(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.topicsDetailViewController)
    }
    
    /// `UIStoryboard(name: "TopicsViewController", bundle: ...)`
    static func topicsViewController(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.topicsViewController)
    }
    
    fileprivate init() {}
  }
  
  fileprivate struct intern: Rswift.Validatable {
    fileprivate static func validate() throws {
      try _R.validate()
    }
    
    fileprivate init() {}
  }
  
  fileprivate class Class {}
  
  fileprivate init() {}
}

struct _R: Rswift.Validatable {
  static func validate() throws {
    try storyboard.validate()
    try nib.validate()
  }
  
  struct nib: Rswift.Validatable {
    static func validate() throws {
      try _LaunchScreen.validate()
    }
    
    struct _LaunchScreen: Rswift.NibResourceType, Rswift.Validatable {
      let bundle = R.hostingBundle
      let name = "LaunchScreen"
      
      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> UIKit.UIView? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? UIKit.UIView
      }
      
      static func validate() throws {
        if UIKit.UIImage(named: "twitter.png", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'twitter.png' is used in nib 'LaunchScreen', but couldn't be loaded.") }
        if #available(iOS 11.0, *) {
        }
      }
      
      fileprivate init() {}
    }
    
    struct _TimeLineViewControllerCell: Rswift.NibResourceType {
      let bundle = R.hostingBundle
      let name = "TimeLineViewControllerCell"
      
      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> TimeLineViewControllerCell? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? TimeLineViewControllerCell
      }
      
      fileprivate init() {}
    }
    
    fileprivate init() {}
  }
  
  struct storyboard: Rswift.Validatable {
    static func validate() throws {
      try directMailViewController.validate()
      try launchScreenViewController.validate()
      try main.validate()
      try searchViewController.validate()
      try timeLineViewController.validate()
      try topicsDetailViewController.validate()
      try topicsViewController.validate()
    }
    
    struct directMailViewController: Rswift.StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = DirectMailViewController
      
      let bundle = R.hostingBundle
      let name = "DirectMailViewController"
      
      static func validate() throws {
        if #available(iOS 11.0, *) {
        }
      }
      
      fileprivate init() {}
    }
    
    struct launchScreenViewController: Rswift.StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = LaunchScreenViewController
      
      let bundle = R.hostingBundle
      let name = "LaunchScreenViewController"
      
      static func validate() throws {
        if #available(iOS 11.0, *) {
        }
      }
      
      fileprivate init() {}
    }
    
    struct main: Rswift.StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = ViewController
      
      let bundle = R.hostingBundle
      let name = "Main"
      
      static func validate() throws {
        if #available(iOS 11.0, *) {
        }
      }
      
      fileprivate init() {}
    }
    
    struct searchViewController: Rswift.StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = SearchViewController
      
      let bundle = R.hostingBundle
      let name = "SearchViewController"
      
      static func validate() throws {
        if #available(iOS 11.0, *) {
        }
      }
      
      fileprivate init() {}
    }
    
    struct timeLineViewController: Rswift.StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = TimeLineViewController
      
      let bundle = R.hostingBundle
      let name = "TimeLineViewController"
      
      static func validate() throws {
        if #available(iOS 11.0, *) {
        }
      }
      
      fileprivate init() {}
    }
    
    struct topicsDetailViewController: Rswift.StoryboardResourceType, Rswift.Validatable {
      let bundle = R.hostingBundle
      let name = "TopicsDetailViewController"
      
      static func validate() throws {
        if #available(iOS 11.0, *) {
        }
      }
      
      fileprivate init() {}
    }
    
    struct topicsViewController: Rswift.StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = TopicsViewController
      
      let bundle = R.hostingBundle
      let name = "TopicsViewController"
      
      static func validate() throws {
        if #available(iOS 11.0, *) {
        }
      }
      
      fileprivate init() {}
    }
    
    fileprivate init() {}
  }
  
  fileprivate init() {}
}
