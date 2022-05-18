//
//  HomeVM.swift
//  testsJoy
//
//  Created by Sara Ribeiro on 17/05/2022.
//

import Foundation
//aonde defenimos em que units vão aparecer os cursos
class HomeVM : ObservableObject {
    //String == unit
    @Published var courses : [String:[Course]] = [:]
    
    public var allUnits : [String] {
        //inserir a ordem aqui
        
        courses.keys.map({String($0)})
    }
    
    //para transformar o dictionat course num array assim podemos chamar no foreach
    public func getCourse (forUnit unit : String) -> [Course] {
        return courses[unit] ?? [] //otherwise just return empty
    }
    init(){
        setupCourses()
    }
    
    func setupCourses(){
        courses["Unit 1"] = coursesFromUnit1
        courses["Unit 2"] = coursesFromUnit1
        courses["Unit 3"] = coursesFromUnit1
        courses["Unit 4"] = coursesFromUnit1
        
    }
    
}
