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
    
    /*
       네비게이션 바와 아이템 기본
     1. back 버튼이 있는 상태에서 아이템을 추가하면 백버튼이 사라지고 새로 추가한 버튼으로 대체됨
     --> 이 경우에는 이전으로 돌아가는 기능을 코드로 구현해야함
     --> 함께 표시하고 싶으면 Left items Supplement를 체크해야함(Attribute)
     2. 코드로 네비게이션 아이템 추가
     --> 메서드 구현 후 viewDidLoad에서 호출해야함
    */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 코드로 back 버튼과 버튼이 같이 표시되도록 설정 (2-1)
        navigationItem.leftItemsSupplementBackButton = true
        // 새로운 버튼 생성 (2-2)
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addRightButtons))
        
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
    
    // 오른쪽에 버튼 추가하는 메서드(2-2)
    @objc func addRightButtons(){
        let btn1 = UIBarButtonItem(barButtonSystemItem: .action, target: nil, action: nil)
        let btn2 = UIBarButtonItem(title: "Two", style: .plain, target: nil, action: nil)
        
        // switch는 직접 추가를 못하기 때문에 embed해서 추가해야함
        let sw = UISwitch()
        let switchItem = UIBarButtonItem(customView: sw)
        
        // 애니메이션 효과를 줘서 네비게이션에 추가
        navigationItem.setRightBarButtonItems([switchItem, btn1, btn2], animated: true)
    }
    
}
