//
//  HomeViewController.swift
//  Netflix_Project
//
//  Created by 김윤우 on 5/16/24.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet var homeView: UIView!
    @IBOutlet var userIdLabel: UILabel!
    
    @IBOutlet var movieView: UIImageView!
    @IBOutlet var describeMovieLabel: UILabel!
    
    @IBOutlet var homeViewTabbar: UITabBarItem!
    @IBOutlet var suggestContentsLabel: UILabel!
    
    @IBOutlet var suggestFirstImageView: UIImageView!
    @IBOutlet var suggestSecondImageView: UIImageView!
    @IBOutlet var suggestThirdImageView: UIImageView!
    
    @IBOutlet var nowPlayButton: UIButton!
    
    @IBOutlet var myFavoriteButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        homeView.backgroundColor = .black
        
        userIdLabel.text = "김윤우님"
        userIdLabel.textColor = .white
        userIdLabel.font = .systemFont(ofSize: 30)
        userIdLabel.textAlignment = .center
        
        movieView.image = UIImage(named: "명량")
        movieView.contentMode = .scaleToFill
        movieView.layer.cornerRadius = 7
        
        describeMovieLabel.text = "응원하고픈 흥미진진 사극 전투"
        describeMovieLabel.textAlignment = .center
        describeMovieLabel.textColor = .white
        describeMovieLabel.font = .systemFont(ofSize: 13)
        
//        let playSymbols = "􀊄"
        
        //sfsymbols + text 같이 사용법 찾기
//        nowPlayButton.setTitle("\(playSymbols)" + "재생", for: .normal)
//        nowPlayButton.setTitleColor(.black, for: .normal)
//        nowPlayButton.backgroundColor = .white
//        nowPlayButton.layer.cornerRadius = 3
        nowPlayButton.setImage(UIImage(named: "play"), for: .normal)
        nowPlayButton.backgroundColor = .white
        nowPlayButton.setTitle("재생", for: .normal)
        nowPlayButton.setTitleColor(.black, for: .normal)
        nowPlayButton.layer.cornerRadius = 7
        
        myFavoriteButton.setTitle("+ 내가 찜한 리스트", for: .normal)
        myFavoriteButton.setTitleColor(.white, for: .normal)
        myFavoriteButton.backgroundColor = .darkGray
        myFavoriteButton.layer.cornerRadius = 7
        
        suggestContentsLabel.text = "지금 뜨는 콘텐츠"
        suggestContentsLabel.textColor = .white
        suggestContentsLabel.textAlignment = .left
        
        suggestFirstImageView.image = UIImage(named: "육사오")
        suggestFirstImageView.layer.cornerRadius = 7
        suggestSecondImageView.image = UIImage(named: "범죄도시3")
        suggestSecondImageView.layer.cornerRadius = 7
        suggestThirdImageView.image = UIImage(named: "스즈메의문단속")
        suggestThirdImageView.layer.cornerRadius = 7
    }
    
    

   

}
