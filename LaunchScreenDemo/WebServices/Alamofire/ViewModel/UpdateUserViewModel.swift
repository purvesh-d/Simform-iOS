//
//  UpdateViewModel.swift
//  LaunchScreenDemo
//
//  Created by Vidhi Patel on 05/07/23.
//

import Foundation

class UpdateUserViewModel {

    // MARK: - variable
    var error = Dynamic<String>("")
    var updateSuccess = Dynamic<Void>(())
    var patchSuccess = Dynamic<Void>(())
    var deleteSuccess = Dynamic<Void>(())
    var validationError = Dynamic<String>("")
    
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
            self.validationError.value = "Please enter password!"
            error = true
        }
        
        if !error {
            self.callUpdateApi(username: username, email: email, password: password)
        }
    }
    
    // MARK: - function to call put API
    func callUpdateApi(username: String, email: String, password: String) {
        let param = SignUpRequest(username: username, email: email, password: password)
        APIManagerDemo.shared.call(type: .updateUser, params: param.requestParameter()) { [weak self]
            (result: Result<GetUserResponse, CustomError>) in
            switch result {
            case .success(let response):
                print("Updated \(response)")
                self?.updateSuccess.fire()
            case .failure(let error):
                self?.error.value = error.body
            }
        }
    }
    
    // MARK: - function to call delete API
    func callDeleteApi(username: String, email: String, password: String) {
        let param = SignUpRequest(username: username, email: email, password: password)
        APIManagerDemo.shared.call(type: .deleteUser, params: param.requestParameter()) { [weak self]
            (result: Result<GetUserResponse, CustomError>) in
            switch result {
            case .success(let response):
                print("Deleted \(response)")
                self?.deleteSuccess.fire()
            case .failure(let error):
                self?.error.value = error.body
            }
        }
    }
    
    // MARK: - function to call patch API
    func callPatchApi() {
        APIManagerDemo.shared.call(type: .patchUser, params: nil) { [weak self]
            (result: Result<JobResponseModel, CustomError>) in
            switch result {
            case .success(_):
                self?.patchSuccess.fire()
            case .failure(let error):
                self?.error.value = error.body
            }
        }
    }
}
