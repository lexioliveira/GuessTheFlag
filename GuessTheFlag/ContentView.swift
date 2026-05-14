//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Lexi Oliveira on 30/10/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showingScore = false
    @State private var scoreTitle = ""
    @State private var scoreResult = 0
    @State private var totalQuestions = 0
    @State private var restartGame = false
    
    @State private var countries = [
        "Estonia", "France", "Germany",
        "Ireland", "Italy", "Nigeria",
        "Poland", "Spain", "UK",
        "Ukraine", "US"
    ].shuffled()
    // shuffled() method automatically takes care of randomizing the array order
    
    @State private var correctAnswer = Int.random(in: 0...2)
    
    var body: some View {
        ZStack {
            RadialGradient(
                stops: [
                    .init(color:  Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.3),
                .init(color: Color(red: 0.76, green: 0.15, blue: 0.26), location: 0.3)
                ],
                center: .top,
                startRadius: 200,
                endRadius: 400
            ).ignoresSafeArea()
            
            VStack {
                Text("Guess the Flag")
                    .font(.largeTitle.weight(.bold))
                    .foregroundStyle(.white)
                
                Spacer()
                
                VStack(spacing: 15) {
                    VStack {
                        Text("Tap the flag of")
                            .foregroundStyle(.secondary)
                            .font(.subheadline.weight(.heavy))
                        Text(countries[correctAnswer])
                            .font(.largeTitle.weight(.semibold))
                        // “Large title” is the largest built-in font size iOS offers us,
                        // and automatically scales up or down depending on what setting
                        // the user has for their fonts – a feature known as Dynamic Type.
                        // We’re overriding the weight of the font so it’s a little bolder,
                        // but it will still scale up or down as needed.
                    }
                    
                    ForEach(0..<3) { number in
                        Button {
                            flagTapped(number)
                        } label: {
                            Image(countries[number])
                                .clipShape(.buttonBorder)
                                .shadow(radius: 5)
                        }
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(.regularMaterial)
                .clipShape(.rect(cornerRadius: 20))
                
                Spacer()
                Spacer()
                
                Text("Score: \(scoreResult)")
                    .foregroundStyle(.white)
                    .font(.title.bold())
                
                Spacer()
            }
            .padding()
        }
        .alert(scoreTitle, isPresented: $showingScore) {
            Button("Continue", action: askQuestion)
        } message: {
            Text("Your score is \(scoreResult)")
        }
        .alert("Your final score:", isPresented: $restartGame) {
            Button("Restart", action: resetGame)
        } message: {
            Text("\(scoreResult)")
        }
    }
    
    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct!"
            scoreResult += 1
        } else {
            scoreTitle = "Wrong! That's the flag of \(countries[number])"
        }
        showingScore = true
        totalQuestions += 1
    }
    
    func askQuestion() {
        if totalQuestions == 8 {
            restartGame = true
            return
        }
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
    
    func resetGame() {
        scoreResult = 0
        totalQuestions = 0
        askQuestion()
    }
}

#Preview {
    ContentView()
}
