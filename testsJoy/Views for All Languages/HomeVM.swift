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
    
    init(){
        //setupCourses()
        setupUnits()
    }
  
    func setupUnits(){
        units = staticAllUnits
    }
    
    @Published var questions : [Question] = []
    
    var questionsDict : [String:[Question]] {
        Dictionary(
            grouping: questions,
            by: {  $0.type  }
        )
    }
    
}
