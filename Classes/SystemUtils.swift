//
//  SystemUtils.swift
//
//
//  Created by Daniele Salvioni on 12/12/2017.
//  Copyright © 2017 Daniele Salvioni. All rights reserved.
//

import Foundation
import SwifterSwift
import GBDeviceInfo

public class SystemUtils
{
//    typealias delayClosure = ()->()
//
//    func delay(_ time:TimeInterval, closure: delayClosure?)
//    {
//        if let closure = closure
//        {
//            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + Double(Int64(time * Double(NSEC_PER_SEC))) / Double(NSEC_PER_SEC), execute: closure)
//        }
//    }
    

// MARK: - Misc
    //--------------------------------------------------------------
    public class func delay(milliseconds: Double, queue: DispatchQueue = .main, completion: @escaping () -> Void)
    {
        SwifterSwift.delay(milliseconds: milliseconds, queue: queue, completion: completion)
    }
    
    //--------------------------------------------------------------
    public class func isPad() -> Bool
    {
        return (UIDevice.current.userInterfaceIdiom == .pad)
    }
    
    
// MARK: - Device Info
    //--------------------------------------------------------------
    public class func preferredLocaleLanguageCode() -> String
    {
        let preferredLanguageCode = Locale.preferredLanguages[0]
        
        return preferredLanguageCode
    }
    
    //--------------------------------------------------------------
    public class func currentDeviceModelString() -> String
    {
        return GBDeviceInfo.deviceInfo().modelString
    }

    
// MARK: - Alert Method
    //--------------------------------------------------------------
    public class func createNSError(title: String = "error.title", message: String) -> NSError
    {
        return NSError(domain:title.localized(), code:0, userInfo:[NSLocalizedDescriptionKey: message])
    }
    
    //--------------------------------------------------------------
    public class func showGenericError(_ error: Error, title: String = "error.title", buttonTitle: String = "error.button", color: UIColor = UIColor.blue, completion: (() -> Void)? = nil)
    {
        let alert = UIAlertController.init(title: title.localized(), error: error, defaultActionButtonTitle: buttonTitle.localized(), preferredStyle: .alert, tintColor: color)
        alert.show(animated: true, vibrate: true, completion: completion)
    }
    
    //--------------------------------------------------------------
    public class func showGenericMessage(_ message: String?, title: String = "info.title", buttonTitle: String = "info.button", color: UIColor = UIColor.blue, completion: (() -> Void)? = nil)
    {
        let alert = UIAlertController.init(title: title.localized(), message: message, defaultActionButtonTitle: buttonTitle.localized(), tintColor: color)
        alert.show(animated: true, vibrate: true, completion: completion)
    }

    
// MARK: - App Info
    //--------------------------------------------------------------
    public class func getAppVersion() -> String
    {
        return Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? ""
    }
    
    //--------------------------------------------------------------
    public class func getAppBuildVersion() -> String
    {
        return (Bundle.main.object(forInfoDictionaryKey: (kCFBundleVersionKey as String?) ?? "")) as? String ?? ""
    }
    
    //--------------------------------------------------------------
    public class func getAppBundleName() -> String
    {
        return Bundle.main.infoDictionary?["CFBundleName"] as? String ?? ""
    }
    
    //--------------------------------------------------------------
    public class func getAppDisplayName() -> String
    {
        return Bundle.main.infoDictionary?["CFBundleDisplayName"] as? String ?? ""
    }
    
    //--------------------------------------------------------------
    public class func getAppExecutableName() -> String
    {
        return Bundle.main.infoDictionary?["CFBundleExecutable"] as? String ?? ""
    }
    
    //--------------------------------------------------------------
    public class func getAppProcessName() -> String
    {
        return ProcessInfo.processInfo.processName
    }
    
    //--------------------------------------------------------------
    public class func getAppFileName() -> String
    {
        let bundlePath: String = Bundle.main.bundlePath
        return FileManager.default.displayName(atPath: bundlePath)
    }
    
    //--------------------------------------------------------------
    public class func getAppBundleIdentifier() -> String
    {
        return Bundle.main.infoDictionary?["CFBundleIdentifier"] as? String ?? ""
    }
    
    //--------------------------------------------------------------
    public class func getAppBundlePrefix() -> String
    {
        let bundleIdentifier: String = self.getAppBundleIdentifier()
        let bundleName: String = self.getAppBundleName()
        let bundlePrefixWithFinalPoint: String = bundleIdentifier.replacingOccurrences(of: bundleName, with: "")
        var bundlePrefix: String? = nil
        if (((bundlePrefixWithFinalPoint as NSString).substring(from: ((bundlePrefixWithFinalPoint.count ) - 1))) == ".")
        {
            bundlePrefix = (bundlePrefixWithFinalPoint as NSString).substring(to: ((bundlePrefixWithFinalPoint.count) - 1))
        }
        else {
            bundlePrefix = bundlePrefixWithFinalPoint
        }
        return bundlePrefix ?? ""
    }
}
