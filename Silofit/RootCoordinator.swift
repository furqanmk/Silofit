//
//  RootCoordinator.swift
//  Silofit
//
//  Created by Furqan Khan on 2/4/20.
//  Copyright © 2020 Silofit. All rights reserved.
//

import UIKit

final class RootCoordinator {
    private var loggedIn: Bool {
        false
    }

    /// <#Description#>
    func start() -> UIViewController {
        if loggedIn {
            return homeModule()
        } else {
            return onboardingModule()
        }
    }
    
    private func onboardingModule() -> UIViewController {
        return OnboardingBuilder.build()
    }
    
    private func homeModule() -> UIViewController {
        return HomeBuilder.build()
    }
}
