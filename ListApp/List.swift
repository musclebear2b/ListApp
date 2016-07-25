//
//  List.swift
//  ListApp
//
//  Created by Richard Whent on 24/07/2016.
//  Copyright © 2016 Chunkster.net. All rights reserved.
//

import Foundation

class List {
    
    private var _listItems = [Item]()
    private var _listCreated: NSDate!
    private var _listDeadline: NSDate? = nil
    private var _listPartyDate: NSDate!
    private var _listExpiryDate: NSDate? = nil
    
    init() {
        self._listCreated = NSDate()
    }
    
    convenience init(party: NSDate) {
        self.init()
        self._listPartyDate = party
    }
    
    convenience init(party: NSDate, deadline: NSDate) {
        self.init()
        self._listPartyDate = party
        self._listDeadline = deadline
    }
    
    convenience init(party: NSDate, expiry: NSDate) {
        self.init()
        self._listPartyDate = party
        self._listExpiryDate = expiry
    }
    
    convenience init(deadline: NSDate, party: NSDate, expiry: NSDate) {
        self.init()
        self._listDeadline = deadline
        self._listPartyDate = party
        self._listExpiryDate = expiry
    }
    
    var listCreated: NSDate {
        get {
            return _listCreated
        }
    }
    
    var listItems: [Item] {
        get {
            return _listItems
        }
    }
    
    
    var listdeadline: NSDate {
        get {
            return _listDeadline!
            }
        set {
            if newValue != _listDeadline {
                _listDeadline = newValue
            }
        }
    }
    
    var listPartyDate: NSDate {
        get {
            return _listPartyDate
        }
        set {
            if newValue != _listPartyDate {
                _listPartyDate = newValue
            }
        }
    }
    
    var listExpiryDate: NSDate {
        get {
            return _listExpiryDate!
        }
        set {
            if newValue != _listExpiryDate {
                _listExpiryDate = newValue
            }
        }
    }
    
    func addItemToList(item: Item) {
        _listItems.append(item)
    }
    
    func removeItemFromList(item: Item) {
//        var position = listItems.indexOf { $0 == item }
//        _listItems.removeItemAtIndex(position)
    }
    
    func shareListWithFriend(friend: Friend) {
        
    }
    
    func shareListWithFriends(friends: [Friend]) {
        for friend in friends {
            shareListWithFriend(friend)
        }
    }
}