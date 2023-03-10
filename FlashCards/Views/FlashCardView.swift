import SwiftUI

// MARK Stored Properties
struct Cards: Identifiable {
    let id = UUID()
    let question:String
    let answer:String
}

let flashCards = [
    Cards(question: "What is the fastest land animal?", answer: "Cheetah"),
    Cards(question: "What is the deadliest animal?", answer: "Mosquito"),
    Cards(question: "What is the biggest animal?", answer: "Blue Whale"),
    Cards(question: "What is the closest living relative to the T-rex?", answer: "Chicken"),
    Cards(question: "What male sea creature gives birth to its young?", answer: "Seahorse")
]
struct FlashCardView: View {
    @State private var currentIndex = 0

    var body: some View {
        VStack {
            Text(flashCards[currentIndex].question)
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()

            HStack {
                Button(action: {
                    if self.currentIndex - 1 >= 0 {
                        self.currentIndex -= 1
                    } else {
                        self.currentIndex = flashCards.count - 1
                    }
                }, label: {
                    Text("Previous")
                })
                .buttonStyle(.borderedProminent)
                .padding()
                
                Button(action: {
                    if self.currentIndex + 1 < flashCards.count {
                        self.currentIndex += 1
                    } else {
                        self.currentIndex = 0
                    }
                }, label: {
                    Text("Next")
                })
                .buttonStyle(.borderedProminent)
                .padding()
            }

            Text(flashCards[currentIndex].answer)
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

