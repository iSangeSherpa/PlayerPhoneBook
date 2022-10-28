import Foundation

class TeamDataSource {
    
    var teams : [Team]
        
    static func generateTeams() -> [Team] {
        return [
            Team(name: "Milwaukee Bucks", rating: 91),
            Team(name: "Golden State Warriors", rating: 92),
            Team(name: "Boston Celtics", rating: 91),
            Team(name: "Phoenix Suns", rating: 89)
        ]
    }
    
    
    // MARK: Initializers
    
    init() {
        teams = TeamDataSource.generateTeams()
    }
    
    
    // MARK: Data Source Methods
    
    func numberOfTeams() -> Int {
        teams.count
    }
    
    func team(at indexPath: IndexPath) -> Team {
        teams[indexPath.row]
    }
}
