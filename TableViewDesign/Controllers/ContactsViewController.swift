//
//  ContactsViewController.swift
//  TableViewDesign
//
//  Created by Zhamilia Zhanakeeva on 21/2/24.
//

import UIKit
class ContactsViewController: UIViewController, UITableViewDataSource {
    private let tableView = UITableView()
    private let idCell = "cell"
    private var contacts: [Contact] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        navigationItem.title = "My Contacts"
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 3),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        tableView.dataSource = self
        setData()
    }
    private func setData() {
        contacts = [Contact(name: "Katya", phoneNumber: "996700755881", image: UIImage(named: "katya")),
                    Contact(name: "Bekzat", phoneNumber: "0700123456", image: UIImage(named: "bekzat")),
                    Contact(name: "Bekhan", phoneNumber: "0700123456", image: UIImage(named: "bekhan")),
                    Contact(name: "Dasha", phoneNumber: "0552345345", image: UIImage(named: "dasha")),
                    Contact(name: "Nana", phoneNumber: "0700262626", image: UIImage(named: "nana")),
                    Contact(name: "Almaz", phoneNumber: "+996700565555", image: UIImage(named: "almaz")),
                    Contact(name: "Michael", phoneNumber: "0700123456", image: UIImage(named: "michael")),
                    Contact(name: "Carol", phoneNumber: "+996700555555", image: UIImage(named: "carol")),
                    Contact(name: "Aisu", phoneNumber: "996234234234", image: UIImage(named: "aisu")),
                    Contact(name: "David", phoneNumber: "0552976879", image: UIImage(named: "david")),
                    Contact(name: "Temirlan", phoneNumber: "0700755882", image: UIImage(named: "temi"))]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        cell.textLabel?.text = contacts[indexPath.row].name
        cell.imageView?.image = contacts[indexPath.row].image
        cell.detailTextLabel?.text = contacts[indexPath.row].phoneNumber
        return cell
    }
}
