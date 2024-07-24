

import UIKit

class StockQuotesTableViewCell: UITableViewCell {
    
    @IBOutlet weak var stockNameLabel: UILabel!
    @IBOutlet weak var stockchangeLabel: UILabel!
    @IBOutlet weak var stockChangeImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib() // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

       
    }
    
}
