//
//  SignUpViewController.swift
//  Netflix_Project
//
//  Created by 김윤우 on 5/16/24.
//

import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet var idTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    @IBOutlet var nicknameTextField: UITextField!
    
    @IBOutlet var promoCode: UITextField!
    
    @IBOutlet var freeButton: UIButton!
    
    @IBOutlet var signUpButton: UIButton!
    
    
    @IBOutlet var moreInformationButton: UIButton!
    @IBOutlet var signUpViewSwtich: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        idTextField.placeholder = "이메일 주소 또는 전화번호"
        idTextField.textColor = UIColor.white
        idTextField.backgroundColor = UIColor.lightGray
        
        passwordTextField.placeholder = "비밀번호"
        passwordTextField.textColor = UIColor.white
        passwordTextField.backgroundColor = UIColor.lightGray
        passwordTextField.isSecureTextEntry = true
        
        nicknameTextField.placeholder = "닉네임"
        nicknameTextField.textColor = UIColor.white
        nicknameTextField.backgroundColor = UIColor.lightGray
        
        promoCode.placeholder = "추천 코드"
        promoCode.textColor = UIColor.white
        promoCode.backgroundColor = UIColor.lightGray
        
        nicknameTextField.placeholder = "닉네임"
        nicknameTextField.textColor = UIColor.white
        nicknameTextField.backgroundColor = UIColor.lightGray
        
        
        freeButton.setTitle("30분 둘러보기", for: .normal)
        freeButton.backgroundColor = UIColor.lightGray
        freeButton.setTitleColor(UIColor.white, for: .normal)
        freeButton.layer.cornerRadius = 7
        
        signUpButton.setTitle("회원가입", for: .normal)
        signUpButton.backgroundColor = UIColor.white
        signUpButton.setTitleColor(UIColor.black, for: .normal)
        signUpButton.layer.cornerRadius = 7
        
        moreInformationButton.setTitle("추가정보 입력", for: .normal)
        moreInformationButton.setTitleColor(UIColor.white, for: .normal)
        moreInformationButton.layer.cornerRadius = 7
    }
    

    }
    
   


