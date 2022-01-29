//
//  DetailPageViewController.swift
//  AssignmentChalkboard
//
//  Created by Angelos Staboulis on 21/1/22.
//

import UIKit

class DetailPageViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var birthdayModel:BirthDayModel!
    @IBOutlet var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        initialView()
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
extension DetailPageViewController{
    func initialView(){
        tableView.delegate = self
        tableView.dataSource = self
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:DetailPageCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! DetailPageCell
        cell.lblLastName.text = birthdayModel.last
        cell.lblFirstName.text = birthdayModel.first
        cell.lblAge.text = String(birthdayModel.age)
        cell.lblDate.text = birthdayModel.date
        return cell
    }
   
}
