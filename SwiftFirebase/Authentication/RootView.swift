//
//  RootView.swift
//  SwiftFirebase
//
//  Created by Anıl on 13.11.2024.
//

import SwiftUI

struct RootView: View {
    @State private var showSıgnInView: Bool = false
    
    var body: some View {
        ZStack {
            NavigationStack {
                SettingsView(showSignInView: $showSıgnInView)
            }
        }
        .onAppear {
            let authUser = try? AuthenticationManager.shared.getAuthenticatedUser()
            self.showSıgnInView = authUser == nil
        }
        .fullScreenCover(isPresented: $showSıgnInView) {
            NavigationStack {
                AuthenticationView()
            }
        }
    }
}

#Preview {
    RootView()
}
