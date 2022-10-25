//
//  StateAndDataFlowApp.swift
//  StateAndDataFlow
//
//  Created by brubru on 24.10.2022.
//

import SwiftUI

@main
struct StateAndDataFlowApp: App {
    @AppStorage("user") private var userData: Data = Data()
    @StateObject private var userManager = UserManager()
    
    var body: some Scene {
        WindowGroup {
            StarterView()
                .environmentObject(userManager)
        }
    }
}
