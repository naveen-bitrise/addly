//
//  AddlyApp.swift
//  Addly
//
//  Created by Ben Boral on 7/26/21.
//

import SwiftUI

@main
struct AddlyApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(adder: Adder(intervalMaker: RandomIntervalMaker()))
        }
    }
}
