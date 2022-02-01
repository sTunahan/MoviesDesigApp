
import Foundation

class Movie{
    
    var MoviesID:Int?
    var MoviesImageName:String?
    var MoviesTitle:String?
    var MoviesFee:String?
    
    
    init( ){
        
    }
    
    init(MoviesID:Int,MoviesImageName:String,MoviesTitle:String,MoviesFee:String){
        
        self.MoviesID = MoviesID
        self.MoviesImageName = MoviesImageName
        self.MoviesTitle = MoviesTitle
        self.MoviesFee = MoviesFee
    }
}
