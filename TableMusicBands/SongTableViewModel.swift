//
//  SongTableViewModel.swift
//  TableMusicBands
//
//  Created by Diplomado on 18/05/24.
//

import Foundation

struct SongDataRow {
    var name: String
    var duration: Int
}

class SongTableViewModel {
    var songColoresDataRowArray: [SongDataRow] = []
    var songOasisData: [SongDataRow] = []
    
    init() {
        songColoresDataRowArray = [
            SongDataRow(name: "Amarillo", duration: 2),
            SongDataRow(name: "Azul", duration: 3),
            SongDataRow(name: "Rojo", duration: 2),
            SongDataRow(name: "Rosa", duration: 3),
            SongDataRow(name: "Morado", duration: 3),
            SongDataRow(name: "verde", duration: 2),
        ]
        
        songOasisData = [
            SongDataRow(name: "Mojaita", duration: 3),
            SongDataRow(name: "To le llego", duration: 4),
            SongDataRow(name: "Cuidao por ahi", duration: 3),
            SongDataRow(name: "Que pretendes", duration: 3),
            SongDataRow(name: "La cancioón", duration: 4),
        ]
    }
    
    func getCountArray () -> Int {
        songColoresDataRowArray.count
    }
    
    func getTitleArray (index: IndexPath) -> String {
        songColoresDataRowArray[index.row].name
    }
}
