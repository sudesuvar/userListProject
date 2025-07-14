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
        NavigationStack {
            if let users = viewModel.users {
                List(users, id: \.id) { user in
                    HStack {
                        AsyncImage(url: URL(string: user.avatarURL ?? "")) { image in
                            image
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 60, height: 60)
                                .clipShape(Circle())
                        } placeholder: {
                            Circle()
                                .fill(Color.teal)
                                .frame(width: 60, height: 60)
                        }
                        
                        Text(user.login ?? "İsimsiz")
                            .font(.headline)
                        
                    }
                    .padding(.vertical, 4)
                }
                .navigationTitle("Kullanıcılar")
            } else {
                ProgressView("Yükleniyor...")
                    .navigationTitle("Kullanıcılar")
            }
        }
        .task {
            await viewModel.getUsers()
        }
    }
}

#Preview {
    UserListView(viewModel: UserListViewModel())
}
