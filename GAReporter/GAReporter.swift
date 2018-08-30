//
//  GAReporter.swift
//  GAReporter
//
//  Copyright © 2018年 dengli. All rights reserved.
//

open class GAReporter {
    
    open class func configure(_ trackID: String, verbose: Bool) {
        guard let gai = GAI.sharedInstance() else {
            assert(false, "Google Analytics not configured correctly")
        }
        gai.defaultTracker = gai.tracker(withTrackingId: trackID)
        // Optional: automatically report uncaught exceptions.
        gai.trackUncaughtExceptions = true
        gai.dispatchInterval = 20
        if verbose {
            gai.logger.logLevel = .verbose
        }
    }
    
    open class func sendScreenView(_ screen: String) {
        let tracker = GAI.sharedInstance().defaultTracker
        tracker?.set(kGAIScreenName, value: screen)
        if let screenDict = GAIDictionaryBuilder.createScreenView().build() as? [AnyHashable: Any] {
            tracker?.send(screenDict)
        }
    }
    
    open class func sendEvent(category: String, action: String, label: String, value: NSNumber?) {
        let tracker = GAI.sharedInstance().defaultTracker
        if let eventDict = GAIDictionaryBuilder.createEvent(withCategory: category, action: action, label: label, value: value).build() as? [AnyHashable: Any] {
            tracker?.send(eventDict)
        }
    }
}
