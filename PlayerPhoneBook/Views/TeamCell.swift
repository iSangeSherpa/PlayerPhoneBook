import UIKit

class TeamCell: UITableViewCell {
    
    @IBOutlet var teamNameLabel : UILabel!
    @IBOutlet var teamRatingLabel : UILabel!
    @IBOutlet var teamImage : UIImageView!
    
    var team : Team? {
        didSet {
            guard let team = team else { return }
            
            teamNameLabel.text = team.name
            teamRatingLabel.text = "Rating: \(String(team.rating))"
            teamImage.image = UIImage(named: "\(team.name)")
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
