//
//var Struct.swift
//var Memorie
//
//var Created by Abhishek Chakrabarti on 5/4/20.
//var Copyright © 2020 Keyur. All rights reserved.
//

import Foundation





struct user: Codable, Hashable {
var primaryKey: String
var sortKey: String
var location: String
var firstName: String
var lastName: String
var lastAccessed: String
var ip: String
var online: Int
var uiLanguage: String
var searchString: String
var memberAccess: String
var email: String
var gender: String
var birthDay:String
var phone: String
var isPublic: Bool
var groups: String
}

struct post: Codable, Hashable{
var primaryKey: String
var sortKey: String
var mediaURL: String
var description: String
var categories: String
var likes: Int
var year: String
var searchString: String
var postedBy: String
var createdAt: String
var lastEdited: String
var postType: String
}

struct invitation: Codable, Hashable {
var primaryKey: String
var sortKey: String
var isBlocked: Bool
var status: String
var createdAt: String
var lastEdited: String
var location: String
var firstName: String
var lastName: String
var email:String
var searchString: String
var isRead: Bool
}


struct calendar: Codable, Hashable{
var primaryKey: String
var sortKey: String
var eventDate:String
var eventDescription: String
}

struct messagevault: Codable, Hashable{
var primaryKey: String
var sortKey: String
var mediaURL: String
var canBeOpenedOn: String
var isLocked: Bool
var searchString: String
var postedBy: String
var receivedBy: String
var createdAt: String
var lastEdited: String
var postType: String
var description: String
}


//All Variables//


var me: [user] = []
var arrUsers: [user] = []
var currentuser: user!
var currentinvitation: invitation!
var currentpost: post!
var currentmessagevault: messagevault!
var arrPosts: [post] = []
var arrMessageVaults: [messagevault] = []
var arrInvitations: [invitation] = []
var arrReceivedMessageVaults: [messagevault] = []
var arrUserPosts: [post] = []
var arrSearchUserPosts: [post] = []
var friend: invitation!
var arrCalendars: [calendar] = []
var arrSearchMessageVaults: [messagevault] = []
var arrSearchReceivedMessageVaults: [messagevault] = []
