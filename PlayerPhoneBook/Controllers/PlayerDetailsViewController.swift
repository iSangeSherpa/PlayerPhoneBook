import UIKit

class PlayerDetailsViewController: UIViewController {
    
    var player : Player?
    
    // MARK: Outlets
    
    @IBOutlet var playerImage : UIImageView!
    @IBOutlet var playerNameLabel : UILabel!
    @IBOutlet var playerAgeLabel : UILabel!
    @IBOutlet var playerTeamLabel : UILabel!
    @IBOutlet var playerNationalityLabel : UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        playerImage.image = UIImage(named: "\(player!.name)")
        playerNameLabel.text = "Name: \(player!.name)"
        playerAgeLabel.text = String("Age: \(player!.age)")
        playerTeamLabel.text = "Team: \(player!.team)"
        playerNationalityLabel.text = "Nationality: \(player!.nationality)"
    }
    
}
