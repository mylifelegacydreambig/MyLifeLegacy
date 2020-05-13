//
//  Mutations.swift
//  Memorie
//
//  Created by Abhishek Chakrabarti on 5/4/20.
//  Copyright © 2020 Keyur. All rights reserved.
//

import Foundation
import UIKit
import AWSAppSync
var email: String = "nan"

func DummyUser(){
    me.removeAll()
    let date = Date()
    let TimeStamp = date.SQL()

       me.append(user(primaryKey: globalusername,
                      sortKey: "basedata",
                      location: "nan",
                      firstName: "nan",
                      lastName: "nan",
                      lastAccessed: "nan",
                      ip: "nan",
                      online: 1,
                      uiLanguage: "en",
                      searchString: "nan",
                      memberAccess: "FREE",
                      email: email,
                      gender: "nan",
                      birthDay: "nan",
                      phone: "nan",
                      isPublic: true,
                      groups: "nan"))
}


func CreateUser(methodhandler: @escaping MethodHandler){
    defineAppSyncSource()
    DummyUser()
    let date = Date()
    let TimeStamp = date.SQL()
    let input = me.first
    let mutationInput = UserInput(primaryKey: input?.primaryKey,
                                  sortKey: input?.sortKey,
                                  location:  input?.location,
                                  firstName: input?.firstName,
                                  lastName: input?.lastName,
                                  lastAccessed: input?.lastAccessed,
                                  ip: input?.ip,
                                  online: input?.online,
                                  uiLanguage: input?.uiLanguage,
                                  searchString: input?.searchString,
                                  memberAccess: input?.memberAccess,
                                  email: input?.email,
                                  gender: input?.gender,
                                  birthDay: input?.birthDay,
                                  phone: input?.phone,
                                  isPublic: input?.isPublic,
                                  groups: input?.groups)
    
    appSyncClient?.perform(mutation: CreateUserMutation(input: mutationInput)) { (result, error) in
        if let error = error as? AWSAppSyncClientError {
            print("Error occurred: \(error.localizedDescription )")
        }
        if let resultError = result?.errors {
            print("Error saving the item on server: \(resultError)")
            return
        }
        methodhandler()
    }
}


func UpdateUser(methodhandler: @escaping MethodHandler){
    defineAppSyncSource()
    let date = Date().SQL()
    let input = me.first
    let arrsearchString: [String] = [input!.firstName, input!.email]
        
    let searchString: String = arrsearchString.joined(separator: "/").lowercased()
    
    let mutationInput = UserInput(primaryKey: input?.primaryKey,
                                  sortKey: input?.sortKey,
                                  location:  input?.location,
                                  firstName: input?.firstName,
                                  lastName: input?.lastName,
                                  lastAccessed: date,
                                  ip: getWiFiAddress(),
                                  online: input?.online,
                                  uiLanguage: input?.uiLanguage,
                                  searchString: searchString,
                                  memberAccess: input?.memberAccess,
                                  email: input?.email,
                                  gender: input?.gender,
                                  birthDay: input?.birthDay,
                                  phone: input?.phone,
                                  isPublic: input?.isPublic,
                                  groups: input?.groups)
    
    appSyncClient?.perform(mutation: UpdateUserMutation(input: mutationInput)) { (result, error) in
        if let error = error as? AWSAppSyncClientError {
            print("Error occurred: \(error.localizedDescription )")
        }
        if let resultError = result?.errors {
            print("Error saving the item on server: \(resultError)")
            return
        }
        methodhandler()
    }
}


func DeleteUser(input: DeleteUserInput, methodhandler: @escaping MethodHandler){
    defineAppSyncSource()

    appSyncClient?.perform(mutation: DeleteUserMutation(input: input)) { (result, error) in
        if let error = error as? AWSAppSyncClientError {
            print("Error occurred: \(error.localizedDescription )")
        }
        if let resultError = result?.errors {
            print("Error saving the item on server: \(resultError)")
            return
        }
        methodhandler()
    }
}



func UpdatePost(input: PostInput, methodhandler: @escaping MethodHandler){
    defineAppSyncSource()

    appSyncClient?.perform(mutation: UpdatePostMutation(input: input)) { (result, error) in
        if let error = error as? AWSAppSyncClientError {
            print("Error occurred: \(error.localizedDescription )")
        }
        if let resultError = result?.errors {
            print("Error saving the item on server: \(resultError)")
            CreatePost(input: input, methodhandler: methodhandler)
            return
        }
        methodhandler()
    }
}

func CreatePost(input: PostInput, methodhandler: @escaping MethodHandler){
    defineAppSyncSource()

    appSyncClient?.perform(mutation: CreatePostMutation(input: input)) { (result, error) in
        if let error = error as? AWSAppSyncClientError {
            print("Error occurred: \(error.localizedDescription )")
        }
        if let resultError = result?.errors {
            print("Error saving the item on server: \(resultError)")
            return
        }
        methodhandler()
    }
}


func DeletePost(input: DeleteUserInput, methodhandler: @escaping MethodHandler){
    defineAppSyncSource()

    appSyncClient?.perform(mutation: DeletePostMutation(input: input)) { (result, error) in
        if let error = error as? AWSAppSyncClientError {
            print("Error occurred: \(error.localizedDescription )")
        }
        if let resultError = result?.errors {
            print("Error saving the item on server: \(resultError)")
            return
        }
        methodhandler()
    }
}




func UpdateInvitation(input: InvitationInput, methodhandler: @escaping MethodHandler){
    defineAppSyncSource()

    appSyncClient?.perform(mutation: UpdateInvitationMutation(input: input)) { (result, error) in
        if let error = error as? AWSAppSyncClientError {
            print("Error occurred: \(error.localizedDescription )")
        }
        if let resultError = result?.errors {
            print("Error saving the item on server: \(resultError)")
            return
        }
        methodhandler()
    }
}

func CreateInvitation(input: InvitationInput, methodhandler: @escaping MethodHandler){
    defineAppSyncSource()

    appSyncClient?.perform(mutation: CreateInvitationMutation(input: input)) { (result, error) in
        if let error = error as? AWSAppSyncClientError {
            print("Error occurred: \(error.localizedDescription )")
        }
        if let resultError = result?.errors {
            print("Error saving the item on server: \(resultError)")
            return
        }
        methodhandler()
    }
}


func DeleteInvitation(input: DeleteUserInput, methodhandler: @escaping MethodHandler){
    defineAppSyncSource()

    appSyncClient?.perform(mutation: DeleteInvitationMutation(input: input)) { (result, error) in
        if let error = error as? AWSAppSyncClientError {
            print("Error occurred: \(error.localizedDescription )")
        }
        if let resultError = result?.errors {
            print("Error saving the item on server: \(resultError)")
            return
        }
        methodhandler()
    }
}


func UpdateCalendarEvent(input: CalendarInput, methodhandler: @escaping MethodHandler){
    defineAppSyncSource()

    appSyncClient?.perform(mutation: UpdateCalendarMutation(input: input)) { (result, error) in
        if let error = error as? AWSAppSyncClientError {
            print("Error occurred: \(error.localizedDescription )")
        }
        if let resultError = result?.errors {
            print("Creating Calendar Event")
            
            CreateCalendarEvent(input: input, methodhandler: methodhandler)
            return
        }
        methodhandler()
    }
}

func CreateCalendarEvent(input: CalendarInput, methodhandler: @escaping MethodHandler){
    defineAppSyncSource()

    appSyncClient?.perform(mutation: CreateCalendarMutation(input: input)) { (result, error) in
        if let error = error as? AWSAppSyncClientError {
            print("Error occurred: \(error.localizedDescription )")
        }
        if let resultError = result?.errors {
            print("Error saving the item on server: \(resultError)")
            return
        }
        
         print("Calendar Event Created")
        methodhandler()
    }
}


func DeleteCalendarEvent(input: DeleteUserInput, methodhandler: @escaping MethodHandler){
    defineAppSyncSource()

    appSyncClient?.perform(mutation: DeleteCalendarMutation(input: input)) { (result, error) in
        if let error = error as? AWSAppSyncClientError {
            print("Error occurred: \(error.localizedDescription )")
        }
        if let resultError = result?.errors {
            print("Error saving the item on server: \(resultError)")
            return
        }
        methodhandler()
    }
}


func UpdateMessageVault(input: MessageVaultInput, methodhandler: @escaping MethodHandler){
    defineAppSyncSource()

    appSyncClient?.perform(mutation: UpdateMessageVaultMutation(input: input)) { (result, error) in
        if let error = error as? AWSAppSyncClientError {
            print("Error occurred: \(error.localizedDescription )")
        }
        if let resultError = result?.errors {
            print("Creating MessageVault Event")
            
            CreateMessageVault(input: input, methodhandler: methodhandler)
            return
        }
        methodhandler()
    }
}

func CreateMessageVault(input: MessageVaultInput, methodhandler: @escaping MethodHandler){
    defineAppSyncSource()

    appSyncClient?.perform(mutation: CreateMessageVaultMutation(input: input)) { (result, error) in
        if let error = error as? AWSAppSyncClientError {
            print("Error occurred: \(error.localizedDescription )")
        }
        if let resultError = result?.errors {
            print("Error saving the item on server: \(resultError)")
            return
        }
        
         print("MessageVault Event Created")
        methodhandler()
    }
}


func DeleteMessageVault(input: DeleteUserInput, methodhandler: @escaping MethodHandler){
    defineAppSyncSource()

    appSyncClient?.perform(mutation: DeleteMessageVaultMutation(input: input)) { (result, error) in
        if let error = error as? AWSAppSyncClientError {
            print("Error occurred: \(error.localizedDescription )")
        }
        if let resultError = result?.errors {
            print("Error saving the item on server: \(resultError)")
            return
        }
        methodhandler()
    }
}



