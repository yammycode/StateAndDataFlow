//
//  ContentView.swift
//  StateAndDataFlow
//
//  Created by brubru on 24.10.2022.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var UserManager: UserManager
    @StateObject private var timer = TimeCounter()
    
    var body: some View {
        VStack {
            Text("Hi, \(UserManager.user.name)")
                .font(.largeTitle)
                .offset(x: 0, y: 100)
            Text("\(timer.counter)")
                .font(.largeTitle)
                .padding(.top, 100)
            Spacer()
            ActionButtonView(timer: timer)
            Spacer()
            LogoutButtonView().padding(.bottom, 16)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserManager())
    }
}
