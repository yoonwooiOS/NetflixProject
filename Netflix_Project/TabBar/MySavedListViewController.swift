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
        
        labelUiDesign(labelName: titleLabel, labelText: "저장한 콘텐츠 목록", labellines: 0, labelTextColor: .white, fontSize: 30, textAlignmnet: .center)

        labelUiDesign(labelName: firstExplainLabel, labelText: "'나만의 자동 저장'기능", labellines: 0, labelTextColor: .white, fontSize: 20, textAlignmnet: .center)
        
        labelUiDesign(labelName: secondExplainLabel, labelText: "취향에 맞는 영화와 시리즈를 자동으로 저장해 드립니다.\n디바이스에 언제나 시정할 콘텐츠가 준비되니 지루할 틈이\n없어요", labellines: 0, labelTextColor: .gray, fontSize: 14, textAlignmnet: .center)
    
        imageViewDesign(imageViewName: savedImageView, imageName: "dummy", contentMode: .center)
       
        buttonUiDesign(buttonName: settingButton, buttonTitle: "설정하기", buttonBackgroundColor: UIColor.systemBlue, titleColor: UIColor.white)

        buttonUiDesign(buttonName: checkSaveableContentButton, buttonTitle: "저장 가능한 콘텐츠 살펴보기", buttonBackgroundColor: UIColor.white, titleColor: UIColor.black)
        
    }
    func labelUiDesign(labelName:UILabel, labelText: String, labellines line:Int, labelTextColor color:UIColor, fontSize size:Int, textAlignmnet:NSTextAlignment) {
        labelName.text =
        "\(labelText)"
        labelName.numberOfLines = line
        labelName.textColor = color
        labelName.font = .systemFont(ofSize: CGFloat(size))
        labelName.textAlignment = textAlignmnet
    }
    func imageViewDesign(imageViewName name:UIImageView, imageName:String, contentMode:UIView.ContentMode ) {
        name.image = UIImage(named: imageName)
        name.contentMode = contentMode
        name.layer.cornerRadius = 7
    }
    func buttonUiDesign(buttonName name:UIButton, buttonTitle title:String, buttonBackgroundColor bgColor:UIColor, titleColor:UIColor) {
        name.setTitle(title, for: .normal)
        name.backgroundColor = bgColor
        name.setTitleColor(titleColor, for: .normal)
        name.layer.cornerRadius = 7
        
        
    }

}
