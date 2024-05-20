//
//  HomeViewController.swift
//  Netflix_Project
//
//  Created by 김윤우 on 5/16/24.
//
//        let playSymbols = "􀊄"
        
        //sfsymbols + text 같이 사용법 찾기
//        nowPlayButton.setTitle("\(playSymbols)" + "재생", for: .normal)
//        nowPlayButton.setTitleColor(.black, for: .normal)
//        nowPlayButton.backgroundColor = .white
//        nowPlayButton.layer.cornerRadius = 3

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
    
    @IBOutlet var newEpisodeImage: UIImageView!
    
    @IBOutlet var topTenImage: UIImageView!
    @IBOutlet var nowPlayingImage: UIImageView!
    
    
    var movies = ["극한직업", "도둑들", "명량", "베테랑", "부산행", "신과함께인과연", "신과함께죄와벌", "아바타", "알라딘", "암살", "어벤져스엔드게임", "왕의남자"]
    
    var imageBagge = ["","blue", "top10badge", "wordmark"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        homeView.backgroundColor = .black
        labelUiDesign(labelName: userIdLabel, labelText: "김윤우님", labelTextColor: .white, labelFontSize: 25, textAlignment: .center)
        
        movieView.image = UIImage(named: "명량")
        movieView.contentMode = .scaleToFill
        movieView.layer.cornerRadius = 7
        
        labelUiDesign(labelName: describeMovieLabel, labelText: "응원하고픈 흥미진진 사극 전투", labelTextColor: .white, labelFontSize: 15, textAlignment: .center)
        labelUiDesign(labelName: suggestContentsLabel , labelText: "지금 뜨는 콘텐츠", labelTextColor: .white, labelFontSize: 13, textAlignment: .left)
        
        playButton(buttonName: nowPlayButton, buttonImage: "play", backgroundColor: .white, buttonTitle: "재생", tintColor: .black)
        
        favoriteButton(button: myFavoriteButton, buttonTitle: "+ 내가 찜한 리스트", buttonTitleColor: .white)
        
        buttonUIDesign(imageView: suggestFirstImageView, imageName: "육사오")
        buttonUIDesign(imageView: suggestSecondImageView, imageName: "범죄도시3")
        buttonUIDesign(imageView: suggestThirdImageView, imageName: "스즈메의문단속")
        
        buttonUIDesign(imageView: newEpisodeImage, imageName: "blue")
        buttonUIDesign(imageView: topTenImage, imageName: "top10badge")
        buttonUIDesign(imageView: nowPlayingImage, imageName: "wordmark")
        
        
    }
    
    @IBAction func playButtonTapped(_ sender: UIButton) {
        let randomNumber = Int.random(in: 0...11)
        print(randomNumber)
        movieView.image = UIImage(named: "\(movies[randomNumber])")
        describeMovieLabel.text = ""
        
        var randomBaggeNumber = Int.random(in: 0...3)
        newEpisodeImage.image = UIImage(named: "\(imageBagge[randomBaggeNumber])")
        
        randomBaggeNumber = Int.random(in: 0...3)
        
        topTenImage.image = UIImage(named: "\(imageBagge[randomBaggeNumber])")
        randomBaggeNumber = Int.random(in: 0...3)
        
        nowPlayingImage.image = UIImage(named: "\(imageBagge[randomBaggeNumber])")
        randomBaggeNumber = Int.random(in: 0...3)
        
        
        
    }
    func buttonUIDesign( imageView:UIImageView ,imageName image:String) {
        imageView.image = UIImage(named: "\(image)")
        imageView.layer.cornerRadius = 7
        
    }
    func playButton(buttonName:UIButton, buttonImage:String, backgroundColor:UIColor, buttonTitle title:String, tintColor:UIColor ) {
        
        buttonName.setImage(UIImage(named: "\(buttonImage)"), for: .normal)
        buttonName.backgroundColor = backgroundColor
        buttonName.setTitle("\(title)", for: .normal)
        buttonName.tintColor = tintColor
        buttonName.layer.cornerRadius = 7
    }
    
    func favoriteButton(button:UIButton, buttonTitle title:String, buttonTitleColor color:UIColor) {
        button.setTitle("\(title)", for: .normal)
        button.setTitleColor(color, for: .normal)
        button.backgroundColor = .darkGray
        button.layer.cornerRadius = 7
    }
    
    func labelUiDesign(labelName:UILabel, labelText text:String, labelTextColor color:UIColor, labelFontSize size:Int, textAlignment:NSTextAlignment ) {
        labelName.text = "\(text)"
        labelName.textColor = color
        labelName.textAlignment = textAlignment
        labelName.font = .systemFont(ofSize: CGFloat(size))
    }
    
}
