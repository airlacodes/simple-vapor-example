//
//  People.swift
//  App
//
//  Created by Jeevan Thandi on 17/02/2019.
//

import Foundation
import Vapor
import FluentSQLite

final class CarlSagan: Content {
    var id: Int?
    var name: String = "Carl Sagan"
    var imageUrl: URL = URL(string: "https://media.newyorker.com/photos/590973a18b51cf59fc422c4e/master/w_640,c_limit/Burns-Carl-Sagan-Explains-Your-Mother.jpg")!
}

extension CarlSagan: SQLiteModel {}
extension CarlSagan: Migration {}
