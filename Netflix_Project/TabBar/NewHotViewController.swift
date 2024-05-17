//
//  NewHotViewController.swift
//  Netflix_Project
//
//  Created by 김윤우 on 5/16/24.
//

import UIKit

class NewHotViewController: UIViewController {

    @IBOutlet var newHotView: UIView!
    
    @IBOutlet var titleLabel: UILabel!
    
    @IBOutlet var searchTextField: UITextField!
    
    @IBOutlet var toBeReleasedButton: UIButton!
    @IBOutlet var toBeReleasedButtonImage: UIImageView!
    
    @IBOutlet var popularButton: UIButton!
    @IBOutlet var popularButtonImage: UIImageView!
    
    @IBOutlet var topSeriesButton: UIButton!
    @IBOutlet var topSeriesButtonImage: UIImageView!
    
    @IBOutlet var firstResultLabel: UILabel!
    @IBOutlet var secondResultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        newHotView.backgroundColor = .black
        
        titleLabel.text = "NEW & HOT 검색"
        titleLabel.textColor = .white
        titleLabel.font = .systemFont(ofSize: 30)
        titleLabel.textAlignment = .center
        
        searchTextField.backgroundColor = .darkGray
        searchTextField.placeholder = "게임, 시리즈, 영화를 검색하세요."
        
//        toBeReleasedButtonImage.image = UIImage(named: "blue")
        toBeReleasedButton.setImage(UIImage(named: "blue"), for: .normal)
        toBeReleasedButton.setTitleColor(UIColor.black, for: .normal)
        toBeReleasedButton.backgroundColor = .white
        toBeReleasedButton.layer.cornerRadius = 10
        toBeReleasedButton.setTitle("공개 예정", for: .normal)
     
        
        popularButton.setImage(UIImage(named: "turquoise"), for: .normal)
        popularButton.setTitleColor(UIColor.white, for: .normal)
        popularButton.setTitle("모두의 인기 콘텐츠", for: .normal)
        
        topSeriesButton.setImage(UIImage(named: "pink"), for: .normal)
        topSeriesButton.setTitleColor(UIColor.white, for: .normal)
        topSeriesButton.layer.cornerRadius = 10
        topSeriesButton.setTitle("TOP 10 시리즈", for: .normal)
        
        firstResultLabel.text =
        "이런! 찾으시는 작품이 없습니다."
        firstResultLabel.textColor = .white
        firstResultLabel.font = .systemFont(ofSize: 25)
        firstResultLabel.textAlignment = .center
        
        secondResultLabel.text =
        "다른 영화, 시리즈, 배우 , 감독 또는 장르를 검색해보세요."
        secondResultLabel.textColor = .darkGray
        secondResultLabel.font = .systemFont(ofSize: 13)
        secondResultLabel.textAlignment = .center
        
//        toBeReleasedButton.contentHorizontalAlignment = .right
        
    }
    

    

}
