import UIKit

class PlayerListTableViewController: UITableViewController {
    
    // MARK: Variables
    var playerDataSource = PlayerDataSource()
    var player : Player?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let playerDetailVC = segue.destination as? PlayerDetailsViewController {
            playerDetailVC.player = self.player
        }
    }
}

extension PlayerListTableViewController {
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { playerDataSource.numberOfPlayers() }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlayerCell", for: indexPath) as! PlayerCell
        
        cell.backgroundColor = .white
        cell.player = playerDataSource.player(at: indexPath)
        return cell
    }
    
    
    // MARK: - Table view delegate
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat { 100 }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        self.player = playerDataSource.player(at: indexPath)
        performSegue(withIdentifier: "PlayerChosen", sender: self)
    }
    
}
