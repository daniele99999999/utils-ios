//
//  UIView+UINib.swift
//
//
//  Created by Daniele Salvioni on 12/12/2017.
//  Copyright © 2017 Daniele Salvioni. All rights reserved.
//

import Foundation
import UIKit

public extension UINavigationController
{
    override open var shouldAutorotate: Bool
    {
        return self.topViewController?.shouldAutorotate ?? true
    }
    
    override open var supportedInterfaceOrientations: UIInterfaceOrientationMask
    {

        return self.topViewController?.supportedInterfaceOrientations ?? UIInterfaceOrientationMask.all
    }
}
