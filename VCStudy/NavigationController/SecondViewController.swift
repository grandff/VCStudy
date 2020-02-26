//
//  SecondViewController.swift
//  VCStudy
//
//  Created by 김정민 on 2020/02/26.
//  Copyright © 2020 kjm. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    /*
     Navigation 컨트롤 기초
     1. navigation를 통해 연결된 뷰는 상단에 back 버튼을 통해 이전 페이지로 이동 가능
     2. 코드를 통해 back 기능을 구현할 수 있음
     */
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // 두번째 뷰로 이동하도록 unwind 선언
    @IBAction func unwindToSecond(_ unwindSegue: UIStoryboardSegue) {
        
    }
    
    // 코드를 통해 네비게이션을 연결 후 페이지 이동
    @IBAction func pushThird(_ sender: Any) {
        guard let thirdVC = storyboard?.instantiateViewController(withIdentifier: "ThirdViewController") else {return}
        navigationController?.pushViewController(thirdVC, animated: true)
    }
    
    // 코드를 통해 back 기능 구현(2)
    @IBAction func pop(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
}
