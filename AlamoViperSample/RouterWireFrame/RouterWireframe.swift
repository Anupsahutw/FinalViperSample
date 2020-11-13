//
//  RouterWireframe.swift
//  AlamoViperSample
//
//  Created by Anup.Sahu on 13/11/20.
//  Copyright © 2020 Anup.Sahu. All rights reserved.
//

import Foundation
import UIKit

class GetListWireFrame: PostListWireFrameProtocol {
    static func createGetListModule() -> UIViewController {
       let navController = mainStoryboard.instantiateViewController(withIdentifier: "NavigationController")
        if let view = navController.children.first as? WeatherViewController {
                let presenter: PostListPresenterProtocol & PostListInteractorOutputProtocol = GetListPresenter()
                let interactor: PostListInteractorInputProtocol & PostListRemoteDataManagerOutputProtocol = GetListInteractor()
                let remoteDataManager: PostListRemoteDataManagerInputProtocol = PostListRemoteDataManager()
                let wireFrame: PostListWireFrameProtocol = GetListWireFrame()
                
                view.presenter = presenter
                presenter.view = view
                presenter.wireFrame = wireFrame
                presenter.interactor = interactor
                interactor.presenter = presenter
                interactor.remoteDatamanager = remoteDataManager
                remoteDataManager.remoteRequestHandler = interactor
                
                return navController
            }
            return UIViewController()
        }
        
        static var mainStoryboard: UIStoryboard {
            return UIStoryboard(name: "Main", bundle: Bundle.main)
        }
        
    
    func presentGetDetailScreen(from view: PostListViewProtocol, forPost post: PostModel) {
        //
    }
    
}
