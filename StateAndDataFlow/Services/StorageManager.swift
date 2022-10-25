//
//  StorageManager.swift
//  StateAndDataFlow
//
//  Created by Anton Saltykov on 25.10.2022.
//

import Foundation

class StorageManager {
    static let shared = StorageManager()
    private let defaults = UserDefaults.standard

    private init() {}

    func save(_ user: User) {
        do {
            let encoder = JSONEncoder()
            let data = try encoder.encode(user)
            defaults.set(data, forKey: "user")
        } catch {
            print("User encode error (\(error))")
        }
    }

    func getUser() -> User? {
        if let data = defaults.data(forKey: "user") {
            do {
                let decoder = JSONDecoder()
                let user = try decoder.decode(User.self, from: data)
                return user
            } catch {
                print("User decode error (\(error))")
                return nil
            }
        }
        return nil
    }

    func deleteUser() {
        defaults.removeObject(forKey: "user")
        //defaults.synchronize()
    }
}
