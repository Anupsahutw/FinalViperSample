//
//  DetailRouterWireFrame.swift
//  AlamoViperSample
//
//  Created by Anup.Sahu on 17/11/20.
//  Copyright © 2020 Anup.Sahu. All rights reserved.
//

import Foundation

import UIKit

class PostDetailWireFrame: PostDetailWireFrameProtocol {
    
    class func createPostDetailModule(forPost post: PostModel) -> UIViewController {
        let viewController = mainStoryboard.instantiateViewController(withIdentifier: "DetailViewController")
        if let view = viewController as? DetailViewController {
            let presenter: PostDetailPresenterProtocol = PostDetailPresenter()
            let wireFrame: PostDetailWireFrameProtocol = PostDetailWireFrame()
            
            view.presenter = presenter
            presenter.view = view
            presenter.post = post
            presenter.wireFrame = wireFrame
            
            return viewController
        }
        return UIViewController()
    }
    
    static var mainStoryboard: UIStoryboard {
        return UIStoryboard(name: "Main", bundle: Bundle.main)
    }
    
}
