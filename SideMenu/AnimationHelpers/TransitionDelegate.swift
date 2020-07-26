//
//  TransitionDelegate.swift
//  SideMenu
//
//  Created by Mostafa Samir on 7/26/20.
//  Copyright © 2020 Mostafa Samir. All rights reserved.
//

import Foundation
import UIKit
class TransitionDelegate:NSObject, UIViewControllerTransitioningDelegate{
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
            return FadePushAnimator()
    }

    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
            return FadePopAnimator()
    }
}
