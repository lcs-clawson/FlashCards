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

struct FlashCardView: View {
    var body: some View {
        
        VStack {
            Text("Question")
                .font(.largeTitle)
                .fontWeight(.bold)
                
                .padding()
            
            Text("Button")
                
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
