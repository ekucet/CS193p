//
//  Array+Only.swift
//  Memorize
//
//  Created by Erkam Kucet on 20.08.2020.
//  Copyright © 2020 Erkam Kucet. All rights reserved.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
