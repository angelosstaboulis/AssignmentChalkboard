//
//  APIManager.swift
//  AssignmentChalkboard
//
//  Created by Angelos Staboulis on 19/1/22.
//

import Foundation
import Alamofire
import SwiftyJSON
import SwiftyJSONDecoder
class APIManager{
    static let shared = APIManager()
    private init(){}
    func fetchList(row:Int,completion:@escaping ([BirthDayModel])->())
    {
        let urlList = URL(string:"https://randomuser.me/api/?results=1000&seed=chalkboard&inc=name,dob")!
        let request = URLRequest(url: urlList)
        var birthDayModelArray:[BirthDayModel]=[]
        AF.request(request).responseData { response in
                let json = JSON(response.data!)
                for item in 0..<row{
                    let birthday = BirthDayModel(json: json, record: item)
                    birthDayModelArray.append(birthday)
                    completion(birthDayModelArray)
                }
          
           
        }
      
    }
}
