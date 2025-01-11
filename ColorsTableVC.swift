//
//  ColorsTableVC.swift
//  RandomColors
//
//  Created by Genish  on 10/01/2025.
//

import UIKit

class ColorsTableVC : UIViewController{
    var colors : [UIColor] = []
    
    enum cells {
        static let colorCell = "ColorCell"
    }
    
    enum segues {
        static let toDetail = "ToColorsDetailVC"
    }
    
    override func viewDidLoad() {
    
        super.viewDidLoad()
        addRandomColors()
        
    }
    
    func addRandomColors() {
        for _ in 0..<100 {
            colors.append(.random())
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! ColorsDetailVC
        destinationVC.color = sender as? UIColor
    }
    
}

extension ColorsTableVC : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cells.colorCell) else {
            return UITableViewCell()
        }
        cell.backgroundColor = colors[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let color = colors[indexPath.row]
        performSegue(withIdentifier: segues.toDetail, sender: color)
    }
    
}

