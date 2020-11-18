//
//  GetListInteractor.swift
//  AlamoViperSample
//
//  Created by Anup.Sahu on 12/11/20.
//  Copyright © 2020 Anup.Sahu. All rights reserved.
//

import Foundation
import Alamofire

class GetListInteractor: PostListInteractorInputProtocol {
    
    var presenter: PostListInteractorOutputProtocol?
    
    var remoteDatamanager: PostListRemoteDataManagerInputProtocol?
    
    func retrievePostList() {
        remoteDatamanager?.retrievePostList()
    }
}

extension GetListInteractor: PostListRemoteDataManagerOutputProtocol {
    func onPostsRetrieved(_ posts: PostModel) {
        presenter?.didRetrievePosts(posts)
    }
    
    func onError() {
        presenter?.onError()
    }
}
