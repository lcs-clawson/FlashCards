//
//  FlashCardView.swift
//  FlashCards
//
//  Created by Cooper Lawson on 2023-02-07.
//

import SwiftUI

struct FlashCards {
    let question:String
    let answer:String
}

let flashCards = [
    FlashCards(question: "What is the fastest land animal?", answer: "Cheetah"),
    FlashCards(question: "What is the deadliest animal?", answer: "Mosquito"),
    FlashCards(question: "What is the biggest animal?", answer: "Blue Whale"),
]
struct FlashCardView: View {
    var body: some View {

        
            VStack {
                Text("Question")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                    .padding()
                
                Button(action: {
                    
                    print("Here is the answer")
                }, label: {
                    Text("Answer")
                })
                .buttonStyle(.borderedProminent)
                
                .padding()
                
                Text("Answer")
                    .font(.title)
                    .fontWeight(.semibold)
           
            }
        }
    }

struct FlashCardView_Previews: PreviewProvider {
    static var previews: some View {
        FlashCardView()
    }
}
