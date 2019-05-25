//
//  Fake.swift
//  ResourceKitTests
//
//  Created by Robert L. Jones on 12/28/18.
//  Copyright © 2019 djrlj694.dev. All rights reserved.
//
//  REFERENCES:
//  1. iTunesClient: https://teamtreehouse.com/library/wrapping-up-11
//  2. Stormy: https://teamtreehouse.com/library/the-end-6
//  3. https://darksky.net/dev/docs#forecast-request
//

import Foundation

struct Fake {
    
    struct DarkSky {
        
        static var currentWeather: CurrentWeather {
            return CurrentWeather(
                temperature: 66.1,
                humidity: 0.83,
                precipProbability: 0.9,
                summary: "Drizzle",
                icon: "rain"
            )
        }
        
        static var coordinate: Coordinate {
            return Coordinate(latitude: 37.3230, longitude: -122.0322) // Cupertino, CA
        }

        static var weather: Weather {
            return Weather(currently: currentWeather)
        }
        
    }
    
    /*
    struct Itunes {
        
        static var artist: Artist {
            return Artist(id: 159260351, name: "Taylor Swift", primaryGenre: .pop, albums: [])
        }
        
        static var albums: [Album] {
            let eightyNine = Album(id: 907242701, artistName: "Taylor Swift", name: "1989", censoredName: "1989", artworkUrl: "http://is2.mzstatic.com/image/thumb/Music5/v4/29/fa/b6/29fab67f-c950-826f-26a0-5eebcd0e262b/source/100x100bb.jpg", isExplicit: false, numberOfTracks: 14, releaseDate: Date(), primaryGenre: .pop)
            let red = Album(id: 571445253, artistName: "Taylor Swift", name: "Red", censoredName: "Red", artworkUrl: "http://is4.mzstatic.com/image/thumb/Music/v4/11/b7/3f/11b73fb0-46af-42b5-111a-6bce1815562f/source/100x100bb.jpg", isExplicit: false, numberOfTracks: 16, releaseDate: Date(), primaryGenre: .country)
            
            return [eightyNine, red]
        }
        
        static var songs: [Song] {
            
            let welcomeToNY = Song(id: 907242702, name: "Welcome To New York", censoredName: "Welcome To New York", trackTime: 212600, isExplicit: false)
            let blankSpace =  Song(id: 907242703, name: "Blank Space", censoredName: "Blank Space", trackTime: 231833, isExplicit: false)
            
            return [welcomeToNY, blankSpace]
        }

    }
    */
    
}
