//
//  PresenterDetail.swift
//  AlamoViperSample
//
//  Created by Anup.Sahu on 17/11/20.
//  Copyright © 2020 Anup.Sahu. All rights reserved.
//

import Foundation

class PostDetailPresenter: PostDetailPresenterProtocol {
    
    weak var view: PostDetailViewProtocol?
    var wireFrame: PostDetailWireFrameProtocol?
    var post: PostModel?
    
    func viewDidLoad() {
        
    }
    
}
