//
//  FirstTabViewController.swift
//  VCStudy
//
//  Created by 김정민 on 2020/02/29.
//  Copyright © 2020 kjm. All rights reserved.
//

import UIKit

class FirstTabViewController: UIViewController {

    /*
        TabBar Controller 기본 사항
     1. TabBar Item은 viewdidload와 awkaenib에서 같이 구현해야함
     --> 시스템 아이콘으로 설정하면 타이틀은 설정할 수 없음
     2. 코드를 통해 다른 탭으로 접근할 수 있음
     */
    
    // 두번째 탭 이동 (2)
    @IBAction func selectSecondTab(_ sender: Any) {
        // child에서 TabBar로 접근하려면 TabBarController로 접근해야함
        guard let secondChild = tabBarController?.viewControllers![1] else{
            return
        }
        
        tabBarController?.selectedViewController = secondChild
    }
    
    // 세번째 탭 이동. 인덱스로 이동 방법 (2)
    @IBAction func selectThirdTab(_ sender: Any) {
        tabBarController?.selectedIndex = 2
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 코드로 TabBar Item 속성 설정(1)
        tabBarItem.title = "First"
        tabBarItem.badgeValue = "HOT"
    }
    
    // viewdidload가 호출되기 전 awakefromnib을 override해서 시스템아이콘을 설정해야함(1)
    override func awakeFromNib() {
        super.awakeFromNib()
        tabBarItem = UITabBarItem(tabBarSystemItem: .downloads, tag: 0)
    }
}
