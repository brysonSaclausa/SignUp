//
//  APIController.swift
//  SignUpWithStoryboard
//
//  Created by BrysonSaclausa on 6/5/21.
//

import Foundation
import UIKit

final class APIController {
    
    //Enums
    enum HTTPMethod: String {
        case get = "GET"
        case post = "POST"
    }
    
    enum NetworkError: Error {
        case noData
        case failedSignUp
        case failedSignIn
        case noToken
    }
    
    //Properties
    var bearer: Bearer?
    
    //Endpoints
    private let baseURL = URL(string: "")!
    private lazy var signUpURL = baseURL.appendingPathComponent("/users/signup")
    private lazy var signInURL = baseURL.appendingPathComponent("/users/login")
    
    // Helper method for posting
    private func postRequest(for url: URL) -> URLRequest {
        var request = URLRequest(url: url)
        request.httpMethod = HTTPMethod.post.rawValue
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        return request
    }
    
    //Create a func for sign up
    //Create a func for sign in
    
}
