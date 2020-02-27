//
//  CustomizingViewController.swift
//  VCStudy
//
//  Created by 김정민 on 2020/02/27.
//  Copyright © 2020 kjm. All rights reserved.
//

import UIKit

class CustomizingViewController: UIViewController {

    /*
        네비게이션 컨트롤라 커스터마이즈
     1. 스토리보드의 Hide Bars 옵션을 통해 커스텀할 수 있음
     --> keyboard appears :: 키보드 상태에 따라 네비게이션바 토글
     --> vertically compact :: 가로화면에서 네비게이션바가 표시 안되게
     2. 네비게이션 바의 색상을 그대로 이어받음
     --> 여기선 틴트 색, 그림자, 백버튼 설정 등 여러가지 설정해봄
     3. ios 11 부터는 large title 옵션을 설정할 수 있음
     --> 스토리보드, 코드 둘다 구현 가능
     4. 코드로 네비게이션 라지 타이틀 속성 설정
     */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 자꾸 풀스크린안되서 개 빡칠땐 present modally를 해주고 풀스크린 선택해주기(참고 : https://stackoverflow.com/questions/56435510/presenting-modal-in-ios-13-fullscreen)
        
        // large title 속성 코드로 구현(3)
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.largeTitleDisplayMode = .automatic
        
        // 네비게이션 라지 타이틀 속성 설정 (4)
        var attrs = [NSAttributedString.Key : Any]()
        attrs[.font] = UIFont.boldSystemFont(ofSize: 60)
        attrs[.foregroundColor] = UIColor.black
        
        let shadow = NSShadow()
        shadow.shadowOffset = CGSize(width: 3, height: 3)
        shadow.shadowColor = UIColor.white
        attrs[.shadow] = shadow
        
        navigationController?.navigationBar.largeTitleTextAttributes = attrs
    }

}
