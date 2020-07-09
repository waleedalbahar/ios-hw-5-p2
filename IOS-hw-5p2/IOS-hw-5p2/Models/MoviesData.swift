//
//  MoviesData.swift
//  IOS-hw-5p2
//
//  Created by Waleed Albahar on 7/9/20.
//  Copyright © 2020 Waleed Albahar. All rights reserved.
//

import Foundation



struct MoviesModel {
    var movieName: String
    var movieReleaseDate: Int
    var actors: [String]
    var rating: Double
    var rated: String
    var genre: String
}




var MoviesData = [
    MoviesModel(movieName: "Rocky", movieReleaseDate: 1976, actors: ["Sylvester Stallone", "Carl weathers", "Michael B. Jordan" ], rating: 8.1, rated: "PG", genre: "Sport"),
    MoviesModel(movieName: "Ford v Ferrari", movieReleaseDate: 2019, actors: ["Matt Damon", "Jon Bernthal", "Christian Bale" ], rating: 8.1, rated: "PG-13", genre: "Sport"),
    MoviesModel(movieName: "Just Mercy", movieReleaseDate: 2019, actors: ["Michael B. Jordan" , "Jamie foxx", "Brie Larson" ], rating: 7.6, rated: "PG-13", genre: "crime"),
    MoviesModel(movieName: "The Irishman", movieReleaseDate: 2019, actors: ["Robert De Niro", "Al Pacino", "Joe pesci" ], rating: 7.9, rated: "R", genre: "Crime"),
    MoviesModel(movieName: "The Matrix ", movieReleaseDate: 1999, actors: ["Keanu Reeves", "Laurence Fishburne", "Hugo Weaving" ], rating: 8.7, rated: "R", genre: "Action"),
    MoviesModel(movieName: "Coach Carter", movieReleaseDate: 2005, actors: ["Samuel L. Jackson", "Rick Gonzalez", "Robert Ri'chard" ], rating: 7.3, rated: "PG-13", genre: "Sport")
]
