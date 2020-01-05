//
//  ViewController.swift
//  NetworkLayerDemo
//
//  Created by Abdulsalam Mansour on 1/5/20.
//  Copyright © 2020 abdulsalam. All rights reserved.
//

import UIKit
import RxSwift


class ViewController: UIViewController {
    
    //Dispose bag
     private let disposeBag = DisposeBag()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        ApiClient.getPosts(userId: 1)
                 .observeOn(MainScheduler.instance)
                 .subscribe(onNext: { postsList in
                     print("List of posts:", postsList)
                 }, onError: { error in
                     switch error {
                     case ApiError.conflict:
                         print("Conflict error")
                     case ApiError.forbidden:
                         print("Forbidden error")
                     case ApiError.notFound:
                         print("Not found error")
                     default:
                         print("Unknown error:", error)
                     }
                 })
                 .disposed(by: disposeBag)
    }


}

