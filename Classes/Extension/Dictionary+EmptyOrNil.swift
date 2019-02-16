//
//  String+EmptyOrNil.swift
//
//
//  Created by Daniele Salvioni on 12/12/2017.
//  Copyright © 2017 Daniele Salvioni. All rights reserved.
//

import Foundation

extension Optional where Wrapped == Dictionary<AnyHashable, Any>
{
    public var isEmptyOrNil: Bool
    {
        get
        {
            guard let myDictionary = self, !myDictionary.isEmpty else
            {
                return true
            }
            
            return false
        }
    }
}


extension Dictionary
{
    public var isEmptyOrNil: Bool
    {
        get
        {
            return self.isEmpty
        }
    }
}
