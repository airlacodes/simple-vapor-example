import Vapor
import FluentSQLite

final class Movie: Codable {
    var id: Int?
    var title: String
    var imddUrl: URL

    init(title: String, imddUrl: URL) {
        self.title = title
        self.imddUrl = imddUrl
    }
}

extension Movie: SQLiteModel {}
extension Movie: Migration {}

