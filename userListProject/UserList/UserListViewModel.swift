//
//  UserListViewModel.swift
//  userListProject
//
//  Created by sude on 14.07.2025.
//

import Foundation

final class UserListViewModel: ObservableObject {
    
    func getUsers() async {
        
        do {
            let users = try await WebService.getUsersData()
            print(users)
        }catch(let error){
            print(error.localizedDescription)
        }
        
    }
    
}
