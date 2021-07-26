//
//  NumbersOnly.swift
//  Addly
//
//  Created by Ben Boral on 7/26/21.
//

import Foundation

class NumbersOnly: ObservableObject {
    @Published var value = "" {
        didSet {
            let filtered = value.filter { $0.isNumber }
            
            if value != filtered {
                value = filtered
            }
        }
    }
}
