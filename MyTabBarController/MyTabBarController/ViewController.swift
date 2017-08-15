//
//  ViewController.swift
//  MyTabBarController
//
//  Created by 仝兴伟 on 2017/8/15.
//  Copyright © 2017年 仝兴伟. All rights reserved.
//

import UIKit

class ViewController: UIViewController,
    UITableViewDataSource,
    UITableViewDelegate,
DelegateCellDelegate{
    
    var tableView: UITableView?
    
    //MARK: -- lifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.barTintColor = UIColor.cyan
        self.view.backgroundColor = UIColor.white
        
        initTableView()
    }
    
    //MARK: -- UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: NSStringFromClass(DelegateCell), for: indexPath) as? DelegateCell
        cell!.textLabel?.text = "\(indexPath.row)"
        cell!.delegate = self
        return cell!
    }
    
    //MARK: -- DelegateCellDelegate
    func giveLike(_ btn: UIButton) {
        print(123)
    }
    
    //MARK: -- private
    func initTableView() {
        let tableView = UITableView(frame: CGRect(x: 0,y: 0,width: self.view.width,height: self.view.height))
        tableView.backgroundColor = UIColor.white
        tableView.dataSource = self
        tableView.delegate = self
        tableView .register(DelegateCell.classForCoder(), forCellReuseIdentifier: NSStringFromClass(DelegateCell))
        self.tableView = tableView
        self.view.addSubview(self.tableView!)
    }
}

