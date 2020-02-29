//
//  TabBarHostViewController.swift
//  VCStudy
//
//  Created by 김정민 on 2020/02/29.
//  Copyright © 2020 kjm. All rights reserved.
//

import UIKit

class TabBarHostViewController: UIViewController {
    
    /*
     TabBar Controller 기본 사항
     1. TabBar의 아이콘은 스타일마다 권장되는게 있음. 벗어나면 화면을 넘어감.
     -> Regular Tab bar : 원형 - 25 25, 사각형 - 23 23
     -> Compact Tab bar : 원형 - 18 18, 사각형 - 17 17
     2. TabBar에 쓰일 이미지는 되도록 모양만으로 파악할 수 있어야 되는 간단한 이미지여야함
     3. 만약 이미지 그대로 쓰고 싶으면 이미지 렌더링을 사용해야하는데, assets 들어가서 render as 옵션을 original image로 하면 원본 이미지로 나옴
     4. Tab 갯수 제한을 벗어나면 more로 표시되어 나머지를 볼 수 있음
     --> 되도록 적은 수를 쓰는게 좋음
     --> edit를 누르면 탭바를 편집할 수 있도록 되어 있음
     5. 코드로 TabBar Controller를 만들 수 있음
     */
    
    // 코드로 TabBar 컨트롤러 생성 (5)
    @IBAction func presentTabBarController(_ sender: Any) {
        let firstVC = storyboard?.instantiateViewController(withIdentifier: "FirstTabViewController")
        // TabBar 아이템 설정
        firstVC?.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 0)
        
        let secondVC = storyboard?.instantiateViewController(withIdentifier: "SecondTabViewController")
        let thirdVC = storyboard?.instantiateViewController(withIdentifier: "ThridTabViewController")
        
        let tbc = UITabBarController()
        tbc.viewControllers = [firstVC!, secondVC!, thirdVC!]
        
        present(tbc, animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
