//
//  FirstViewController.swift
//  VCStudy
//
//  Created by 김정민 on 2020/02/26.
//  Copyright © 2020 kjm. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    /*
        네비게이션 바와 아이템 기본
     1. 스토리보드에 기본 기능을 확인하기 위해 버튼과 스위치 추가
     2. 스위치의 액션에 따라 버튼 처리를 위한 action 연결
     3. 연결된 뷰의 back 버튼을 바꾸려면 루트뷰에서 바꿔줘야함
     */
    
    // (2). sender는 switch로 변경
    @IBAction func switchChanged(_ sender: UISwitch) {
        // 스위치에 따라 버튼 숨김 처리
        switch sender.isOn{
        case true:
            // 왼쪽 버튼 숨김 처리
            navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: nil, action: nil)
            
            // 오른쪽에 새로운 버튼 추가
            if var list = navigationItem.rightBarButtonItems{
                let btn = UIBarButtonItem(title: "Item", style: .plain, target: nil, action: nil)
                // 오른쪽은 왼쪽과 반대로 배열에 추가된 순서대로 오른쪽에 추가됨
                // 따라서 배열의 마지막 부분에 버튼을 추가해야함
                list.append(btn)
                navigationItem.rightBarButtonItems = list
            }
        case false:
            // 버튼 제거
            navigationItem.leftBarButtonItem = nil
            
            // 오른쪽은 스위치를 제외한 나머지를 제거
            let list = navigationItem.rightBarButtonItems?.dropLast()
            navigationItem.rightBarButtonItems = Array(list!)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // back 버튼 명칭 변경 (3)
        navigationItem.backBarButtonItem?.title = "Go Back"
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
