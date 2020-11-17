//
//  Protocols.swift
//  AlamoViperSample
//
//  Created by Anup.Sahu on 11/11/20.
//  Copyright © 2020 Anup.Sahu. All rights reserved.
//

import UIKit

protocol PostListViewProtocol: class {
    var presenter: PostListPresenterProtocol? { get set }
    
    // PRESENTER -> VIEW
    func showGets(with gets: PostModel)
    
    func showError()
    
    func showLoading()
    
    func hideLoading()
}

protocol PostListWireFrameProtocol: class {
    static func createGetListModule() -> UIViewController
    // PRESENTER -> WIREFRAME
    func presentGetDetailScreen(from view: PostListViewProtocol, forPost post: PostModel)
}

protocol PostListPresenterProtocol: class {
    var view: PostListViewProtocol? { get set }
    var interactor: PostListInteractorInputProtocol? { get set }
    var wireFrame: PostListWireFrameProtocol? { get set }
    
    // VIEW -> PRESENTER
    func viewDidLoad()
    func showPostDetail(forPost post: PostModel)
}

protocol PostListInteractorInputProtocol: class {
    var presenter: PostListInteractorOutputProtocol? { get set }
    var remoteDatamanager: PostListRemoteDataManagerInputProtocol? { get set }
    
    // PRESENTER -> INTERACTOR
    func retrievePostList()
}

protocol PostListInteractorOutputProtocol: class {
    // INTERACTOR -> PRESENTER
    func didRetrievePosts(_ posts: PostModel)
    func onError()
}

protocol PostListRemoteDataManagerInputProtocol: class {
    var remoteRequestHandler: PostListRemoteDataManagerOutputProtocol? { get set }
    
    // INTERACTOR -> REMOTEDATAMANAGER
    func retrievePostList()
}

protocol PostListRemoteDataManagerOutputProtocol: class {
    // REMOTEDATAMANAGER -> INTERACTOR
    func onPostsRetrieved(_ posts: PostModel)
    func onError()
}

