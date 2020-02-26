//
//  FourthViewController.swift
//  VCStudy
//
//  Created by 김정민 on 2020/02/26.
//  Copyright © 2020 kjm. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {

    
    /*
     Navigation 컨트롤 기초
     1. 루트 뷰나 특정 뷰로 다시 이동하도록 구현할 수 있ㅇ므
     2. 세그웨이를 사용하려면 이동하려는 뷰에 unwind 메서드를 추가하고 EXIT에 연결
     3. 혹은 코드로도 류트뷰 또는 특정뷰로 이동할 수 있음
     */
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    // 코드를 통해 루트뷰로 이동(3)
    @IBAction func popToRoot(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
    // 코드를 통해 특정뷰로 이동(3)
    @IBAction func popToSecond(_ sender: Any) {
        // 특정 뷰로 가려면 특정 뷰를 찾아서 값을 넘겨줘야함
        guard let secondVC = navigationController?.viewControllers.first(where: {$0 is ThirdViewController}) else{return}
        
        // 이동
        navigationController?.popToViewController(secondVC, animated: true)
    }
    
}
