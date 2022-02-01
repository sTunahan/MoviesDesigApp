
import UIKit

protocol MoviesProtocol {
    
    func moviesProtocolMethod(protocolIndex:IndexPath)
}

class MoviesCollectionViewController: UICollectionViewCell {
    
  
    @IBOutlet weak var moviesImageName: UIImageView!
    
    @IBOutlet weak var movieName: UILabel!
    
    @IBOutlet weak var movieFee: UILabel!
    
    var cellProtocol:MoviesProtocol?
    var receivedIndex:IndexPath?
    
    
    @IBAction func addBasketButton(_ sender: Any) {
        
        
        cellProtocol?.moviesProtocolMethod(protocolIndex: receivedIndex!)
    }
    
}
