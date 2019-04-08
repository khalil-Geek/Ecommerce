//
//  ViewController.swift
//  Ecommerce
//
//  Created by macbook pro on 08/04/2019.
//  Copyright © 2019 macbook pro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let storyboard = UIStoryboard(name: Storyboard.LoginStoryboard, bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: StoryboarId.LoginVc)
        present(controller, animated: true, completion: nil)
    }

}

