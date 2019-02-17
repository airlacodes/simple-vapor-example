//
//  Featured.swift
//  App
//
//  Created by Jeevan Thandi on 17/02/2019.
//

import Foundation
import Vapor
import FluentSQLite

final class Featured: Codable, Content {
    var id: Int?
    var people: [CarlSagan] = [CarlSagan()]
  
}

extension Featured: SQLiteModel {}
extension Featured: Migration {}
