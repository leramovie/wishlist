//
//  Model.swift
//  Wish list
//
//  Created by Valery Shel on 07.01.2020.
//  Copyright © 2020 Parakluence. All rights reserved.
//

import Foundation

var MyWishListDefault: [[String: Any]] = [["Name": "New Book", "isCompleted": false], ["Name": "Watches", "isCompleted": false]]

func addItem(nameItem: String, isCompleted: Bool = false) {
    MyWishListDefault.append(["Name": nameItem, "isCompleted": isCompleted])
    saveData()
}

func removeItem(at index: Int) {
    MyWishListDefault.remove(at: index)
    saveData()

}

func saveData() {
    
}

func loadData() {
    
}
