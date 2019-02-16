//
//  String+EmptyOrNil.swift
//
//
//  Created by Daniele Salvioni on 12/12/2017.
//  Copyright © 2017 Daniele Salvioni. All rights reserved.
//

import Foundation

extension Optional where Wrapped == Array<Any>
{
    public var isEmptyOrNil: Bool
    {
        get
        {
            guard let myArray = self, !myArray.isEmpty else
            {
                return true
            }
            
            return false
        }
    }
}


extension Array
{
    public var isEmptyOrNil: Bool
    {
        get
        {
            return self.isEmpty
        }
    }
}
