//
//  ViewController.swift
//  TableViewExample
//
//  Created by Minho Choi on 2021/09/02.
//

import UIKit

class ViewController: UIViewController {
    
    var tableView = UITableView()
    
    var dummyData: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        tableView.register(TableViewCell.self, forCellReuseIdentifier: "Test")


        let nib = UINib(nibName: CustomTableViewCell.nibName, bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: CustomTableViewCell.identifier)
        tableView.delegate = self
        tableView.dataSource = self
        view.addSubview(tableView)
        for _ in 0..<40 {
            dummyData.append("aaaaaaaaaa")
        }
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }

}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200.0
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.cascadeAnimation(first: tableView.indexPathsForVisibleRows?.first?.row ?? 1, indexPath: indexPath, duration: 0.1)
    }
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dummyData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier) else {
            return UITableViewCell()

        }
        (cell as? CustomTableViewCell)?.setLabelText(text: dummyData[indexPath.row] + "\(indexPath.row)")
        return cell
//        return CustomTableViewCell()
    }
}
