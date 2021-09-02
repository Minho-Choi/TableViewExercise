//
//  TableViewCell+CascadeAnimation.swift
//  TableViewExample
//
//  Created by Minho Choi on 2021/09/02.
//

import UIKit

extension UITableViewCell {
    func cascadeAnimation(first: Int, indexPath: IndexPath, duration: Double) {
        self.transform = CGAffineTransform(translationX: 0, y: self.frame.height/2)
        self.alpha = 0
        UIView.animate(withDuration: 0.2 ,delay: 0.05*Double(indexPath.row - first), animations: {
            self.transform = CGAffineTransform(translationX: 0, y: 0)
            self.alpha = 1
        })
    }
}
