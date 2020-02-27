//
//  SecondToolbarViewController.swift
//  VCStudy
//
//  Created by 김정민 on 2020/02/27.
//  Copyright © 2020 kjm. All rights reserved.
//

import UIKit

class SecondToolbarViewController: UIViewController {

    /*
        네비게이션바에서 툴바 사용
     1. 스토리보드의 navigation bar에서 show toolbar를 체크하면 툴바 사용 가능
     2. 아이템을 넣을땐 flexible bar 를 통해 너비를 조절할 수 있음
     --> bar item을 추가하면 자동으로 툴바로 들어감
     3. 코드를 통해 툴바의 버튼 추가 및 툴바 보여주는 액션 처리
     --> 네비게이션바에 버튼을 추가해서 액션으로 넣어줌
     */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 툴바에 버튼 추가(3)
        let flexibleSpaceItem = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let addItem = UIBarButtonItem(barButtonSystemItem: .add, target: nil, action: nil)
        let trashItem = UIBarButtonItem(barButtonSystemItem: .trash, target: nil, action: nil)
        
        setToolbarItems([addItem,flexibleSpaceItem,trashItem], animated: true)
    }

    // 툴바 show action (3)
    @IBAction func toggleToolbar(_ sender: Any) {
        let hidden = navigationController?.isToolbarHidden ?? false
        navigationController?.setToolbarHidden(!hidden, animated: true)
    }
}
