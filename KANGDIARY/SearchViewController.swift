//
//  SearchViewController.swift
//  KANGDIARY
//
//  Created by Kanghos on 2021/11/01.
//

import UIKit

class SearchViewController: UIViewController {
    
    @IBOutlet weak var searchTableVIew: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nibName = UINib(nibName: DiaryTableViewCell.identifier, bundle: nil)
        searchTableVIew.register(nibName, forCellReuseIdentifier: DiaryTableViewCell.identifier)
        
        searchTableVIew.delegate = self
        searchTableVIew.dataSource = self
    }
}

extension SearchViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = searchTableVIew.dequeueReusableCell(withIdentifier: DiaryTableViewCell.identifier, for: indexPath) as? DiaryTableViewCell
                
        else {
            return UITableViewCell()
        }
        
        cell.cellImageView.image = UIImage(systemName: "xmark")
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 145
    }
}
