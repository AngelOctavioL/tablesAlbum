//
//  AlbumTableViewModel.swift
//  TableMusicBands
//
//  Created by Diplomado on 18/05/24.
//

import Foundation

struct AlbumDataRow {
    var name: String
    var year: Int
}

class AlbumTableViewModel {
    var albumDataRowArray: [AlbumDataRow] = []
    var albumDataRowArrayBadBunny: [AlbumDataRow] = []
    
    init() {
        albumDataRowArray = [
            AlbumDataRow(name: "Oasis", year: 2019),
            AlbumDataRow(name: "Colores", year: 2020),
        ]
        
        albumDataRowArrayBadBunny = [
            AlbumDataRow(name: "Nadie sabe lo que va a pasar mañana", year: 2023),
            AlbumDataRow(name: "Un verano sin ti", year: 2022),
        ]
    }
    
    func getCountArray () -> Int {
        albumDataRowArray.count
    }
    
    func getTitleArray (index: IndexPath) -> String {
        albumDataRowArray[index.row].name
    }
    
    func getSections() -> Int {
        3
    }
}
