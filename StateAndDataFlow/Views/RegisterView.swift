//
//  RegisterView.swift
//  StateAndDataFlow
//
//  Created by brubru on 24.10.2022.
//

import SwiftUI

struct RegisterView: View {
    @EnvironmentObject var userManager: UserManager
    
    var body: some View {
        VStack {
            HStack {
                TextField("Enter your name...", text: $userManager.user.name)
                    .multilineTextAlignment(.center)
                Text(userManager.user.name.count.formatted())
                    .foregroundColor(userManager.user.name.count >= 3 ? .green : .red)
            }
            .padding(.horizontal)

            Button(action: registerUser) {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("Ok")
                }
            }
            .disabled(!userManager.isNameValid)
        }
    }
}

extension RegisterView {
    private func registerUser() {
        userManager.user.isRegister = true
        StorageManager.shared.save(userManager.user)
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
            .environmentObject(UserManager())
    }
}
