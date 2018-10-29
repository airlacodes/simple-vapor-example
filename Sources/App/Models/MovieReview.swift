import Vapor
import FluentSQLite

final class MovieReview: Codable {

    var id: Int?
    var rating: Double
    var comment: String
    var movieId: Movie.ID

    init(movieId: Movie.ID,
         rating: Double,
         comment: String) {
        self.movieId = movieId
        self.rating = rating
        self.comment = comment
    }
}

extension MovieReview: SQLiteModel {}
extension MovieReview: Migration {}
