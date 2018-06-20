//
//  AppDelegate.swift
//  Page
//
//  Created by Iwan Teplyakov on 6/20/18.
//  Copyright © 2018 Iwan Teplyakov. All rights reserved.
//

import UIKit

@UIApplicationMain class ApplicationCoordinator: UIResponder {

    var window: UIWindow?

}


extension ApplicationCoordinator: UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        guard case let pageViewController as UIPageViewController = window?.rootViewController else {
            preconditionFailure("Initial view controller not UIPageViewController")
        }
        pageViewController.dataSource = self
        pageViewController.delegate = self
        pageViewController.storyboard.map {
            pageViewController.setViewControllers(
                [
                    $0.instantiateViewController(withIdentifier: "VC")
                ],
                direction: .forward,
                animated: false
            )
        }
        return true
    }
    
}

extension ApplicationCoordinator: UIPageViewControllerDelegate {
    
}

extension ApplicationCoordinator: UIPageViewControllerDataSource {
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        return nil
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        return pageViewController.storyboard?.instantiateViewController(withIdentifier: "VC")
    }
    
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return 10
    }
    
    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        return Int.random(in: 0...10)
    }
}
