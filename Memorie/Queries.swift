//
//  Queries.swift
//  Memorie
//
//  Created by Abhishek Chakrabarti on 5/4/20.
//  Copyright © 2020 Keyur. All rights reserved.
//

import Foundation

typealias MethodHandler = ()  -> Void

func GetUser(parentview: UIView, methodhandler: @escaping MethodHandler){
    getusername()
    guard globalusername != nil else {
        return
    }
    defineAppSyncSource()
    appSyncClient?.fetch(query: GetUserQuery(PrimaryKey: globalusername!, SortKey: "basedata"),
                         cachePolicy: .returnCacheDataAndFetch)  { (result, error) in
        if error != nil {
            let string = error!.localizedDescription.description
            print(string)
            return
        }
        
        guard(result?.data?.snapshot.first?.value != nil) else {
           print("user " + globalusername + "is being created")
            CreateUser(methodhandler:methodhandler)
            return
        }
        
        me.removeAll()
        
    if  let input = (result?.data?.getUser) {
        
    let append =  user(primaryKey: input.primaryKey!,
                       sortKey: input.sortKey!,
                       location:  input.location!,
                       firstName: input.firstName!,
                       lastName: input.lastName!,
                       lastAccessed: input.lastAccessed!,
                       ip: input.ip!,
                       online: input.online!,
                       uiLanguage: input.uiLanguage!,
                       searchString: input.searchString!,
                       memberAccess: input.memberAccess!,
                       email: input.email!,
                       gender: input.gender!,
                       birthDay: input.birthDay!,
                       phone: input.phone!,
                       isPublic: input.isPublic!,
                       groups: input.groups!)
        
        me.append(append)
                            }
        DispatchQueue.main.asyncAfter(
            deadline: DispatchTime.now() + Double(Int64(1.5 * Double(NSEC_PER_SEC))) / Double(NSEC_PER_SEC),
            execute: {
                if me.count == 1 {
                    methodhandler()
                }
        })
    }
}



var Token_arrPosts: String!

func FetchPosts(username: String, methodhandler: @escaping MethodHandler){
    defineAppSyncSource()
    Token_arrPosts = " "
    appSyncClient?.fetch(query: FetchPostsQuery(PrimaryKey: username+"-post", limit: 100), cachePolicy: .returnCacheDataAndFetch)  { (result, error) in
        
      if error != nil {
            print(error?.localizedDescription ?? "")
            displayToast("There was a problem fetching posts. Please try again later.")
            return
        }
        
        guard(result?.data?.snapshot.first?.value != nil) else {
            displayToast("There was a problem fetching posts. Please try again later.")
            return
        }
        
        arrPosts.removeAll()
        
        
        for each in (result?.data?.fetchPosts?.items)!{
            print("SAVED WORDS DID WORK!")
            
    arrPosts.append(post(primaryKey: (each?.primaryKey)!,
                                                               sortKey: (each?.sortKey)!,
                                                               mediaURL: (each?.mediaUrl)!,
                                                               description: (each?.description)!,
                                                               categories: (each?.categories)!,
                                                               likes: (each?.likes)!,
                                                               year: (each?.year)!,
                                                               searchString: (each?.searchString)!,
                                                               postedBy: (each?.postedBy)!,
                                                               createdAt: (each?.createdAt)!,
                                                               lastEdited: (each?.lastEdited)!,
                                                               postType: (each?.postType)!))
                           
        
        }
        
        Token_arrPosts = result?.data?.fetchPosts?.nextToken
        
    
        methodhandler()
        
        
    }
    
}


func FetchPostsNext( username: String, methodhandler: @escaping MethodHandler){
    guard Token_arrPosts != nil else {
        return
    }
    defineAppSyncSource()
    
    
    appSyncClient?.fetch(query: FetchPostsQuery(PrimaryKey: username+"-post", limit: 100, nextToken: Token_arrPosts), cachePolicy: .returnCacheDataAndFetch)  { (result, error) in
        
       if error != nil {
            print(error?.localizedDescription ?? "")
                       displayToast("There was a problem fetching posts. Please try again later.")

            return
        }
        
        guard(result?.data?.snapshot.first?.value != nil) else {
                      displayToast("There was a problem fetching posts. Please try again later.")

            return
        }
        Token_arrPosts = result?.data?.fetchPosts?.nextToken
        print("NEXT TOKEN")
        
          for each in (result?.data?.fetchPosts?.items)!{
                  
                 arrPosts.append(post(primaryKey: (each?.primaryKey)!,
                                                      sortKey: (each?.sortKey)!,
                                                      mediaURL: (each?.mediaUrl)!,
                                                      description: (each?.description)!,
                                                      categories: (each?.categories)!,
                                                      likes: (each?.likes)!,
                                                      year: (each?.year)!,
                                                      searchString: (each?.searchString)!,
                                                      postedBy: (each?.postedBy)!,
                                                      createdAt: (each?.createdAt)!,
                                                      lastEdited: (each?.lastEdited)!,
                                                      postType: (each?.postType)!))
                  
              }
        
        methodhandler()
        
    }
    
}


var Token_searcharrPosts: String!

func SearchPosts(username: String, searchString: String, methodhandler: @escaping MethodHandler){
    defineAppSyncSource()
    Token_searcharrPosts = " "
    appSyncClient?.fetch(query: SearchPostsQuery(PrimaryKey: username+"-post", SearchString: searchString.lowercased(), limit: 100), cachePolicy: .returnCacheDataAndFetch)  { (result, error) in
        
      if error != nil {
            print(error?.localizedDescription ?? "")
            displayToast("There was a problem fetching posts. Please try again later.")
            return
        }
        
        guard(result?.data?.snapshot.first?.value != nil) else {
            displayToast("There was a problem fetching posts. Please try again later.")
            return
        }
        
        arrSearchUserPosts.removeAll()
        
        
        for each in (result?.data?.searchPosts?.items)!{
            print("SAVED WORDS DID WORK!")
            
              arrSearchUserPosts.append(post(primaryKey: (each?.primaryKey)!,
                                                sortKey: (each?.sortKey)!,
                                                mediaURL: (each?.mediaUrl)!,
                                                description: (each?.description)!,
                                                categories: (each?.categories)!,
                                                likes: (each?.likes)!,
                                                year: (each?.year)!,
                                                searchString: (each?.searchString)!,
                                                postedBy: (each?.postedBy)!,
                                                createdAt: (each?.createdAt)!,
                                                lastEdited: (each?.lastEdited)!,
                                                postType: (each?.postType)!))
            
  
        
        }
        
        Token_searcharrPosts = result?.data?.searchPosts?.nextToken
        
    
        methodhandler()
        
        
    }
    
}


func SearchPostsNext(username: String, searchString: String, methodhandler: @escaping MethodHandler){
    guard Token_searcharrPosts != nil else {
        return
    }
    defineAppSyncSource()
    
    appSyncClient?.fetch(query: SearchPostsQuery(PrimaryKey: username+"-post", SearchString: searchString.lowercased(), limit: 100, nextToken: Token_searcharrPosts), cachePolicy: .returnCacheDataAndFetch)  { (result, error) in
        
       if error != nil {
            print(error?.localizedDescription ?? "")
                       displayToast("There was a problem fetching posts. Please try again later.")

            return
        }
        
        guard(result?.data?.snapshot.first?.value != nil) else {
                      displayToast("There was a problem fetching posts. Please try again later.")

            return
        }
        Token_searcharrPosts = result?.data?.searchPosts?.nextToken
        print("NEXT TOKEN")
        
          for each in (result?.data?.searchPosts?.items)!{
                  
               arrSearchUserPosts.append(post(primaryKey: (each?.primaryKey)!,
                  sortKey: (each?.sortKey)!,
                  mediaURL: (each?.mediaUrl)!,
                  description: (each?.description)!,
                  categories: (each?.categories)!,
                  likes: (each?.likes)!,
                  year: (each?.year)!,
                  searchString: (each?.searchString)!,
                  postedBy: (each?.postedBy)!,
                  createdAt: (each?.createdAt)!,
                  lastEdited: (each?.lastEdited)!,
                  postType: (each?.postType)!))
                  
              }
        
        methodhandler()
        
    }
    
}



var Token_arrInvitations: String!

func FetchInvitations(methodhandler: @escaping MethodHandler){
    defineAppSyncSource()
    Token_arrInvitations = " "
    appSyncClient?.fetch(query: FetchInvitationsQuery(PrimaryKey: globalusername+"-contact" , limit: 100), cachePolicy: .returnCacheDataAndFetch)  { (result, error) in
        
      if error != nil {
            print(error?.localizedDescription ?? "")
            displayToast("There was a problem fetching posts. Please try again later.")
            return
        }
        
        guard(result?.data?.snapshot.first?.value != nil) else {
            displayToast("There was a problem fetching posts. Please try again later.")
            return
        }
        
        arrInvitations.removeAll()
        
        
        for each in (result?.data?.fetchInvitations?.items)!{
            print("SAVED WORDS DID WORK!")
            
            arrInvitations.append(invitation(primaryKey: (each?.primaryKey)!,
                                             sortKey: (each?.sortKey)!,
                                             isBlocked: (each?.isBlocked)!,
                                             status: (each?.status)!,
                                             createdAt: (each?.createdAt)!,
                                             lastEdited: (each?.lastEdited)!,
                                             location: (each?.location)!,
                                             firstName: (each?.firstName)!,
                                             lastName: (each?.lastName)!,
                                             email: (each?.email)!,
                                             searchString: (each?.searchString)!,
                                             isRead: (each?.isRead)!))
            
  
        
        }
        
        Token_arrInvitations = result?.data?.fetchInvitations?.nextToken
        
    
        methodhandler()
        
        
    }
    
}


func FetchInvitationsNext( methodhandler: @escaping MethodHandler){
    guard Token_arrInvitations != nil else {
        return
    }
    defineAppSyncSource()
    
    
    appSyncClient?.fetch(query: FetchInvitationsQuery(PrimaryKey: globalusername+"-contact", limit: 100, nextToken: Token_arrInvitations), cachePolicy: .returnCacheDataAndFetch)  { (result, error) in
        
       if error != nil {
            print(error?.localizedDescription ?? "")
                       displayToast("There was a problem fetching posts. Please try again later.")

            return
        }
        
        guard(result?.data?.snapshot.first?.value != nil) else {
                      displayToast("There was a problem fetching posts. Please try again later.")

            return
        }
        Token_arrInvitations = result?.data?.fetchInvitations?.nextToken
        print("NEXT TOKEN")
             for each in (result?.data?.fetchInvitations?.items)!{
                  print("SAVED WORDS DID WORK!")
                  
                  arrInvitations.append(invitation(primaryKey: (each?.primaryKey)!,
                                                   sortKey: (each?.sortKey)!,
                                                   isBlocked: (each?.isBlocked)!,
                                                   status: (each?.status)!,
                                                   createdAt: (each?.createdAt)!,
                                                   lastEdited: (each?.lastEdited)!,
                                                   location: (each?.location)!,
                                                   firstName: (each?.firstName)!,
                                                   lastName: (each?.lastName)!,
                                                   email: (each?.email)!,
                                                   searchString: (each?.searchString)!,
                                                   isRead: (each?.isRead)!))
                  
        
              
              }
        
        methodhandler()
        
    }
    
}


var Token_arrUsers: String!

func SearchUsers(searchString: String, methodhandler: @escaping MethodHandler){
    defineAppSyncSource()
    Token_arrUsers = " "
    appSyncClient?.fetch(query: SearchUsersQuery(SortKey: "basedata", SearchString: searchString.lowercased(), limit: 100), cachePolicy: .returnCacheDataAndFetch)  { (result, error) in
        
      if error != nil {
            print(error?.localizedDescription ?? "")
            displayToast("There was a problem fetching posts. Please try again later.")
            return
        }
        
        guard(result?.data?.snapshot.first?.value != nil) else {
            displayToast("There was a problem fetching posts. Please try again later.")
            return
        }
        
        arrUsers.removeAll()
        
        
        for each in (result?.data?.searchUsers?.items)!{
            print("SAVED WORDS DID WORK!")
            
            
            if let input = each {
        
            let append =  user(primaryKey: input.primaryKey!,
                                sortKey: input.sortKey!,
                                location:  input.location!,
                                firstName: input.firstName!,
                                lastName: input.lastName!,
                                lastAccessed: input.lastAccessed!,
                                ip: input.ip!,
                                online: input.online!,
                                uiLanguage: input.uiLanguage!,
                                searchString: input.searchString!,
                                memberAccess: input.memberAccess!,
                                email: input.email!,
                                gender: input.gender!,
                                birthDay: input.birthDay!,
                                phone: input.phone!,
                                isPublic: input.isPublic!,
                                groups: input.groups!)
            
            arrUsers.append(append)
            }
        
        }
        
        Token_arrUsers = result?.data?.searchUsers?.nextToken
        
    
        methodhandler()
        
        
    }
    
}


func SearchUsersNext(searchString: String, methodhandler: @escaping MethodHandler){
    guard Token_arrUsers != nil else {
        return
    }
    defineAppSyncSource()
    
    
    appSyncClient?.fetch(query: SearchUsersQuery(SortKey: "basedata", SearchString: searchString.lowercased(), limit: 100, nextToken: Token_arrUsers), cachePolicy: .returnCacheDataElseFetch)  { (result, error) in
        
       if error != nil {
            print(error?.localizedDescription ?? "")
                       displayToast("There was a problem fetching posts. Please try again later.")

            return
        }
        
        guard(result?.data?.snapshot.first?.value != nil) else {
                      displayToast("There was a problem fetching posts. Please try again later.")

            return
        }
        Token_arrUsers = result?.data?.searchUsers?.nextToken
        print("NEXT TOKEN")
             
                  for each in (result?.data?.searchUsers?.items)!{
                      print("SAVED WORDS DID WORK!")
                      
                      
                      if let input = each {
                  
                      let append =  user(primaryKey: input.primaryKey!,
                                          sortKey: input.sortKey!,
                                          location:  input.location!,
                                          firstName: input.firstName!,
                                          lastName: input.lastName!,
                                          lastAccessed: input.lastAccessed!,
                                          ip: input.ip!,
                                          online: input.online!,
                                          uiLanguage: input.uiLanguage!,
                                          searchString: input.searchString!,
                                          memberAccess: input.memberAccess!,
                                          email: input.email!,
                                          gender: input.gender!,
                                          birthDay: input.birthDay!,
                                          phone: input.phone!,
                                          isPublic: input.isPublic!,
                                          groups: input.groups!)
                      
                      arrUsers.append(append)
                      }
                  
                  }
        
        methodhandler()
        
    }
    
}


var Token_arrCalendars: String!

func FetchCalendars(username: String, methodhandler: @escaping MethodHandler){
    defineAppSyncSource()
    Token_arrCalendars = " "
    appSyncClient?.fetch(query: FetchCalendarsQuery(PrimaryKey: username+"-event", limit: 100), cachePolicy: .returnCacheDataAndFetch)  { (result, error) in
        
      if error != nil {
            print(error?.localizedDescription ?? "")
            displayToast("There was a problem fetching calendars. Please try again later.")
            return
        }
        
        guard(result?.data?.snapshot.first?.value != nil) else {
            displayToast("There was a problem fetching calendars. Please try again later.")
            return
        }
        
        arrCalendars.removeAll()
        
        
        for each in (result?.data?.fetchCalendars?.items)!{
            print("SAVED WORDS DID WORK!")
            
       arrCalendars.append(calendar(primaryKey: (each?.primaryKey)!,
                                                       sortKey: (each?.sortKey)!,
                                                       eventDate: (each?.eventDate)!,
                                                       eventDescription: (each?.eventDescription)!))
                           
        
        }
        
        Token_arrCalendars = result?.data?.fetchCalendars?.nextToken
        
    
        methodhandler()
        
        
    }
    
}


func FetchCalendarsNext( username: String, methodhandler: @escaping MethodHandler){
    guard Token_arrCalendars != nil else {
        return
    }
    defineAppSyncSource()
    
    
    appSyncClient?.fetch(query: FetchCalendarsQuery(PrimaryKey: username+"-event", limit: 100, nextToken: Token_arrCalendars), cachePolicy: .returnCacheDataAndFetch)  { (result, error) in
        
       if error != nil {
            print(error?.localizedDescription ?? "")
                       displayToast("There was a problem fetching calendars. Please try again later.")

            return
        }
        
        guard(result?.data?.snapshot.first?.value != nil) else {
                      displayToast("There was a problem fetching calendars. Please try again later.")

            return
        }
        Token_arrCalendars = result?.data?.fetchCalendars?.nextToken
        print("NEXT TOKEN")
        
          for each in (result?.data?.fetchCalendars?.items)!{
                  
              arrCalendars.append(calendar(primaryKey: (each?.primaryKey)!,
                                                                 sortKey: (each?.sortKey)!,
                                                                 eventDate: (each?.eventDate)!,
                                                                 eventDescription: (each?.eventDescription)!))
                  
              }
        
        methodhandler()
        
    }
    
}

