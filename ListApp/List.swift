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
    
    init(deadline: NSDate, party: NSDate, expiry: NSDate) {
        self._listDeadline = deadline
        self._listPartyDate = party
        self._listExpiryDate = expiry
        self._listCreated = NSDate()
    }
    
    
    var listCreated: NSDate {
        get {
            return _listCreated
        }
    }
    
    
    var listdeadline: NSDate {
        get {
            if let deadline = _listDeadline {
                return deadline
            } else {
                return nil
            }
        }
        set {
            if newValue != _listDeadline || newValue != "" {
                _listDeadline = newValue
            }
        }
    }
    
}