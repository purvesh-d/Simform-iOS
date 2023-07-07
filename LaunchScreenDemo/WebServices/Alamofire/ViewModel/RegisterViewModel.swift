//
//  RegisterViewModel.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 04/07/23.
//

import Foundation

class RegisterViewModel {
    
    // MARK: - Variables
    let error = Dynamic<String>("")
    let signUpSuccess = Dynamic<String>("")
    let getUser = Dynamic<GetUserResponse?>(nil)
    let validationError = Dynamic<String>("")
    
    // MARK: - function to validate fields
    func validateData(username: String, email: String, password: String) {
        var error = false
        if username.isEmpty {
            self.validationError.value = "Please enter username!"
            error = true
        } else if email.isEmpty {
            self.validationError.value = "please enter email!"
            error = true
        } else if password.isEmpty {
            self.validationError.value = "Please enter password"
            error = true
        }
        
        if !error {
            self.callSignUpApi(username: username, email: email, password: password)
        }
    }
    
    // MARK: - function fo call sign up API
    func callSignUpApi(username: String, email: String, password: String) {
        let param = SignUpRequest(username: username, email: email, password: password)
        APIManagerDemo.shared.call(type: .signUp, params: param.requestParameter()) { [weak self]
            (result: Result<GetUserResponse, CustomError>) in
            switch result {
            case .success(let response):
                print("Sign up response \(response)")
                self?.getUser.value = response
                UserDefaults.standard.set(response.id, forKey: "id")
                self?.signUpSuccess.value = response.id ?? ""
                self?.signUpSuccess.fire()
            case .failure(let error):
                self?.error.value = error.body
            }
        }
    }
}
