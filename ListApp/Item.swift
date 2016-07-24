//
//  Item.swift
//  ListApp
//
//  Created by Richard Whent on 24/07/2016.
//  Copyright © 2016 Chunkster.net. All rights reserved.
//

import Foundation

class Item {
    
    enum Mark {
        case UNMARKED
        case SELECTED
        case COMPLETED
    }
    
    private var _itemTitle: String!
    private var _itemDescription: String!
    private var _itemURL: String = ""
    private var _itemMarkedStatus = Mark.UNMARKED
    private var _itemMarkedByWhom: Int = 0
    private var _itemImageFileName: String = ""
    
    var itemTitle: String {
        get {
            return _itemTitle
        }
        set {
            if newValue != _itemTitle || newValue != "" {
                _itemTitle = newValue
            }
        }
    }
    
    var itemDescription: String {
        get {
            return _itemDescription
        }
        set {
            if newValue != _itemDescription || newValue != "" {
                _itemDescription = newValue
            }
        }
    }
    
    var itemURL: String {
        get {
            return _itemURL
        }
        set {
            if newValue != _itemURL || newValue != "" {
                _itemURL = newValue
            }
        }
    }
    
    
    var itemMarkedStatus: Mark {
        get {
            return _itemMarkedStatus
        }
        set {
            if newValue != _itemMarkedStatus {
                _itemMarkedStatus = newValue
            }
        }
    }
    
    
    var itemMarkedByWhom: Int {
        get {
            return _itemMarkedByWhom
        }
        set {
            if newValue != _itemMarkedByWhom || newValue == 0 {
                _itemMarkedByWhom = newValue
            }
        }
    }
    
    
    var itemImageFileName: String {
        get {
            return _itemImageFileName
        }
        set {
            if newValue != _itemImageFileName {
                _itemImageFileName = newValue
            }
        }
    }
    
    init(title: String, description: String, url: String, image: String) {
        self._itemTitle = title
        self._itemDescription = description
        self._itemURL = url
        self._itemImageFileName = image
    }
    
    func markItem(marker: Int, mark: Mark) {
        self.itemMarkedByWhom = marker
        self.itemMarkedStatus = mark
    }
    
    func updateItemStatus(mark: Mark) {
        self.itemMarkedStatus = mark
    }

}