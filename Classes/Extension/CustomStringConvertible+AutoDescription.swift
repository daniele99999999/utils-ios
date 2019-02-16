//
//  CustomStringConvertible+AutoDescription.swift
//
//
//  Created by Daniele Salvioni on 12/12/2017.
//  Copyright © 2017 Daniele Salvioni. All rights reserved.
//

import Foundation

extension CustomStringConvertible
{
    public var description : String
    {
        var description = "***** \(type(of: self)) *****\n"
        
        let selfMirror = Mirror(reflecting: self)
        for child in selfMirror.children
        {
            if let propertyName = child.label
            {
                description += "\(propertyName): \(child.value)\n"
            }
        }
        
        description += "***** \(type(of: self)) *****\n"
        
        return description
    }
}
