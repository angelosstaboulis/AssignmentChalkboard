//
//  Loader.swift
//  AssignmentChalkboard
//
//  Created by Angelos Staboulis on 21/1/22.
//

import Foundation
import JGProgressHUD
import UIKit
class Loader{
    static let shared = Loader()
    private init(){}
    func loader(view:UIView,delay:Int){
        let toast = JGProgressHUD.init()
        toast.textLabel.text = "Please wait while loading records........"
        toast.show(in: view)
        toast.dismiss(afterDelay: TimeInterval(delay))
    }
}
