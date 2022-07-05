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
    
    var answer: AnswerTrivia
    @State private var isSelected = false
    
    @State var showSheet: Bool = false
    
    @State private var sheetMode : SheetMode = .quarter
    
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
                
                ZStack{
                    
                    Button(action: {
                       
                       //testar screen the fail or win
                        switch sheetMode {
                        case .quarter:
                            sheetMode = .half
                        case .half:
                            sheetMode = .quarter
                      
                        }
                        
                    }, label: {
                       
                        ButtonCourses(text: "testar",
                                      textColor: triviaManager.answerSelected ? Color.white : Color.gray.opacity(0.7),
                                      shadowColor: triviaManager.answerSelected ? Color.greenCorrectAnswerBackground : .gray.opacity(0.7),
                                      background: triviaManager.answerSelected ? Color.greenGradient1.opacity(0.8)  : Color.gray.opacity(0.2))
                    })
                    //se a resposta ainda não foi selecionada o button is disabled
                        .disabled(!triviaManager.answerSelected)
                    
                    FlexibleSheet(sheetMode: $sheetMode, content: {
                        
                        if answer.isCorrect {
                            VStack{
                                
                                    WinScreenOne(answer: AnswerTrivia(text: "ffof", isCorrect: true), correctAnswer: "so nice")
                               
                                
                            }
                            .frame(maxWidth: .infinity, maxHeight: 300)
                            .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                            
                        } else {
                            VStack{
                                //WinScreenOne(answer: Answer(text: "ffof", isCorrect: true), correctAnswer: "so nice")
                                WinScreenOne(answer: AnswerTrivia(text: "ffof", isCorrect: false), correctAnswer: "")
                               
                                
                            }
                            .frame(maxWidth: .infinity, maxHeight: 300)
                            .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                        }
                        
                        
                       
                    })
                    
                }
                
                
                /*HStack{
                    
                    
                    Button(action: {
                       
                       //testar screen the fail or win
                        showSheet.toggle()
                        
                    }, label: {
                       
                        ButtonCourses(text: "testar",
                                      textColor: triviaManager.answerSelected ? Color.white : Color.gray.opacity(0.7),
                                      shadowColor: triviaManager.answerSelected ? Color.greenCorrectAnswerBackground : .gray.opacity(0.7),
                                      background: triviaManager.answerSelected ? Color.greenGradient1.opacity(0.8)  : Color.gray.opacity(0.2))
                    })
                    //se a resposta ainda não foi selecionada o button is disabled
                        .disabled(!triviaManager.answerSelected)
                        .sheet(isPresented: $showSheet, content: {
                            
                            //WinScreenOne(answer: Answer(text: "", isCorrect: false), correctAnswer: "inserir resposta correcta")
                            
                            if answer.isCorrect {
                                WinScreenOne(answer: Answer(text: "", isCorrect: false), correctAnswer: "inserir resposta correcta")
                            }
                            else{
                               FailScreenOne(answer: Answer(text: "", isCorrect: false), correctAnswer: "inserir resposta correta")
                                    .frame(width: 325, height: 550)
                                    .clipShape(RoundedRectangle(cornerRadius: 20, style: .circular))
                                    .clearModalBackground()
                            }
                            
                            
                        })
                        .padding(.bottom, 90)
                }*/
                
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
        .navigationBarHidden(true)
    }
}

struct courseOneUnitOne_Previews: PreviewProvider {
    static var previews: some View {
        courseOneUnitOne(answer: AnswerTrivia(text: "Single", isCorrect: false))
            .environmentObject(TriviaManager())
    }
}

//**** funções para formatar o tamanho etc da .sheet que salta no fail e win
struct ClearBackgroundView: UIViewRepresentable {
    func makeUIView(context: Context) -> some UIView {
        let view = UIView()
        DispatchQueue.main.async {
            view.superview?.superview?.backgroundColor = .clear
        }
        return view
    }
    func updateUIView(_ uiView: UIViewType, context: Context) {
    }
}

struct ClearBackgroundViewModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .background(ClearBackgroundView())
    }
}

extension View {
    func clearModalBackground()->some View {
        self.modifier(ClearBackgroundViewModifier())
    }
}
