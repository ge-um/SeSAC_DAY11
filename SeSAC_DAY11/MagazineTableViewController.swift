//
//  MagazineTableViewController.swift
//  SeSAC_DAY11
//
//  Created by 금가경 on 7/11/25.
//

import Kingfisher
import UIKit

class MagazineTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return MagazineInfo.magazine.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "content", for: indexPath) as! MagazineTableViewCell
        
        let magazine = MagazineInfo.magazine[indexPath.row]
        let url = URL(string: magazine.photo_image)!
        
        cell.photo.kf.setImage(with: url)
        cell.title.text = magazine.title
        cell.subtitle.text = magazine.subtitle
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyMMdd"
        let date = formatter.date(from: magazine.date)

        formatter.dateFormat = "yy년 MM월 dd일"
        let dateString = formatter.string(from: date ?? Date())
        
        cell.date.text = dateString
        
        return cell
    }
    
    func configure() {
        configureRow()
    }
    
    func configureRow() {
        tableView.rowHeight = 400
        tableView.separatorColor = .clear
    }
}
