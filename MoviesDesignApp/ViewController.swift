

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var moviesList = [Movie]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Desing
        
        let design:UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        
        let width = self.collectionView.frame.size.width
        design.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        design.minimumLineSpacing = 10
        design.minimumInteritemSpacing = 10
        
        let cellWidth = (width-30)/2
        
        design.itemSize = CGSize(width: cellWidth , height: (cellWidth*1.7))
        
        collectionView!.collectionViewLayout = design
        
        
        
        let m1 = Movie(MoviesID: 1, MoviesImageName: "django", MoviesTitle: "Django", MoviesFee: "15.99 TL")
        let m2 = Movie(MoviesID: 2, MoviesImageName: "birzamanlaranadoluda", MoviesTitle: "Anadolu", MoviesFee: "13.99 TL")
        let m3 = Movie(MoviesID: 3, MoviesImageName: "inception", MoviesTitle: "Inception", MoviesFee: "18.99 TL")
        let m4 = Movie(MoviesID: 4, MoviesImageName: "interstellar", MoviesTitle: "Interstellar", MoviesFee: "34.99 TL")
        let m5 = Movie(MoviesID: 5, MoviesImageName: "thehatefuleight", MoviesTitle: "The Hateful Eight", MoviesFee: "55.99 TL")
        let m6 = Movie(MoviesID: 6, MoviesImageName: "thepianist", MoviesTitle: "The Pianist", MoviesFee: "75.99 TL")
        
        moviesList.append(m1)
        moviesList.append(m2)
        moviesList.append(m3)
        moviesList.append(m4)
        moviesList.append(m5)
        moviesList.append(m6)
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        
    }


}

extension ViewController : UICollectionViewDelegate,UICollectionViewDataSource,MoviesProtocol{
    func moviesProtocolMethod(protocolIndex: IndexPath) {
        
        let inComminIndex = moviesList[protocolIndex.row]
        
    }
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return moviesList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let inComminIndex = moviesList[indexPath.row] // allows us to access the contents of objects.
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "moviesCellID", for: indexPath) as!
        MoviesCollectionViewController
        
        cell.moviesImageName.image = UIImage(named:inComminIndex.MoviesImageName!)
        cell.movieName.text = inComminIndex.MoviesTitle!
        cell.movieFee.text = inComminIndex.MoviesFee!
        
        cell.layer.borderColor = UIColor.lightGray.cgColor
        cell.layer.borderWidth = 0.5
        
        return cell
    }
    
}
