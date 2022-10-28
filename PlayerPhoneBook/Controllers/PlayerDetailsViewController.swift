import UIKit

class PlayerDetailsViewController: UIViewController {
    
    var player : Player?
    
    // MARK: Outlets
    
    @IBOutlet var playerImage : UIImageView!
    @IBOutlet var playerNameLabel : UILabel!
    @IBOutlet var playerAgeLabel : UILabel!
    @IBOutlet var playerTeamLabel : UILabel!
    @IBOutlet var playerNationalityLabel : UILabel!
    
    @IBAction func backToPlayerList(_ segue: UIStoryboardSegue) {}

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        playerImage.image = UIImage(named: "\(player!.name)")
        playerNameLabel.text = "\(player!.name)"
        playerAgeLabel.text = String("\(player!.age)")
        playerTeamLabel.text = "\(player!.team)"
        playerNationalityLabel.text = "\(player!.nationality)"
    }
    
}
