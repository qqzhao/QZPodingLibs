//
//  ViewController.swift
//  Example
//
//  Created by qianzhao on 2018/5/10.
//  Copyright © 2018年 qianzhao. All rights reserved.
//

import UIKit
import SnapKit
import RxSwift
import RxCocoa
import QBToast
import QZCommon

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
        configureEvent()
    }
    
    func initUI() -> Void {
        view.addSubview(button1)
        button1.snp.makeConstraints { (maker) in
            maker.width.equalTo(200)
            maker.height.equalTo(60)
            maker.center.equalToSuperview()
        }
    }
    
    func configureEvent() -> Void {
        button1.rx.tap.subscribe(onNext: { () in
            print("test")
            QBToaster.showText("show text", pos: .center)
            let a = TestClass1()
            print("a = \(a)")
        }).disposed(by: disnoseBag)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    let button1: UIButton = {
        let but = UIButton()
        but.backgroundColor = .red;
        but.setTitle("test", for: .normal)
        but.setTitle("testHL", for: .highlighted)
        return but
    }()
    let disnoseBag = DisposeBag()
}

