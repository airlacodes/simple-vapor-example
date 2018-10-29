import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {

    // MARK: - Movie Routes

    // POST /api/movies
    router.post("api", "movies") { req -> Future<Movie> in
        return try req.content.decode(Movie.self).flatMap(to: Movie.self) { movie in
            return movie.save(on: req)
        }
    }
}
