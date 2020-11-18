//
//  DetailViewController.swift
//  AlamoViperSample
//
//  Created by Anup.Sahu on 17/11/20.
//  Copyright © 2020 Anup.Sahu. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!

     var presenter: PostDetailPresenterProtocol?
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

extension DetailViewController: PostDetailViewProtocol {
    
    func showPostDetail(forPost post: PostModel) {
        
    }
    
}
