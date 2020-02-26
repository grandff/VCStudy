//
//  FirstViewController.swift
//  VCStudy
//
//  Created by 김정민 on 2020/02/26.
//  Copyright © 2020 kjm. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // Root View로 이동하도록 unwind 선언
    @IBAction func unwindToFirst(_ unwindSegue: UIStoryboardSegue) {
        
    }
    
    // 코드를 통해 navigtaion 컨트롤러 연결 후 이동
    @IBAction func pushSecond(_ sender: Any) {
        guard let secondVC = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") else {
            return
        }
        
        // push animation을 통해 이동
        navigationController?.pushViewController(secondVC, animated: true)
    }
    
}
