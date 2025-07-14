//
//  userListProjectApp.swift
//  userListProject
//
//  Created by sude on 14.07.2025.
//

import SwiftUI

@main
struct userListProjectApp: App {
    var body: some Scene {
        WindowGroup {
            UserListView(viewModel: UserListViewModel())
        }
    }
}
