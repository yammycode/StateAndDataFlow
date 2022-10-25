//
//  LogoutButtonView.swift
//  StateAndDataFlow
//
//  Created by Anton Saltykov on 25.10.2022.
//

import SwiftUI

struct LogoutButtonView: View {
    @EnvironmentObject private var UserManager: UserManager
    
    var body: some View {
        Button(action: {
            UserManager.user = User(isRegister: false, name: "")
            StorageManager.shared.deleteUser()
        }) {
            Text("LOGOUT")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .defaultStyling(color: .blue)
    }
}

struct LogoutButtonView_Previews: PreviewProvider {
    static var previews: some View {
        LogoutButtonView()
    }
}
