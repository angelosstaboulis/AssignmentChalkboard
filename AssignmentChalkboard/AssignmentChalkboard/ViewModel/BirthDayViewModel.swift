//
//  BirthDayViewModel.swift
//  AssignmentChalkboard
//
//  Created by Angelos Staboulis on 20/1/22.
//

import Foundation
class BirthDayViewModel{
    var apishared:APIManager
    init(){
        apishared = APIManager.shared
    }
    func fetchList(records:Int,completion:@escaping ([BirthDayModel])->()){
        apishared.fetchList(row: records) { array in
            completion(array)
        }
    }
    
}
