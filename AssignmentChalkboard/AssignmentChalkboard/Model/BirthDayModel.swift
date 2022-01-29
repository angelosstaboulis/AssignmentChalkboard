//
//  BirthDayModel.swift
//  AssignmentChalkboard
//
//  Created by Angelos Staboulis on 20/1/22.
//

import Foundation
import SwiftyJSON
public struct BirthDayModel:Codable{
    public var last:String
    public var title:String
    public var first:String
    public var date:String
    public var age:String
    init(json:JSON,record:Int){
        title = json["results"][record]["name"]["title"].stringValue
        last = json["results"][record]["name"]["last"].stringValue
        first = json["results"][record]["name"]["first"].stringValue
        date = json["results"][record]["dob"]["date"].stringValue
        age =  json["results"][record]["dob"]["age"].stringValue
    }
  
}
