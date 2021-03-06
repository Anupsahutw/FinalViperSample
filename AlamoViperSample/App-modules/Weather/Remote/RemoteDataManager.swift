//
//  RemoteDataManager.swift
//  AlamoViperSample
//
//  Created by Anup.Sahu on 12/11/20.
//  Copyright © 2020 Anup.Sahu. All rights reserved.
//

import Foundation
import Alamofire

class PostListRemoteDataManager:PostListRemoteDataManagerInputProtocol {
    
    var remoteRequestHandler: PostListRemoteDataManagerOutputProtocol?
    
    let network: NetworkProtocol

    init(network: NetworkProtocol = Network()) {
        self.network = network
    }
    
    func retrievePostList() {
         network.request(req: Endpoint()) { (result) in
                   switch result {
                   case .success(let successResponse):
                    print("store success\(successResponse)");
                    //works like a listener
                    self.remoteRequestHandler?.onPostsRetrieved(successResponse)
                   case .failure(_):
                       self.remoteRequestHandler?.onError()
                   }
               }
    }
    
}

