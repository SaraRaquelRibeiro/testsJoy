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
    //@Published var courses : [String:[Course]] = [:]
    
    @Published var units : [Unit] = []
    
    var unitsDict : [String:[Unit]] {
        Dictionary(
            grouping: units,
            by: {  $0.name  }
        )
    }
    
    /*public var allUnits : [String] {
        
        courses.keys.map({String($0)}).sorted()
    }*/
    
    //para transformar o dictionat course num array assim podemos chamar no foreach
    /*public func getCourse (forUnit unit : String) -> [Course] {
        return courses[unit] ?? [] //otherwise just return empty
    }*/
    
    init(){
        //setupCourses()
        setupUnits()
    }
    
    /*func setupCourses(){
        courses["Unit 1"] = coursesFromUnit1
        courses["Unit 2"] = coursesFromUnit2
        courses["Unit 3"] = coursesFromUnit1
        courses["Unit 4"] = coursesFromUnit1
        
    }*/
    func setupUnits(){
        units = staticAllUnits
    }
    
}
