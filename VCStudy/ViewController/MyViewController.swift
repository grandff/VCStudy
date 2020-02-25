//
//  MyViewController.swift
//  VCStudy
//
//  Created by 김정민 on 2020/02/25.
//  Copyright © 2020 kjm. All rights reserved.
//

import UIKit

class MyViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // 코드로 뷰 컨트롤러 생성 후 화면 이동
    @IBAction func fromCode(_ sender: Any) {
        let vc = UIViewController()
        vc.view.backgroundColor = UIColor.red
        
        navigationController?.pushViewController(vc, animated: true)
    }
    
    // 혹은 Nib 으로도 호출 가능
    // let vc = CustomNibViewController(nibName : "NIB_FILE_NAME", bundle : nil)
}
