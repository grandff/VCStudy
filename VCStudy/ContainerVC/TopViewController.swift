//
//  TopViewController.swift
//  VCStudy
//
//  Created by 김정민 on 2020/02/25.
//  Copyright © 2020 kjm. All rights reserved.
//

import UIKit

class TopViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
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
