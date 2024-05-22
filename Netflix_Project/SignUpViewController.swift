//
//  SignUpViewController.swift
//  Netflix_Project
//
//  Created by 김윤우 on 5/16/24.
//

import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet var backgroundView: UIView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var idTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    @IBOutlet var nicknameTextField: UITextField!
    
    @IBOutlet var promoCodeTextField: UITextField!
    
    
    @IBOutlet var locationTextField: UITextField!
    
    @IBOutlet var signUpButton: UIButton!
    
    
    @IBOutlet var moreInformationButton: UIButton!
    @IBOutlet var signUpViewSwtich: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        backgroundView.backgroundColor = .black
        textFieldUiInitialize()
        buttonUiInitialize()
        switchUiDesign()
    }
    func labeUiDesign(titleName:UILabel, titleText text:String, titleColor:UIColor, titleFontSize size:Int) {
        titleName.text = text
        titleName.tintColor = titleColor
        titleName.textAlignment = .center
        titleName.font = UIFont.systemFont(ofSize: CGFloat(size))
    }
    func textFieldUiDesign(textFieldName:UITextField, placehorderText:String, textFieldtextColor:UIColor, textAlignment:NSTextAlignment, placehorderTextcolor:UIColor,  backgroundColor:UIColor, isSecureText:Bool) {
        textFieldName.textColor = textFieldtextColor
        textFieldName.textAlignment = textAlignment
        textFieldName.attributedPlaceholder = NSAttributedString(
            string: placehorderText, attributes: [NSAttributedString.Key.foregroundColor: placehorderTextcolor])
        textFieldName.backgroundColor = backgroundColor
        textFieldName.isSecureTextEntry = isSecureText
        textFieldName.font = UIFont.systemFont(ofSize: 12)
        
    }
    
    func buttonUiDeisign(buttonName name:UIButton, buttonTitle:String, buttonTitleColor titleColor:UIColor, buttonBackgroundColor color:UIColor) {
        name.setTitle(buttonTitle, for: .normal)
        name.backgroundColor = color
        name.setTitleColor(titleColor, for: .normal)
        name.titleLabel?.font = UIFont.systemFont(ofSize: 12)
        name.layer.cornerRadius = 7
    }
    
    func switchUiDesign() {
        signUpViewSwtich.onTintColor = UIColor.green
        signUpViewSwtich.thumbTintColor = UIColor.white
    }
    
    func textFieldUiInitialize() {
        textFieldUiDesign(textFieldName: idTextField , placehorderText: "이메일 주소 또는 전화번호", textFieldtextColor: .white, textAlignment: .center, placehorderTextcolor: .white, backgroundColor: .lightGray, isSecureText: false)
        textFieldUiDesign(textFieldName: passwordTextField, placehorderText: "비밀번호", textFieldtextColor: .white, textAlignment: .center, placehorderTextcolor: .white, backgroundColor: .lightGray, isSecureText: true)
        textFieldUiDesign(textFieldName: nicknameTextField, placehorderText: "닉네임", textFieldtextColor: .white, textAlignment: .center, placehorderTextcolor: .white, backgroundColor: .lightGray, isSecureText: false)
        textFieldUiDesign(textFieldName: locationTextField, placehorderText: "위치", textFieldtextColor: .white, textAlignment: .center, placehorderTextcolor: .white, backgroundColor: .lightGray, isSecureText: false)
        textFieldUiDesign(textFieldName: promoCodeTextField, placehorderText: "추천 코드 입력", textFieldtextColor: .white, textAlignment: .center, placehorderTextcolor: .white, backgroundColor: .lightGray, isSecureText: false)
        textFieldUiDesign(textFieldName: nicknameTextField, placehorderText: "닉네임", textFieldtextColor: .white, textAlignment: .center, placehorderTextcolor: .white, backgroundColor: .lightGray, isSecureText: false)
    }
    func buttonUiInitialize() {
        buttonUiDeisign(buttonName: signUpButton, buttonTitle: "회원가입", buttonTitleColor: .black, buttonBackgroundColor: .white)
        buttonUiDeisign(buttonName: moreInformationButton, buttonTitle: "추가정보 입력", buttonTitleColor: .white, buttonBackgroundColor: .black)
    }
    func labelUiInitialize() {
        labeUiDesign(titleName: titleLabel, titleText: "YUNFLIX", titleColor: .red, titleFontSize: 40)
        
    }
}




