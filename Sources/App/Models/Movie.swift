import Vapor
import FluentSQLite

final class Movie: Codable {
    var id: Int?
    var title: String
    var imbdUrl: URL

    init(title: String, imbdUrl: URL) {
        self.title = title
        self.imbdUrl = imbdUrl
    }
}

extension Movie: SQLiteModel {}
extension Movie: Migration {}
extension Movie: Content {}
