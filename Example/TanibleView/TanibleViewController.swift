//
//  TanibleViewController.swift
//  TanibleView_Example
//
//  Created by soom on 20/04/2019.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit
import TanibleView

class TanibleViewController: UIViewController {

    private let tableView: TanibleView = {
        let view = TanibleView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.tableFooterView = UIView()
        view.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return view
    }()
    
    init(direction: TanibleViewDirection) {
        tableView.direction = direction
        super.init(nibName: nil, bundle: nil)
        title = "\(direction)"
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        
        view.addSubview(tableView)
        
        tableView.topAnchor.constraint(equalTo: topLayoutGuide.bottomAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
    
}

extension TanibleViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "\(indexPath.row)"
        return cell
    }
    
}
