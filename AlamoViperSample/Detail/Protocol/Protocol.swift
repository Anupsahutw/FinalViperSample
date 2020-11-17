//
//  Protocol.swift
//  AlamoViperSample
//
//  Created by Anup.Sahu on 17/11/20.
//  Copyright © 2020 Anup.Sahu. All rights reserved.
//

import Foundation
import UIKit

protocol PostDetailViewProtocol: class {
    var presenter: PostDetailPresenterProtocol? { get set }
    
    // PRESENTER -> VIEW
    func showPostDetail(forPost post: PostModel)
}

protocol PostDetailWireFrameProtocol: class {
    static func createPostDetailModule(forPost post: PostModel) -> UIViewController
}

protocol PostDetailPresenterProtocol: class {
    var view: PostDetailViewProtocol? { get set }
    var wireFrame: PostDetailWireFrameProtocol? { get set }
    var post: PostModel? { get set }
    
    // VIEW -> PRESENTER
    func viewDidLoad()
}
