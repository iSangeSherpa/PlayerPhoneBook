import UIKit

class PlayerCell: UITableViewCell {

    @IBOutlet var playerNameLabel : UILabel!
    @IBOutlet var playerNationalityLabel : UILabel!
    @IBOutlet var playerImage : UIImageView!
    
    var player : Player? {
        didSet {
            guard let player = player else { return }
            
            playerNameLabel.text = player.name
            playerNationalityLabel.text = String(player.age)
            playerImage.image = UIImage(named: "\(player.name)")
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }



}

