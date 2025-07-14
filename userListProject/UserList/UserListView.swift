//
//  UserListView.swift
//  userListProject
//
//  Created by sude on 14.07.2025.
//

import SwiftUI

struct UserListView: View {
    
    @ObservedObject var viewModel: UserListViewModel
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .task {
            await viewModel.getUsers()
        }
    }
}

//#Preview {
  //  UserListView()
//}
