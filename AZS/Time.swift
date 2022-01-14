//
//  Time.swift
//  AZS
//
//  Created by Никита Гуляев on 14.01.2022.
//

import Foundation

let date = Date()
let calendar = Calendar.current

var day: Int {
    get {
        return calendar.component(.day, from: date)
    }
}
var minute: Int {
    get {
        return calendar.component(.minute, from: date)
    }
}
var hour: Int {
    get {
        return calendar.component(.hour, from: date)
    }
}
var month: Int {
    get {
        return calendar.component(.month, from: date)
    }
}
