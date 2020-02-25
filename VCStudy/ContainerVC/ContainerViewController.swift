//
//  ContainerViewController.swift
//  VCStudy
//
//  Created by 김정민 on 2020/02/25.
//  Copyright © 2020 kjm. All rights reserved.
//

import UIKit

class ContainerViewController: UIViewController {

    /*
        컨테이너 뷰 활용
     1. 스토리보드 기본 레이아웃 설정
     --> 상단의 뷰는 꼭 컨테이너 뷰로 해주고, 코드로 컨테이너를 구현하기 위해 뷰 하나를 더 만들어줌
     --> 각각 top, bottom vc를 만들어줌
     2. 코딩으로 컨테이너 뷰 생성하고 자식으로 bottom view를 넣을 수 있음
     --> 이때 넣으려는 view의 스토리보드 아이디를 꼭 지정해줘야함
     3. child 객체를 제거할 수 있음
     4. 뷰 계층에서도 제거할 수 있음
     --> Bottom 컨트롤러에서 구현
     5. willMove와 didMove로 컨테이너에 추가되거나 삭제되려 하는 시점을 알 수있음
     --> 이때 코드로 추가한 뷰는 didMove 를 child 추가 후 코드로 추가해야하고
     --> 스토리보드에서 추가한 뷰는 willMove를 삭제되기 전에 호출해야지 정상 확인 가능
     */
    
    // 코드로 컨테이너 뷰 기능 구현을 위한 view
    @IBOutlet weak var bottomContainer: UIView!
    
    // child 제거(3)
    @objc func removeChild(){
        for vc in children{
            vc.willMove(toParent: nil)  // 제거 되기 전에 호출(5)
            vc.view.removeFromSuperview()
            vc.removeFromParent()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // child 객체 제거를 위한 버튼 추가
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .trash, target: self, action: #selector(removeChild))
        
        // 컨테이너 뷰 생성(2)        
        if let childVC = storyboard?.instantiateViewController(identifier: "BottomViewController"){
            addChild(childVC) // 실제로 표시까진 안됨
            
            // didmove 직접 호출
            childVC.didMove(toParent: self)   // 만약 트랜지션을 구현했다면 트랜지션이 호출되고 나서 didmove를 호출해야함(5)
            
            childVC.view.frame = bottomContainer.bounds
            bottomContainer.addSubview(childVC.view)
            // 위의 두코드까지 표시해야 화면까지 표시됨
            
        }
    }
    
    

}

extension ContainerViewController{
    // 상태 확인을 위한 코드
    override var description: String{
        return String(describing: type(of: self))
    }
}
