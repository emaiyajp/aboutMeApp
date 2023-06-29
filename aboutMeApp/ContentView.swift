//
//  ContentView.swift
//  aboutMeApp
//
//  Created by Scholar on 6/23/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var factText = "I am a recent graduate from Capital High School, and will soon be attending BSU. I plan on majoring in Biology and minoring in Accountancy. I love animals, and am currently volunteering at the Idaho Humane Society. I have two dogs and two goldfish! I hope to one day work with animals in the future with my career."
    
    var body: some View {
       
        ZStack {
            Color(.systemPurple)
            .ignoresSafeArea()
            VStack (alignment: .center, spacing: 20.0)
            {
                Text("ABOUT ME APP")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.black)
                Image("Grad")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(15)
                
                HStack {
                    Text("Emaiya James-Plew")
                        .font(.body)
                        .fontWeight(.bold)
                    
                    Button("Fun Facts") {
                        factText = "My image above shows little me with pouty lips and poofy hair. I connect this image to my personality. My pout represents my sensitivity, which can be beneficial with bringing sympathy to situations but a disadvantage when it comes to making decisions that require logic rather than emotion. My hair is one of my favorite features because I can do so much with it! However, there are many times where I have bad hair days, which reflect upon my mood. For example, in this picture I'm pouting with crazy hair, definitely NOT a good day! "
                    }
                    .buttonStyle(
                        .borderedProminent)
                        .tint(.green)
                }
                Text(factText)
                }
            .padding()
            .background(Rectangle ()
                .foregroundColor(.white))
                .cornerRadius(15)
                .shadow(radius: 15)
                .padding()
                
            }
           
        }
                
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
