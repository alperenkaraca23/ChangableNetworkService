//
//  UserViewModel.swift
//  ChangableNetworkService
//
//  Created by Alperen KARACA on 18.12.2024.
//

import Foundation

class UserListViewModel : ObservableObject {
    @Published var userList = [UserViewModel]()
    
    //let webservice = Webservice()
    private var service : Networkservice
    init(service : Networkservice) {
        self.service = service
    }
    
  
    
    func downloadUsers() async {
        
        var resource = " "
        
        if service.type == "Webservice" {
            resource = Constants.Urls.usersExtension
        }else {
            resource = Constants.Path.baseUrl
        }
        
        do {
            let users = try await service.download(resource)
            DispatchQueue.main.async {
                self.userList = users.map(UserViewModel.init)
            }
            
        } catch {
            print(error)
        }
    }
 
}

struct UserViewModel {
    let user : User
    
    var id : Int {
        user.id
    }
    
    var name : String {
        user.name
    }
    
    var username : String {
        user.username
    }
    
    var email : String {
        user.email
    }
    
    var website : String {
        user.website
    }
    
}
