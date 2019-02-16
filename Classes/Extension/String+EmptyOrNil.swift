//
//  String+EmptyOrNil.swift
//
//
//  Created by Daniele Salvioni on 12/12/2017.
//  Copyright © 2017 Daniele Salvioni. All rights reserved.
//

import Foundation

extension Optional where Wrapped == String
{
    public var isEmptyOrNil: Bool
    {
        get
        {
            guard let myString = self, !myString.isEmpty else
            {
                return true
            }
            
            return false
        }
    }
}


extension String
{
    public var isEmptyOrNil: Bool
    {
        get
        {
            return self.isEmpty
        }
    }
}
