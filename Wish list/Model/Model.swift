//
//  Model.swift
//  Wish list
//
//  Created by Valery Shel on 07.01.2020.
//  Copyright © 2020 Parakluence. All rights reserved.
//

import Foundation

var MyWishListDefault: [[String: Any]] {
    set{
        UserDefaults.standard.set(newValue, forKey: "WishListDataKey")
        UserDefaults.standard.synchronize()
    }
    
    get{
        if let array = UserDefaults.standard.array(forKey: "WishListDataKey") as? [[String: Any]] {
            return array
        } else {
            return []
        }
        return []
    }
}

func addItem(nameItem: String, isCompleted: Bool = false) {
    MyWishListDefault.append(["Name": nameItem, "isCompleted": isCompleted])
}

func removeItem(at index: Int) {
    MyWishListDefault.remove(at: index)

}

func changeState(at item: Int) -> Bool {
    MyWishListDefault[item]["isCompleted"] = !(MyWishListDefault[item]["isCompleted"] as! Bool)
    
    return MyWishListDefault[item]["isCompleted"] as! Bool
}
