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
    
    // plain < ios15+
    // default < legacy
    // 즉, default 스타일을 다루는 버튼 코드와 plain 스타일을 다루는 버튼 코드가 다름
    
    //Image Rendering Mode: templete vs original
    // Asset 인스펙터에서 Original로 설정가능
    // tint color 안에 있는 색 채우기
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
        
        
       
        labelUiInitialize()
        buttonUiInitialize()
        textFieldUiDesign(textFieldName: searchTextField, textFieldBackgroundColor: .darkGray, placeholderTextColor: .white, placehorderText: "게임, 시리즈, 영화를 검색하세요.")
        
     

        
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        
        switch sender.tag {
        case 0:
            toBeReleasedButton.backgroundColor = .white
            toBeReleasedButton.setTitleColor(.black, for: .normal)
            popularButton.backgroundColor = .black
            popularButton.setTitleColor(.white, for: .normal)
            topSeriesButton.backgroundColor = .black
            topSeriesButton.setTitleColor(.white, for: .normal)
        case 1:
            toBeReleasedButton.backgroundColor = .black
            toBeReleasedButton.setTitleColor(.white, for: .normal)
            topSeriesButton.backgroundColor = .black
            topSeriesButton.setTitleColor(.white, for: .normal)
            popularButton.backgroundColor = .white
            popularButton.setTitleColor(.black, for: .normal)
            labelUiDesign(labelName: firstResultLabel, labelText: "준비중입니다!", textColor: .white, fontSize: 25)
            labelUiDesign(labelName: secondResultLabel, labelText: "다른 영화, 시리즈, 배우 , 감독 또는 장르를 검색해보세요.", textColor: .darkGray, fontSize: 13)
        case 2:
            popularButton.backgroundColor = .black
            popularButton.setTitleColor(.white, for: .normal)
            toBeReleasedButton.backgroundColor = .black
            toBeReleasedButton.setTitleColor(.white, for: .normal)
            topSeriesButton.backgroundColor = .white
            topSeriesButton.setTitleColor(.black, for: .normal)
            labelUiDesign(labelName: firstResultLabel, labelText: "조금만 기다려주세요!", textColor: .white, fontSize: 25)
            labelUiDesign(labelName: secondResultLabel, labelText: "다른 영화, 시리즈, 배우 , 감독 또는 장르를 검색해보세요.", textColor: .darkGray, fontSize: 13)
        default:
            return
        }
        
        
    }
    
    func buttonUiInitialize() {
        buttonUiDesign(buttonName: toBeReleasedButton, imageName: "blue", buttonTitleColor: UIColor.black, buttonTitle: "공개 예정", backgourndColor: .white)
        buttonUiDesign(buttonName: popularButton, imageName: "turquoise", buttonTitleColor: UIColor.white, buttonTitle: "모두의 인기 콘텐츠", backgourndColor: .black)
        buttonUiDesign(buttonName: topSeriesButton, imageName: "pink", buttonTitleColor: UIColor.white, buttonTitle: "TOP 10 시리즈", backgourndColor: .black)
        
    }
    
    func labelUiInitialize() {
        labelUiDesign(labelName: titleLabel, labelText: "NEW & HOT 검색", textColor: .white, fontSize: 30)
        
        labelUiDesign(labelName: firstResultLabel, labelText: "이런! 찾으시는 작품이 없습니다.", textColor: .white, fontSize: 25)
        labelUiDesign(labelName: secondResultLabel, labelText: "다른 영화, 시리즈, 배우 , 감독 또는 장르를 검색해보세요.", textColor: .darkGray, fontSize: 13)
    }
    
    
    func buttonUiDesign(buttonName:UIButton, imageName image:String, buttonTitleColor color:UIColor, buttonTitle title:String, backgourndColor bgColor:UIColor) {
        buttonName.setImage(UIImage(named: image), for: .normal)
        buttonName.setTitleColor(color, for: .normal)
        buttonName.backgroundColor = bgColor
        buttonName.titleLabel?.font = .boldSystemFont(ofSize: 12)
        buttonName.layer.cornerRadius = 10
        buttonName.setTitle(title, for: .normal)
    }
    func labelUiDesign(labelName:UILabel, labelText text:String, textColor color:UIColor, fontSize size: Int) {
        labelName.text =
        "\(text)"
        labelName.textColor = color
        labelName.font = .systemFont(ofSize: CGFloat(size))
        labelName.textAlignment = .center
    }
    func textFieldUiDesign(textFieldName:UITextField, textFieldBackgroundColor color:UIColor, placeholderTextColor textColor:UIColor, placehorderText text:String) {
        textFieldName.backgroundColor = color
        textFieldName.textColor = textColor
        textFieldName.attributedPlaceholder = NSAttributedString(string: "\(text)", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
    }

}
