//
//  CustomTableViewCell.swift
//  TableViewExample
//
//  Created by Minho Choi on 2021/09/02.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    static let nibName = "CustomTableViewCell"
    static let identifier = "Test"
    var label = UILabel()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.backgroundColor = .black
        label.textAlignment = .center
        NSLayoutConstraint.activate([
            label.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            label.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            label.topAnchor.constraint(equalTo: self.topAnchor),
            label.bottomAnchor.constraint(equalTo: self.bottomAnchor)
//            label.centerYAnchor.constraint(equalTo: self.centerYAnchor),
//            label.centerXAnchor.constraint(equalTo: self.centerXAnchor),
//            label.heightAnchor.constraint(equalToConstant: 100)
        ])
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setLabelText(text: String) {
        self.label.text = text
    }
    
}
