//
//  ViewController.swift
//  AssignmentChalkboard
//
//  Created by Angelos Staboulis on 19/1/22.
//

import UIKit
import SwiftUI
class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    @IBOutlet var tableView: UITableView!
    var viewModel = BirthDayViewModel()
    var birthdayModelArray:[BirthDayModel]=[]
    var pages:Int!=0
   
    override func viewDidLoad() {
        super.viewDidLoad()
        Loader.shared.loader(view: self.view, delay: 10)
        initialView()
        // Do any additional setup after loading the view.
    }
  

}
extension ViewController{
    func initialView(){
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "MainCell", bundle: nil), forCellReuseIdentifier: "cell")
        self.navigationItem.title = "Birthday List"
        loadMore(records: 20)
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 280.0
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return birthdayModelArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:MainCell  = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MainCell
        setupCell(cell: cell, indexPath: indexPath)
        return cell
    }
    func setupCell(cell:MainCell,indexPath:IndexPath) {
        if indexPath.row < self.birthdayModelArray.count{
            cell.lblID.text = String(indexPath.row+1)
            cell.lblTitle.text = self.birthdayModelArray[indexPath.row].title
            cell.lblLastName.text = self.birthdayModelArray[indexPath.row].last
            cell.lblFirstName.text = self.birthdayModelArray[indexPath.row].first
            cell.lblDate.text = self.birthdayModelArray[indexPath.row].date
            cell.lblAge.text = String(self.birthdayModelArray[indexPath.row].age)
           
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         showDetailPage(indexPath: indexPath)
    }
    func loadMore(records:Int){
        viewModel.fetchList(records: records) { array in
            self.birthdayModelArray.removeAll()
            self.birthdayModelArray.append(contentsOf: array)
            self.tableView.reloadData()
        }

    }
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if indexPath.row == birthdayModelArray.count - 1 {
            pages = pages + indexPath.row
            loadMore(records: pages)
        }
    }
    func showDetailPage(indexPath:IndexPath){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let details:DetailPageViewController = storyboard.instantiateViewController(withIdentifier: "details") as! DetailPageViewController
        details.birthdayModel = birthdayModelArray[indexPath.row]
        self.navigationController?.pushViewController(details, animated: true)
    }
}
