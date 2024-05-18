//
//  TableDataViewModel.swift
//  TableMusicBands
//
//  Created by Diplomado on 18/05/24.
//

import Foundation

struct BandDataRow {
    var name: String
    //var description: String
}

class BandTableViewModel {
    var bandDataRowArray: [BandDataRow] = []
    
    init() {
        bandDataRowArray = [
            BandDataRow(name: "J Balvin"),
            BandDataRow(name: "Bad Bunny"),
        ]
    }
    
    func getCountArray () -> Int {
        bandDataRowArray.count
    }
    
    func getTitleArray (index: IndexPath) -> String {
        bandDataRowArray[index.row].name
    }
    
//    func getDescriptionArray (index: IndexPath) -> String {
//        bandDataRowArray[index.row].description
//    }
    
//    func addToArray(text: String) {
//        rowsArray.append(Row(title: text, description: ""))
//    }
    
    func getSections() -> Int {
        3
    }
}
