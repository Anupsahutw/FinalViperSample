//
//  NetworkProtocol.swift
//  AlamoViperSample
//
//  Created by Anup.Sahu on 11/11/20.
//  Copyright © 2020 Anup.Sahu. All rights reserved.
//

import Foundation
import Alamofire

protocol NetworkProtocol {

    func request<T: Requestable>(req: T, completionHandler: @escaping (Result<T.ResponseType>) -> Void)
}

