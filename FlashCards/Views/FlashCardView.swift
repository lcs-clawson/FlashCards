//
//  FlashCardView.swift
//  FlashCards
//
//  Created by Cooper Lawson on 2023-02-07.
//

import SwiftUI

struct Cards: Identifiable {
    let id = UUID()
    let question:String
    let answer:String
}


let flashCards = [
    Cards(question: "What is the fastest land animal?", answer: "Cheetah"),
    Cards(question: "What is the deadliest animal?", answer: "Mosquito"),
    Cards(question: "What is the biggest animal?", answer: "Blue Whale"),
]
struct FlashCardView: View {
    var body: some View {
        ForEach(flashCards) {flashCards in
            VStack {
                Text(flashCards.question)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()

                Button(action: {
                    print("Here is the answer: \(flashCards.answer)")
                        }, label: {
                        Text("Answer")
                })
                .buttonStyle(.borderedProminent)
                .padding()

                Text(flashCards.answer)
                    .font(.title)
                    .fontWeight(.semibold)
            }
        }
    }
}


struct FlashCardView_Previews: PreviewProvider {
    static var previews: some View {
        FlashCardView()
    }
}
