
import UIKit

class StockHomeScreenViewController: UIViewController {
    
    // MARK: @IbOutlets and Properties
    
    var ViewModel = StockQuotesViewModel()
    
    @IBOutlet weak private var stockQuotesTableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        setupNavigationbar()
        fetchStockResponse()
        
    }

    private func fetchStockResponse(){
    }
    
    private func setupNavigationbar() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(wishListBtnTap))
    }
    
    private func setupTableView(){
        self.stockQuotesTableView.register(UINib(nibName: "StockQuotesTableViewCell", bundle: nil), forCellReuseIdentifier: "StockQuotesTableViewCell")
        self.stockQuotesTableView.delegate = self
        self.stockQuotesTableView.dataSource = self
        
    }
    
    @objc private func wishListBtnTap() {
        
    }

}

extension StockHomeScreenViewController: UITableViewDelegate {
    
}


extension StockHomeScreenViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier:  "StockQuotesTableViewCell", for: indexPath) as? StockQuotesTableViewCell else{return UITableViewCell()}
    
        cell.stockChangeImageView.image = UIImage(systemName: "person")
        cell.stockNameLabel.text = "RELI"
        cell.stockchangeLabel.text = "0.5"
        return cell
    }
    
    
}
