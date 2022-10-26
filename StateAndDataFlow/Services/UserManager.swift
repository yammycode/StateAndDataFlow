//
//  UserManager.swift
//  StateAndDataFlow
//
//  Created by brubru on 24.10.2022.
//

import Foundation

class UserManager: ObservableObject {
    @Published var user = StorageManager.shared.getUser()

    var isNameValid: Bool {
        user.name.count >= 3
    }
}
