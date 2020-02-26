//
//  ThirdViewController.swift
//  VCStudy
//
//  Created by 김정민 on 2020/02/26.
//  Copyright © 2020 kjm. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // 코드로 네비게이션 컨트롤러 연결 후 페이지 이동
    @IBAction func pushFourth(_ sender: Any) {
        guard let fourthVC = storyboard?.instantiateViewController(withIdentifier: "FourthViewController") else {return}
        navigationController?.pushViewController(fourthVC, animated: true)
    }
    

}
