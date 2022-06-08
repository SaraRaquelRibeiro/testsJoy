//
//  courseOneUnitOne.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 03/06/2022.
//

import SwiftUI

struct courseOneUnitOne: View {
    //connection à api e funcs no triviamanager mas em environment---> adicioná-lo la em baixo na preview
    @EnvironmentObject var triviaManager : TriviaManager
    
    var answer: Answer
    @State private var isSelected = false
    
    var body: some View {
        ZStack{
            Color(.white)
                
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                
                Text("\(triviaManager.category)")
                    .font(.system(size: 16))
                    .foregroundColor(.gray)
                    .padding(.top, 60)
                Spacer()
                
                Image(systemName: "speaker.zzz.fill")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(Color.blueGradient2)
                    .font(.caption)
                    .frame(width: 45, height: 45)
                    .shadow(color: .gray.opacity(0.4), radius: 1, x: -1, y: 3)
                    .padding(.leading, -120)
                    .padding(.top, -150)
                
                
                Text("\(triviaManager.question)")
                    .font(.system(size: 16))
                    .foregroundColor(.gray)
                    .padding(.top, -100)
                    .multilineTextAlignment(.leading)
                    .frame(width: 300)
                
                ForEach(triviaManager.answerChoices, id: \.id){ answer in
                    AnswerRowRectangle(answer: answer)
                        .environmentObject(triviaManager)
                }
               
                Spacer()
                
                Button(action: {
                    triviaManager.goToNextQuestion()
                }, label: {
                    //PrimaryButton(text: "Next", background: triviaManager.answerSelected ? Color.blueLight : .gray.opacity(0.2))
                    //ButtonCourses(text: "Next", background: triviaManager.answerSelected ? Color.blueLight : .gray.opacity(0.2))
                })
                //se a resposta ainda não foi selecionada o button is disabled
                    .disabled(!triviaManager.answerSelected)
                    .padding(.bottom, 90)
                
            }
            
            //BOTTOM
            VStack(){
                Spacer()
                
                ZStack {
                    Rectangle()
                        .fill(LinearGradient(gradient: Gradient(colors: [Color.blueGradient3, Color.blueGradient2]), startPoint: .leading, endPoint: .bottom))
                        .frame(height: 80, alignment: .bottom)
                    
                    HStack{
                        
                        Text("\(triviaManager.index + 1)/\(triviaManager.length)")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .padding(.trailing, 30)
                        
                        ProgressBar(progress: triviaManager.progress)
                    }
                }
                
            }
            .ignoresSafeArea(.container)
        }
    }
}

struct courseOneUnitOne_Previews: PreviewProvider {
    static var previews: some View {
        courseOneUnitOne(answer: Answer(text: "Single", isCorrect: false))
            .environmentObject(TriviaManager())
    }
}
