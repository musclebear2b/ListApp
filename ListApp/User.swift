//
//  User.swift
//  ListApp
//
//  Created by Richard Whent on 24/07/2016.
//  Copyright © 2016 Chunkster.net. All rights reserved.
//

import Foundation

class User {
    
    private var _firstName: String!
    private var _lastName: String!
    private var _userId: Int!
    
    var firstName: String {
        get {
            return _firstName
        }
        set {
            if newValue != _firstName || newValue != "" {
                _firstName = newValue
            }
        }
    }
    
    var lastName: String {
        get {
            return _lastName
        }
        set {
            if newValue != _lastName || newValue != "" {
                _lastName = newValue
            }
        }
    }
    
    var userId: Int {
        get {
            return _userId
        }
    }
    
    var fullName: String {
        return "\(_firstName) \(_lastName)"
    }
    
    init(first: String, last: String) {
        self.firstName = first
        self.lastName = last
    }
    
}