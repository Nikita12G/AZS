//
//  Time.swift
//  AZS
//
//  Created by Никита Гуляев on 14.01.2022.
//

import Foundation

let dateFormatter: DateFormatter = {
    let dateFormatter = DateFormatter()
    dateFormatter.locale = Locale(identifier: "ru_RU")
    dateFormatter.dateFormat = "dd MMMM h:mm"
    return dateFormatter
}()

let stringDate = dateFormatter.string(from: Date())
