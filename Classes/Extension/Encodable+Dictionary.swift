//
//  Encodable+Dictionary.swift
//
//
//  Created by Daniele Salvioni on 12/12/2017.
//  Copyright © 2017 Daniele Salvioni. All rights reserved.
//

import Foundation

extension Encodable
{
    func asDictionary() -> [String: Any]
    {
        guard let data = try? JSONEncoder().encode(self) else
        {
            return [:]
        }
        
        guard let dictionary = try? JSONSerialization.jsonObject(with: data, options: .allowFragments) else
        {
            return [:]
        }
        
        guard let dictionaryCasted = dictionary as? [String: Any] else
        {
            return [:]
        }
        
        return dictionaryCasted
    }
}
