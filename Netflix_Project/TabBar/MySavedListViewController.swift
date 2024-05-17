//
//  MySavedListViewController.swift
//  Netflix_Project
//
//  Created by 김윤우 on 5/16/24.
//

import UIKit

class MySavedListViewController: UIViewController {

    @IBOutlet var MySavedListView: UIView!
    @IBOutlet var titleLabel: UILabel!
    
    
    @IBOutlet var firstExplainLabel: UILabel!
    @IBOutlet var secondExplainLabel: UILabel!
    @IBOutlet var savedImageView: UIImageView!
    
    
    @IBOutlet var settingButton: UIButton!
    @IBOutlet var checkSaveableContentButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        MySavedListView.backgroundColor = .black
        
        titleLabel.text = "저장한 콘텐츠 목록"
        titleLabel.textColor = .white
        titleLabel.font = .systemFont(ofSize: 30)
        titleLabel.textAlignment = .center
        
        firstExplainLabel.text =
        "'나만의 자동 저장'기능"
        firstExplainLabel.textColor = .white
        firstExplainLabel.font = .systemFont(ofSize: 20)
        firstExplainLabel.textAlignment = .center
        
        secondExplainLabel.text =
        "취향에 맞는 영화와 시리즈를 자동으로 저장해 드립니다.\n디바이스에 언제나 시정할 콘텐츠가 준비되니 지루할 틈이\n없어요"
        secondExplainLabel.numberOfLines = 0
        secondExplainLabel.textColor = .gray
        secondExplainLabel.font = .systemFont(ofSize: 14)
        secondExplainLabel.textAlignment = .center
        
        savedImageView.image = UIImage(named: "dummy")
        savedImageView.contentMode = .scaleToFill
        savedImageView.layer.cornerRadius = 7
        
        settingButton.setTitle("설정하기", for: .normal)
        settingButton.backgroundColor = UIColor.systemBlue
        settingButton.setTitleColor(UIColor.white, for: .normal)
        settingButton.layer.cornerRadius = 7
        
        checkSaveableContentButton.setTitle("저장 가능한 콘텐츠 살펴보기", for: .normal)
        checkSaveableContentButton.backgroundColor = UIColor.white
        checkSaveableContentButton.setTitleColor(UIColor.black, for: .normal)
        checkSaveableContentButton.layer.cornerRadius = 7
        
        
    }
    

    

}
