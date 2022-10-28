import Foundation

class PlayerDataSource {
    
    var players : [Player]
        
    static func generatePlayers() -> [Player] {
        return [
            Player(name: "Giannis Antetokounpo", age: 28, team: "Milwaukee Bucks", nationality: "Greece"),
            Player(name: "Jrue Holiday", age: 34, team: "Milwaukee Bucks", nationality: "USA"),
            Player(name: "Bobby Portis", age: 33, team: "Milwaukee Bucks", nationality: "USA"),
            Player(name: "Khris Middleton", age: 33, team: "Milwaukee Bucks", nationality: "USA"),
            Player(name: "Jordan Nwora", age: 22, team: "Milwaukee Bucks", nationality: "USA")
        ]
    }
    
    
    // MARK: Initializers
    
    init() {
        players = PlayerDataSource.generatePlayers()
    }
    
    
    // MARK: Data Source Methods
    
    func numberOfPlayers() -> Int {
        players.count
    }
    
    func player(at indexPath: IndexPath) -> Player {
        players[indexPath.row]
    }
    
    func player(at index: Int) -> Player {
        players[index]
    }
}
