//
//  ContentView.swift
//  Addly
//
//  Created by Ben Boral on 7/26/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var operand1 = NumbersOnly()
    @ObservedObject var operand2 = NumbersOnly()
    var result: String {
        get {
            guard let o1 = Int(operand1.value), let o2 = Int(operand2.value) else {
                return "0"
            }
            let sum = o1 + o2
            let asStr = String(sum)
            return asStr
        }
    }
    
    var body: some View {
        Color.init(red: (249/256), green: (242/256), blue: (214/256)).ignoresSafeArea().overlay(
            VStack {
                Text("☞ add.ly")
                    .font(Font.custom("Menlo-Bold", size: 32))
                Spacer()
                TextField("Operand 1", text: $operand1.value).keyboardType(.decimalPad).font(Font.custom("Menlo", size: 18))
                Text("➕").font(Font.custom("Menlo-Bold", size: 23)).padding()
                TextField("Operand 2", text: $operand2.value).keyboardType(.decimalPad).font(Font.custom("Menlo", size: 18))
                
                Text("=").font(Font.custom("Menlo-Bold", size: 23)).padding()
                Text(result).font(Font.custom("Menlo-Bold", size: 23))
            }
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
