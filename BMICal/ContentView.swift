//
//  ContentView.swift
//  BMICal
//
//  Created by user231229 on 2/10/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var weightTextField : String = ""
    @State private var heightTextField : String = ""
    @State private var bmi : String = "0.0"
    var body: some View {
        VStack{
             Text("BMI Calculator")
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            Text("Weight")
            
            TextField("Enter  your weight" , text :$weightTextField)
                .border(Color.black)
            
            Text("Height")
            TextField("Enter your  height" , text :$heightTextField)
                .border(Color.black)
            
            Button{
                //ACTION
                guard let weight = Double (weightTextField),let height = Double(heightTextField)else {
                    print("Invalid inputs!")
                    return
                }
                
                //let weight = Double(weightTextField)!
                //let height = Double(heightTextField)!
                
                let bmi = weight / ( height * height)///pow(height,2)
                self.bmi = String(bmi)
                
            }label: {
                //LABEL
                Text("Calculate BMI")
                    .font(.headline)
                    .foregroundColor(Color.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(22)
            }
        Text("BMI: \(bmi)")
                
    
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
