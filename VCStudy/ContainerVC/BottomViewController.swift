//
//  BottomViewController.swift
//  VCStudy
//
//  Created by 김정민 on 2020/02/25.
//  Copyright © 2020 kjm. All rights reserved.
//

import UIKit

class BottomViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // 루트뷰를 뷰 계층에서도 제거할 수 있음(4)
    @IBAction func removeFromParent(_ sender: Any) {
        view.removeFromSuperview()
        removeFromParent()  // 컨테이너에서 제거
    }
    
    // 컨테이너에 추가되거나 삭제 되려 할때 호출(5)
    override func willMove(toParent parent: UIViewController?) {
        super.willMove(toParent: parent)
        print(String(describing: type(of: self)), #function, parent?.description ?? "nil")
    }
    
    // 컨테이너에 추가되거나 삭제되고 나서 호출(5)
    override func didMove(toParent parent: UIViewController?) {
        super.didMove(toParent: parent)
        print(String(describing: type(of: self)), #function, parent?.description ?? "nil")
    }
}
