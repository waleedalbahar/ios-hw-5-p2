//
//  MoviesTableVC.swift
//  IOS-hw-5p2
//
//  Created by Waleed Albahar on 7/9/20.
//  Copyright © 2020 Waleed Albahar. All rights reserved.
//

import UIKit

class MoviesTableVC: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

   
 
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {return MoviesData.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MoviesCell
        let movies = MoviesData[indexPath.row]
        
        if (indexPath.row % 1 == 0) {cell.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1) }
        cell.movieImage.image = UIImage(named: MoviesData[indexPath.row].movieName)
        cell.movieLabel.text = MoviesData[indexPath.row].movieName
        return cell
    }
   

   
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView?  { let vw = UIView()
        vw.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
       
        return vw
    }
   

    
   
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath:IndexPath) -> CGFloat {
           return 160
    }
   
   

   
   
    override func tableView(_ tableView: UITableView, didSelectRowAt  IndexPath: IndexPath) {
        let movie = MoviesData[IndexPath.row]
        performSegue(withIdentifier: "next", sender: movie)
        
    }
   

   
    // MARK: - Navigation

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! MovieDetailsVC
        vc.moviesData = sender as! MoviesModel
        
    }
  
}
