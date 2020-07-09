//
//  MovieDetailsVC.swift
//  IOS-hw-5p2
//
//  Created by Waleed Albahar on 7/9/20.
//  Copyright © 2020 Waleed Albahar. All rights reserved.
//

import UIKit

class MovieDetailsVC: UIViewController {
    var moviesData = MoviesModel(movieName: "", movieReleaseDate: 2000, actors: [""], rating: 0.0, rated: "PG", genre: "")

    @IBOutlet weak var movieImage: UIImageView!
    @IBOutlet weak var movieTitle: UINavigationItem!
    @IBOutlet weak var movieGenre: UILabel!
    
    @IBOutlet weak var movieRating: UILabel!
    @IBOutlet weak var movieRated: UILabel!
    @IBOutlet weak var movieReleaseDate: UILabel!
   
    @IBOutlet weak var actorImage1: UIImageView!
    @IBOutlet weak var actorName1: UILabel!


    @IBOutlet weak var actorImage2:UIImageView!
    @IBOutlet weak var actorName2: UILabel!
    
    
    @IBOutlet weak var actorImage3:UIImageView!
   
    @IBOutlet weak var actorName3: UILabel!
    
    
    override func viewDidLoad() {
    super.viewDidLoad()
    setMovieDetails()
    configureUI()
    self.view.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
    }
    
    func setMovieDetails() {
        movieTitle.title = moviesData.movieName
        movieImage.image = UIImage(named: moviesData.movieName)
        movieGenre.text = moviesData.genre
         
        movieRating.text = String(moviesData.rating)
        movieRated.text = moviesData.rated
        movieReleaseDate.text = String(moviesData.movieReleaseDate)
   
        actorImage1.image = UIImage(named: moviesData.actors[0])
        actorName1.text = moviesData.actors[0]
        
        actorImage2.image = UIImage(named: moviesData.actors[1])
        actorName2.text = moviesData.actors[1]
        
        actorImage3.image = UIImage(named: moviesData.actors[2])
        actorName3.text = moviesData.actors[2]
    }
    func configureUI() {
        movieRating.layer.cornerRadius = 20
        movieRated.layer.cornerRadius = 20
        movieReleaseDate.layer.cornerRadius = 20
        actorImage1.layer.cornerRadius = 10
        actorImage2.layer.cornerRadius = 10
        actorImage3.layer.cornerRadius = 10
        }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
