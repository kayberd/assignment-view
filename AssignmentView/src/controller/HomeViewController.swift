//
//  HomeViewController.swift
//  AssignmentView
//
//  Created by Berkay Demirören on 1.11.2022.
//

import Foundation
import UIKit

protocol HomeViewControllerInterface {
    
}


class HomeViewController : UIViewController, HomeViewControllerInterface, UITableViewDelegate, UITableViewDataSource {
    
    
    private let tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(tableView)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return MediaDataRepository.size
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let imageView = ImageService.getOne(position: indexPath.row) ?? UIImageView(image: UIImage(systemName: "questionmark"))
        imageView.frame = cell.bounds
        cell.addSubview(imageView)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return tableView.bounds.height
    }

}
