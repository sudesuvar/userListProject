//
//  UserListViewModel.swift
//  userListProject
//
//  Created by sude on 14.07.2025.
//

import Foundation

final class UserListViewModel: ObservableObject {
    
    @Published var users: [UserModel]?
    
    func getUsers() async {
        
        do {
            let users = try await WebService.getUsersData()
            self.users = users
        }catch(let error){
            print(error.localizedDescription)
        }
        
    }
    
}
