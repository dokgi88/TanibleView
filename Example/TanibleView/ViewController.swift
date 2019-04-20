//
//  ViewController.swift
//  TanibleView
//
//  Created by dokgi1988 on 03/28/2019.
//  Copyright (c) 2019 dokgi1988. All rights reserved.
//

import UIKit
import TanibleView

class ViewController: UIViewController {
    
    private enum TanibleViewDirections: String, CaseIterable {
        case top
        case left
        case right
        case bottom
        case inPlaceFadeIn
        case inPlaceFadeInTop
        case inPlaceFadeInBottom
        
        var direction: TanibleViewDirection {
            switch self {
            case .top:
                return TanibleViewDirection.top
            case .left:
                return TanibleViewDirection.left
            case .right:
                return TanibleViewDirection.right
            case .bottom:
                return TanibleViewDirection.bottom
            case .inPlaceFadeIn:
                return TanibleViewDirection.inPlaceFadeIn
            case .inPlaceFadeInTop:
                return TanibleViewDirection.inPlaceFadeInTop
            case .inPlaceFadeInBottom:
                return TanibleViewDirection.inPlaceFadeInBottom
            }
        }
    }
    private var tanibleViewDirection: [TanibleViewDirection] {
        return TanibleViewDirections.allCases.map{$0.direction}
    }
    private var tanibleViewDirectionTitles: [String] {
        return TanibleViewDirections.allCases.map{$0.rawValue}
    }
    
    private let tableView: TanibleView = {
        let view = TanibleView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.isEnabled = false
        view.tableFooterView = UIView()
        view.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
        
        view.addSubview(tableView)
        
        tableView.topAnchor.constraint(equalTo: topLayoutGuide.bottomAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }

}

extension ViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tanibleViewDirectionTitles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = tanibleViewDirectionTitles[indexPath.row]
        return cell
    }
    
}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let direction = tanibleViewDirection[indexPath.row]
        showTanibleViewController(direction: direction)
    }
    
    private func showTanibleViewController(direction: TanibleViewDirection) {
        let controller = TanibleViewController(direction: direction)
        show(controller, sender: nil)
    }
    
}
