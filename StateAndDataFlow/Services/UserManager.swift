//
//  UserManager.swift
//  StateAndDataFlow
//
//  Created by brubru on 24.10.2022.
//

import Foundation

class UserManager: ObservableObject {
    @Published var user: User

    var isNameValid: Bool {
        user.name.count >= 3
    }

    init() {
        if let user = StorageManager.shared.getUser() {
            self.user = user
        } else {
            self.user = User()
        }
    }
}
