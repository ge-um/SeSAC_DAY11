//
//  MagazineTableViewCell.swift
//  SeSAC_DAY11
//
//  Created by 금가경 on 7/11/25.
//

import UIKit

class MagazineTableViewCell: UITableViewCell {
    @IBOutlet var photo: UIImageView!
    @IBOutlet var title: UILabel!
    @IBOutlet var subtitle: UILabel!
    @IBOutlet var date: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configure()
    }
    
    func configure() {
        configurePhoto()
        configureTitle()
        configureSubtitle()
        configureDate()
    }
    
    func configurePhoto() {
        photo.layer.cornerRadius = 10
    }
    
    func configureTitle() {
        title.numberOfLines = 0
        title.font = .systemFont(ofSize: 21, weight: .black)
        title.lineBreakMode = .byTruncatingMiddle
        title.textColor = .accent
    }
    
    func configureSubtitle() {
        subtitle.textColor = .systemGray
        subtitle.font = .systemFont(ofSize: 15, weight: .semibold)
    }
    
    func configureDate() {
        date.textColor = .systemGray
        date.font = .systemFont(ofSize: 13, weight: .semibold)
    }
}
