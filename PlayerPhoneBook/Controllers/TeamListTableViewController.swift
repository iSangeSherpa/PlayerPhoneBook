import UIKit

class TeamListTableViewController: UITableViewController {
    
    var teamDataSource = TeamDataSource()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
    }
}

extension TeamListTableViewController {
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        teamDataSource.numberOfTeams()
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TeamCell", for: indexPath) as! TeamCell
        
        cell.backgroundColor = .white
        cell.team = teamDataSource.team(at: indexPath)
        return cell
    }
    
    
    // MARK: - Table view delegate
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath:IndexPath) -> CGFloat { return 100 }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let vc = storyboard.instantiateViewController(withIdentifier: "PlayerListVC") as? PlayerListTableViewController,
           let navigator = navigationController {
               navigator.pushViewController(vc, animated: true)
            navigator.title = "Player List"
        }
    }
}
