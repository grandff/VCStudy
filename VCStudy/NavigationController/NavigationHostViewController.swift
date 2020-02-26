//
//  NavigationHostViewController.swift
//  VCStudy
//
//  Created by 김정민 on 2020/02/26.
//  Copyright © 2020 kjm. All rights reserved.
//

import UIKit

class NavigationHostViewController: UIViewController {

    /*
        Navigation 컨트롤 기초
     1. Segue로 페이지간 이동 시킬 수 있음(스토리보드에서 연결)
     2. 코드로도 이를 구현할 수 있음
     
     */
    
    // 코드로 네비게ㅣㅇ션 컨트롤러를 찾아 연결 후 이동
    @IBAction func presentNavigationController(_ sender: Any) {
        guard let rootVC = storyboard?.instantiateViewController(withIdentifier: "FirstViewController") else{return}    // 이때 스토리보드 아이디가 해당 아이디로 지정되어 있어야함
        let nav = UINavigationController(rootViewController: rootVC)
        present(nav, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
