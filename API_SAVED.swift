//  This file was automatically generated and should not be edited.

import AWSAppSync

public struct DeleteUserInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(primaryKey: String? = nil, sortKey: String? = nil) {
    graphQLMap = ["PrimaryKey": primaryKey, "SortKey": sortKey]
  }

  public var primaryKey: String? {
    get {
      return graphQLMap["PrimaryKey"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "PrimaryKey")
    }
  }

  public var sortKey: String? {
    get {
      return graphQLMap["SortKey"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "SortKey")
    }
  }
}

public struct ReactionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(eventId: GraphQLID? = nil, commentId: String? = nil, content: String? = nil, createdAt: String? = nil, reactionType: String? = nil, lastEdited: String? = nil, reactedBy: String? = nil, originalAuthor: String? = nil) {
    graphQLMap = ["eventId": eventId, "commentId": commentId, "content": content, "createdAt": createdAt, "reactionType": reactionType, "lastEdited": lastEdited, "reactedBy": reactedBy, "originalAuthor": originalAuthor]
  }

  /// The id of the comment's parent event.
  public var eventId: GraphQLID? {
    get {
      return graphQLMap["eventId"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eventId")
    }
  }

  /// A unique identifier for the comment.
  public var commentId: String? {
    get {
      return graphQLMap["commentId"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "commentId")
    }
  }

  /// The comment's content.
  public var content: String? {
    get {
      return graphQLMap["content"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "content")
    }
  }

  /// The comment timestamp. This field is indexed to enable sorted pagination.
  public var createdAt: String? {
    get {
      return graphQLMap["createdAt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "createdAt")
    }
  }

  public var reactionType: String? {
    get {
      return graphQLMap["reactionType"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "reactionType")
    }
  }

  public var lastEdited: String? {
    get {
      return graphQLMap["lastEdited"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lastEdited")
    }
  }

  public var reactedBy: String? {
    get {
      return graphQLMap["reactedBy"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "reactedBy")
    }
  }

  public var originalAuthor: String? {
    get {
      return graphQLMap["originalAuthor"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "originalAuthor")
    }
  }
}

public struct UserInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(primaryKey: String? = nil, sortKey: String? = nil, location: String? = nil, firstName: String? = nil, lastName: String? = nil, lastAccessed: String? = nil, ip: String? = nil, online: Int? = nil, uiLanguage: String? = nil, searchString: String? = nil, memberAccess: String? = nil, email: String? = nil, gender: String? = nil, birthDay: String? = nil, phone: String? = nil, isPublic: Bool? = nil, groups: String? = nil) {
    graphQLMap = ["PrimaryKey": primaryKey, "SortKey": sortKey, "Location": location, "FirstName": firstName, "LastName": lastName, "LastAccessed": lastAccessed, "IP": ip, "Online": online, "UILanguage": uiLanguage, "SearchString": searchString, "MemberAccess": memberAccess, "Email": email, "Gender": gender, "BirthDay": birthDay, "Phone": phone, "IsPublic": isPublic, "Groups": groups]
  }

  public var primaryKey: String? {
    get {
      return graphQLMap["PrimaryKey"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "PrimaryKey")
    }
  }

  /// #username
  public var sortKey: String? {
    get {
      return graphQLMap["SortKey"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "SortKey")
    }
  }

  /// #basedata
  public var location: String? {
    get {
      return graphQLMap["Location"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "Location")
    }
  }

  public var firstName: String? {
    get {
      return graphQLMap["FirstName"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "FirstName")
    }
  }

  public var lastName: String? {
    get {
      return graphQLMap["LastName"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "LastName")
    }
  }

  public var lastAccessed: String? {
    get {
      return graphQLMap["LastAccessed"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "LastAccessed")
    }
  }

  public var ip: String? {
    get {
      return graphQLMap["IP"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "IP")
    }
  }

  public var online: Int? {
    get {
      return graphQLMap["Online"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "Online")
    }
  }

  public var uiLanguage: String? {
    get {
      return graphQLMap["UILanguage"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "UILanguage")
    }
  }

  public var searchString: String? {
    get {
      return graphQLMap["SearchString"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "SearchString")
    }
  }

  public var memberAccess: String? {
    get {
      return graphQLMap["MemberAccess"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "MemberAccess")
    }
  }

  public var email: String? {
    get {
      return graphQLMap["Email"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "Email")
    }
  }

  public var gender: String? {
    get {
      return graphQLMap["Gender"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "Gender")
    }
  }

  public var birthDay: String? {
    get {
      return graphQLMap["BirthDay"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "BirthDay")
    }
  }

  public var phone: String? {
    get {
      return graphQLMap["Phone"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "Phone")
    }
  }

  public var isPublic: Bool? {
    get {
      return graphQLMap["IsPublic"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "IsPublic")
    }
  }

  public var groups: String? {
    get {
      return graphQLMap["Groups"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "Groups")
    }
  }
}

public struct CalendarInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(primaryKey: String? = nil, sortKey: String? = nil, eventDate: String? = nil, eventDescription: String? = nil) {
    graphQLMap = ["PrimaryKey": primaryKey, "SortKey": sortKey, "EventDate": eventDate, "EventDescription": eventDescription]
  }

  public var primaryKey: String? {
    get {
      return graphQLMap["PrimaryKey"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "PrimaryKey")
    }
  }

  /// #this is username of initiator
  public var sortKey: String? {
    get {
      return graphQLMap["SortKey"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "SortKey")
    }
  }

  /// #this is username of acceptor
  public var eventDate: String? {
    get {
      return graphQLMap["EventDate"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "EventDate")
    }
  }

  public var eventDescription: String? {
    get {
      return graphQLMap["EventDescription"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "EventDescription")
    }
  }
}

public struct InvitationInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(primaryKey: String? = nil, sortKey: String? = nil, isBlocked: Bool? = nil, status: String? = nil, createdAt: String? = nil, lastEdited: String? = nil, location: String? = nil, firstName: String? = nil, lastName: String? = nil, email: String? = nil, searchString: String? = nil, isRead: Bool? = nil) {
    graphQLMap = ["PrimaryKey": primaryKey, "SortKey": sortKey, "IsBlocked": isBlocked, "Status": status, "CreatedAt": createdAt, "LastEdited": lastEdited, "Location": location, "FirstName": firstName, "LastName": lastName, "Email": email, "SearchString": searchString, "IsRead": isRead]
  }

  public var primaryKey: String? {
    get {
      return graphQLMap["PrimaryKey"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "PrimaryKey")
    }
  }

  /// #this is username of initiator
  public var sortKey: String? {
    get {
      return graphQLMap["SortKey"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "SortKey")
    }
  }

  /// #this is username of acceptor
  public var isBlocked: Bool? {
    get {
      return graphQLMap["IsBlocked"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "IsBlocked")
    }
  }

  public var status: String? {
    get {
      return graphQLMap["Status"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "Status")
    }
  }

  public var createdAt: String? {
    get {
      return graphQLMap["CreatedAt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "CreatedAt")
    }
  }

  public var lastEdited: String? {
    get {
      return graphQLMap["LastEdited"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "LastEdited")
    }
  }

  public var location: String? {
    get {
      return graphQLMap["Location"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "Location")
    }
  }

  public var firstName: String? {
    get {
      return graphQLMap["FirstName"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "FirstName")
    }
  }

  public var lastName: String? {
    get {
      return graphQLMap["LastName"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "LastName")
    }
  }

  public var email: String? {
    get {
      return graphQLMap["Email"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "Email")
    }
  }

  public var searchString: String? {
    get {
      return graphQLMap["SearchString"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "SearchString")
    }
  }

  public var isRead: Bool? {
    get {
      return graphQLMap["IsRead"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "IsRead")
    }
  }
}

public struct PostInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(primaryKey: String? = nil, sortKey: String? = nil, mediaUrl: String? = nil, description: String? = nil, categories: String? = nil, likes: Int? = nil, year: String? = nil, searchString: String? = nil, postedBy: String? = nil, createdAt: String? = nil, lastEdited: String? = nil, postType: String? = nil) {
    graphQLMap = ["PrimaryKey": primaryKey, "SortKey": sortKey, "MediaURL": mediaUrl, "Description": description, "Categories": categories, "Likes": likes, "Year": year, "SearchString": searchString, "PostedBy": postedBy, "CreatedAt": createdAt, "LastEdited": lastEdited, "PostType": postType]
  }

  public var primaryKey: String? {
    get {
      return graphQLMap["PrimaryKey"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "PrimaryKey")
    }
  }

  /// #username
  public var sortKey: String? {
    get {
      return graphQLMap["SortKey"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "SortKey")
    }
  }

  /// #basedata
  public var mediaUrl: String? {
    get {
      return graphQLMap["MediaURL"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "MediaURL")
    }
  }

  public var description: String? {
    get {
      return graphQLMap["Description"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "Description")
    }
  }

  public var categories: String? {
    get {
      return graphQLMap["Categories"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "Categories")
    }
  }

  public var likes: Int? {
    get {
      return graphQLMap["Likes"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "Likes")
    }
  }

  public var year: String? {
    get {
      return graphQLMap["Year"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "Year")
    }
  }

  public var searchString: String? {
    get {
      return graphQLMap["SearchString"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "SearchString")
    }
  }

  public var postedBy: String? {
    get {
      return graphQLMap["PostedBy"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "PostedBy")
    }
  }

  public var createdAt: String? {
    get {
      return graphQLMap["CreatedAt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "CreatedAt")
    }
  }

  public var lastEdited: String? {
    get {
      return graphQLMap["LastEdited"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "LastEdited")
    }
  }

  public var postType: String? {
    get {
      return graphQLMap["PostType"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "PostType")
    }
  }
}

public struct MessageVaultInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(primaryKey: String? = nil, sortKey: String? = nil, mediaUrl: String? = nil, canBeOpenedOn: String? = nil, isLocked: Bool? = nil, searchString: String? = nil, postedBy: String? = nil, receivedBy: String? = nil, createdAt: String? = nil, lastEdited: String? = nil, postType: String? = nil, description: String? = nil, sendername: String? = nil, receivername: String? = nil) {
    graphQLMap = ["PrimaryKey": primaryKey, "SortKey": sortKey, "MediaURL": mediaUrl, "CanBeOpenedOn": canBeOpenedOn, "IsLocked": isLocked, "SearchString": searchString, "PostedBy": postedBy, "ReceivedBy": receivedBy, "CreatedAt": createdAt, "LastEdited": lastEdited, "PostType": postType, "Description": description, "Sendername": sendername, "Receivername": receivername]
  }

  public var primaryKey: String? {
    get {
      return graphQLMap["PrimaryKey"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "PrimaryKey")
    }
  }

  /// #username
  public var sortKey: String? {
    get {
      return graphQLMap["SortKey"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "SortKey")
    }
  }

  /// #basedata
  public var mediaUrl: String? {
    get {
      return graphQLMap["MediaURL"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "MediaURL")
    }
  }

  public var canBeOpenedOn: String? {
    get {
      return graphQLMap["CanBeOpenedOn"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "CanBeOpenedOn")
    }
  }

  public var isLocked: Bool? {
    get {
      return graphQLMap["IsLocked"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "IsLocked")
    }
  }

  public var searchString: String? {
    get {
      return graphQLMap["SearchString"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "SearchString")
    }
  }

  public var postedBy: String? {
    get {
      return graphQLMap["PostedBy"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "PostedBy")
    }
  }

  public var receivedBy: String? {
    get {
      return graphQLMap["ReceivedBy"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ReceivedBy")
    }
  }

  public var createdAt: String? {
    get {
      return graphQLMap["CreatedAt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "CreatedAt")
    }
  }

  public var lastEdited: String? {
    get {
      return graphQLMap["LastEdited"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "LastEdited")
    }
  }

  public var postType: String? {
    get {
      return graphQLMap["PostType"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "PostType")
    }
  }

  public var description: String? {
    get {
      return graphQLMap["Description"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "Description")
    }
  }

  public var sendername: String? {
    get {
      return graphQLMap["Sendername"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "Sendername")
    }
  }

  public var receivername: String? {
    get {
      return graphQLMap["Receivername"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "Receivername")
    }
  }
}

public final class TestEventMutation: GraphQLMutation {
  public static let operationString =
    "mutation TestEvent($input: DeleteUserInput) {\n  testEvent(input: $input) {\n    __typename\n    PrimaryKey\n    SortKey\n    Location\n    FirstName\n    LastName\n    LastAccessed\n    IP\n    Online\n    UILanguage\n    SearchString\n    MemberAccess\n    Email\n    Gender\n    BirthDay\n    Phone\n    IsPublic\n    Groups\n  }\n}"

  public var input: DeleteUserInput?

  public init(input: DeleteUserInput? = nil) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("testEvent", arguments: ["input": GraphQLVariable("input")], type: .object(TestEvent.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(testEvent: TestEvent? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "testEvent": testEvent.flatMap { $0.snapshot }])
    }

    public var testEvent: TestEvent? {
      get {
        return (snapshot["testEvent"] as? Snapshot).flatMap { TestEvent(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "testEvent")
      }
    }

    public struct TestEvent: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("PrimaryKey", type: .scalar(String.self)),
        GraphQLField("SortKey", type: .scalar(String.self)),
        GraphQLField("Location", type: .scalar(String.self)),
        GraphQLField("FirstName", type: .scalar(String.self)),
        GraphQLField("LastName", type: .scalar(String.self)),
        GraphQLField("LastAccessed", type: .scalar(String.self)),
        GraphQLField("IP", type: .scalar(String.self)),
        GraphQLField("Online", type: .scalar(Int.self)),
        GraphQLField("UILanguage", type: .scalar(String.self)),
        GraphQLField("SearchString", type: .scalar(String.self)),
        GraphQLField("MemberAccess", type: .scalar(String.self)),
        GraphQLField("Email", type: .scalar(String.self)),
        GraphQLField("Gender", type: .scalar(String.self)),
        GraphQLField("BirthDay", type: .scalar(String.self)),
        GraphQLField("Phone", type: .scalar(String.self)),
        GraphQLField("IsPublic", type: .scalar(Bool.self)),
        GraphQLField("Groups", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(primaryKey: String? = nil, sortKey: String? = nil, location: String? = nil, firstName: String? = nil, lastName: String? = nil, lastAccessed: String? = nil, ip: String? = nil, online: Int? = nil, uiLanguage: String? = nil, searchString: String? = nil, memberAccess: String? = nil, email: String? = nil, gender: String? = nil, birthDay: String? = nil, phone: String? = nil, isPublic: Bool? = nil, groups: String? = nil) {
        self.init(snapshot: ["__typename": "User", "PrimaryKey": primaryKey, "SortKey": sortKey, "Location": location, "FirstName": firstName, "LastName": lastName, "LastAccessed": lastAccessed, "IP": ip, "Online": online, "UILanguage": uiLanguage, "SearchString": searchString, "MemberAccess": memberAccess, "Email": email, "Gender": gender, "BirthDay": birthDay, "Phone": phone, "IsPublic": isPublic, "Groups": groups])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var primaryKey: String? {
        get {
          return snapshot["PrimaryKey"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "PrimaryKey")
        }
      }

      /// #username
      public var sortKey: String? {
        get {
          return snapshot["SortKey"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "SortKey")
        }
      }

      /// #basedata
      public var location: String? {
        get {
          return snapshot["Location"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Location")
        }
      }

      public var firstName: String? {
        get {
          return snapshot["FirstName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "FirstName")
        }
      }

      public var lastName: String? {
        get {
          return snapshot["LastName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "LastName")
        }
      }

      public var lastAccessed: String? {
        get {
          return snapshot["LastAccessed"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "LastAccessed")
        }
      }

      public var ip: String? {
        get {
          return snapshot["IP"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "IP")
        }
      }

      public var online: Int? {
        get {
          return snapshot["Online"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "Online")
        }
      }

      public var uiLanguage: String? {
        get {
          return snapshot["UILanguage"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "UILanguage")
        }
      }

      public var searchString: String? {
        get {
          return snapshot["SearchString"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "SearchString")
        }
      }

      public var memberAccess: String? {
        get {
          return snapshot["MemberAccess"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "MemberAccess")
        }
      }

      public var email: String? {
        get {
          return snapshot["Email"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Email")
        }
      }

      public var gender: String? {
        get {
          return snapshot["Gender"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Gender")
        }
      }

      public var birthDay: String? {
        get {
          return snapshot["BirthDay"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "BirthDay")
        }
      }

      public var phone: String? {
        get {
          return snapshot["Phone"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Phone")
        }
      }

      public var isPublic: Bool? {
        get {
          return snapshot["IsPublic"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "IsPublic")
        }
      }

      public var groups: String? {
        get {
          return snapshot["Groups"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Groups")
        }
      }
    }
  }
}

public final class CreateReactionMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateReaction($input: ReactionInput) {\n  createReaction(input: $input) {\n    __typename\n    eventId\n    commentId\n    content\n    createdAt\n    reactionType\n    lastEdited\n    reactedBy\n    originalAuthor\n  }\n}"

  public var input: ReactionInput?

  public init(input: ReactionInput? = nil) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createReaction", arguments: ["input": GraphQLVariable("input")], type: .object(CreateReaction.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createReaction: CreateReaction? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createReaction": createReaction.flatMap { $0.snapshot }])
    }

    public var createReaction: CreateReaction? {
      get {
        return (snapshot["createReaction"] as? Snapshot).flatMap { CreateReaction(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createReaction")
      }
    }

    public struct CreateReaction: GraphQLSelectionSet {
      public static let possibleTypes = ["Reaction"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("eventId", type: .scalar(GraphQLID.self)),
        GraphQLField("commentId", type: .scalar(String.self)),
        GraphQLField("content", type: .scalar(String.self)),
        GraphQLField("createdAt", type: .scalar(String.self)),
        GraphQLField("reactionType", type: .scalar(String.self)),
        GraphQLField("lastEdited", type: .scalar(String.self)),
        GraphQLField("reactedBy", type: .scalar(String.self)),
        GraphQLField("originalAuthor", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(eventId: GraphQLID? = nil, commentId: String? = nil, content: String? = nil, createdAt: String? = nil, reactionType: String? = nil, lastEdited: String? = nil, reactedBy: String? = nil, originalAuthor: String? = nil) {
        self.init(snapshot: ["__typename": "Reaction", "eventId": eventId, "commentId": commentId, "content": content, "createdAt": createdAt, "reactionType": reactionType, "lastEdited": lastEdited, "reactedBy": reactedBy, "originalAuthor": originalAuthor])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      /// The id of the comment's parent event.
      public var eventId: GraphQLID? {
        get {
          return snapshot["eventId"] as? GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "eventId")
        }
      }

      /// A unique identifier for the comment.
      public var commentId: String? {
        get {
          return snapshot["commentId"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "commentId")
        }
      }

      /// The comment's content.
      public var content: String? {
        get {
          return snapshot["content"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "content")
        }
      }

      /// The comment timestamp. This field is indexed to enable sorted pagination.
      public var createdAt: String? {
        get {
          return snapshot["createdAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var reactionType: String? {
        get {
          return snapshot["reactionType"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "reactionType")
        }
      }

      public var lastEdited: String? {
        get {
          return snapshot["lastEdited"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "lastEdited")
        }
      }

      public var reactedBy: String? {
        get {
          return snapshot["reactedBy"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "reactedBy")
        }
      }

      public var originalAuthor: String? {
        get {
          return snapshot["originalAuthor"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "originalAuthor")
        }
      }
    }
  }
}

public final class DeleteReactionMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteReaction($input: ReactionInput) {\n  deleteReaction(input: $input) {\n    __typename\n    eventId\n    commentId\n    content\n    createdAt\n    reactionType\n    lastEdited\n    reactedBy\n    originalAuthor\n  }\n}"

  public var input: ReactionInput?

  public init(input: ReactionInput? = nil) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteReaction", arguments: ["input": GraphQLVariable("input")], type: .object(DeleteReaction.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteReaction: DeleteReaction? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteReaction": deleteReaction.flatMap { $0.snapshot }])
    }

    public var deleteReaction: DeleteReaction? {
      get {
        return (snapshot["deleteReaction"] as? Snapshot).flatMap { DeleteReaction(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteReaction")
      }
    }

    public struct DeleteReaction: GraphQLSelectionSet {
      public static let possibleTypes = ["Reaction"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("eventId", type: .scalar(GraphQLID.self)),
        GraphQLField("commentId", type: .scalar(String.self)),
        GraphQLField("content", type: .scalar(String.self)),
        GraphQLField("createdAt", type: .scalar(String.self)),
        GraphQLField("reactionType", type: .scalar(String.self)),
        GraphQLField("lastEdited", type: .scalar(String.self)),
        GraphQLField("reactedBy", type: .scalar(String.self)),
        GraphQLField("originalAuthor", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(eventId: GraphQLID? = nil, commentId: String? = nil, content: String? = nil, createdAt: String? = nil, reactionType: String? = nil, lastEdited: String? = nil, reactedBy: String? = nil, originalAuthor: String? = nil) {
        self.init(snapshot: ["__typename": "Reaction", "eventId": eventId, "commentId": commentId, "content": content, "createdAt": createdAt, "reactionType": reactionType, "lastEdited": lastEdited, "reactedBy": reactedBy, "originalAuthor": originalAuthor])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      /// The id of the comment's parent event.
      public var eventId: GraphQLID? {
        get {
          return snapshot["eventId"] as? GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "eventId")
        }
      }

      /// A unique identifier for the comment.
      public var commentId: String? {
        get {
          return snapshot["commentId"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "commentId")
        }
      }

      /// The comment's content.
      public var content: String? {
        get {
          return snapshot["content"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "content")
        }
      }

      /// The comment timestamp. This field is indexed to enable sorted pagination.
      public var createdAt: String? {
        get {
          return snapshot["createdAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var reactionType: String? {
        get {
          return snapshot["reactionType"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "reactionType")
        }
      }

      public var lastEdited: String? {
        get {
          return snapshot["lastEdited"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "lastEdited")
        }
      }

      public var reactedBy: String? {
        get {
          return snapshot["reactedBy"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "reactedBy")
        }
      }

      public var originalAuthor: String? {
        get {
          return snapshot["originalAuthor"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "originalAuthor")
        }
      }
    }
  }
}

public final class UpdateReactionMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateReaction($input: ReactionInput) {\n  updateReaction(input: $input) {\n    __typename\n    eventId\n    commentId\n    content\n    createdAt\n    reactionType\n    lastEdited\n    reactedBy\n    originalAuthor\n  }\n}"

  public var input: ReactionInput?

  public init(input: ReactionInput? = nil) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateReaction", arguments: ["input": GraphQLVariable("input")], type: .object(UpdateReaction.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateReaction: UpdateReaction? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateReaction": updateReaction.flatMap { $0.snapshot }])
    }

    public var updateReaction: UpdateReaction? {
      get {
        return (snapshot["updateReaction"] as? Snapshot).flatMap { UpdateReaction(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateReaction")
      }
    }

    public struct UpdateReaction: GraphQLSelectionSet {
      public static let possibleTypes = ["Reaction"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("eventId", type: .scalar(GraphQLID.self)),
        GraphQLField("commentId", type: .scalar(String.self)),
        GraphQLField("content", type: .scalar(String.self)),
        GraphQLField("createdAt", type: .scalar(String.self)),
        GraphQLField("reactionType", type: .scalar(String.self)),
        GraphQLField("lastEdited", type: .scalar(String.self)),
        GraphQLField("reactedBy", type: .scalar(String.self)),
        GraphQLField("originalAuthor", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(eventId: GraphQLID? = nil, commentId: String? = nil, content: String? = nil, createdAt: String? = nil, reactionType: String? = nil, lastEdited: String? = nil, reactedBy: String? = nil, originalAuthor: String? = nil) {
        self.init(snapshot: ["__typename": "Reaction", "eventId": eventId, "commentId": commentId, "content": content, "createdAt": createdAt, "reactionType": reactionType, "lastEdited": lastEdited, "reactedBy": reactedBy, "originalAuthor": originalAuthor])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      /// The id of the comment's parent event.
      public var eventId: GraphQLID? {
        get {
          return snapshot["eventId"] as? GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "eventId")
        }
      }

      /// A unique identifier for the comment.
      public var commentId: String? {
        get {
          return snapshot["commentId"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "commentId")
        }
      }

      /// The comment's content.
      public var content: String? {
        get {
          return snapshot["content"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "content")
        }
      }

      /// The comment timestamp. This field is indexed to enable sorted pagination.
      public var createdAt: String? {
        get {
          return snapshot["createdAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var reactionType: String? {
        get {
          return snapshot["reactionType"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "reactionType")
        }
      }

      public var lastEdited: String? {
        get {
          return snapshot["lastEdited"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "lastEdited")
        }
      }

      public var reactedBy: String? {
        get {
          return snapshot["reactedBy"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "reactedBy")
        }
      }

      public var originalAuthor: String? {
        get {
          return snapshot["originalAuthor"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "originalAuthor")
        }
      }
    }
  }
}

public final class CreateUserMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateUser($input: UserInput) {\n  createUser(input: $input) {\n    __typename\n    PrimaryKey\n    SortKey\n    Location\n    FirstName\n    LastName\n    LastAccessed\n    IP\n    Online\n    UILanguage\n    SearchString\n    MemberAccess\n    Email\n    Gender\n    BirthDay\n    Phone\n    IsPublic\n    Groups\n  }\n}"

  public var input: UserInput?

  public init(input: UserInput? = nil) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createUser", arguments: ["input": GraphQLVariable("input")], type: .object(CreateUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createUser: CreateUser? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createUser": createUser.flatMap { $0.snapshot }])
    }

    public var createUser: CreateUser? {
      get {
        return (snapshot["createUser"] as? Snapshot).flatMap { CreateUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createUser")
      }
    }

    public struct CreateUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("PrimaryKey", type: .scalar(String.self)),
        GraphQLField("SortKey", type: .scalar(String.self)),
        GraphQLField("Location", type: .scalar(String.self)),
        GraphQLField("FirstName", type: .scalar(String.self)),
        GraphQLField("LastName", type: .scalar(String.self)),
        GraphQLField("LastAccessed", type: .scalar(String.self)),
        GraphQLField("IP", type: .scalar(String.self)),
        GraphQLField("Online", type: .scalar(Int.self)),
        GraphQLField("UILanguage", type: .scalar(String.self)),
        GraphQLField("SearchString", type: .scalar(String.self)),
        GraphQLField("MemberAccess", type: .scalar(String.self)),
        GraphQLField("Email", type: .scalar(String.self)),
        GraphQLField("Gender", type: .scalar(String.self)),
        GraphQLField("BirthDay", type: .scalar(String.self)),
        GraphQLField("Phone", type: .scalar(String.self)),
        GraphQLField("IsPublic", type: .scalar(Bool.self)),
        GraphQLField("Groups", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(primaryKey: String? = nil, sortKey: String? = nil, location: String? = nil, firstName: String? = nil, lastName: String? = nil, lastAccessed: String? = nil, ip: String? = nil, online: Int? = nil, uiLanguage: String? = nil, searchString: String? = nil, memberAccess: String? = nil, email: String? = nil, gender: String? = nil, birthDay: String? = nil, phone: String? = nil, isPublic: Bool? = nil, groups: String? = nil) {
        self.init(snapshot: ["__typename": "User", "PrimaryKey": primaryKey, "SortKey": sortKey, "Location": location, "FirstName": firstName, "LastName": lastName, "LastAccessed": lastAccessed, "IP": ip, "Online": online, "UILanguage": uiLanguage, "SearchString": searchString, "MemberAccess": memberAccess, "Email": email, "Gender": gender, "BirthDay": birthDay, "Phone": phone, "IsPublic": isPublic, "Groups": groups])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var primaryKey: String? {
        get {
          return snapshot["PrimaryKey"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "PrimaryKey")
        }
      }

      /// #username
      public var sortKey: String? {
        get {
          return snapshot["SortKey"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "SortKey")
        }
      }

      /// #basedata
      public var location: String? {
        get {
          return snapshot["Location"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Location")
        }
      }

      public var firstName: String? {
        get {
          return snapshot["FirstName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "FirstName")
        }
      }

      public var lastName: String? {
        get {
          return snapshot["LastName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "LastName")
        }
      }

      public var lastAccessed: String? {
        get {
          return snapshot["LastAccessed"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "LastAccessed")
        }
      }

      public var ip: String? {
        get {
          return snapshot["IP"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "IP")
        }
      }

      public var online: Int? {
        get {
          return snapshot["Online"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "Online")
        }
      }

      public var uiLanguage: String? {
        get {
          return snapshot["UILanguage"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "UILanguage")
        }
      }

      public var searchString: String? {
        get {
          return snapshot["SearchString"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "SearchString")
        }
      }

      public var memberAccess: String? {
        get {
          return snapshot["MemberAccess"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "MemberAccess")
        }
      }

      public var email: String? {
        get {
          return snapshot["Email"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Email")
        }
      }

      public var gender: String? {
        get {
          return snapshot["Gender"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Gender")
        }
      }

      public var birthDay: String? {
        get {
          return snapshot["BirthDay"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "BirthDay")
        }
      }

      public var phone: String? {
        get {
          return snapshot["Phone"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Phone")
        }
      }

      public var isPublic: Bool? {
        get {
          return snapshot["IsPublic"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "IsPublic")
        }
      }

      public var groups: String? {
        get {
          return snapshot["Groups"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Groups")
        }
      }
    }
  }
}

public final class DeleteUserMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteUser($input: DeleteUserInput) {\n  deleteUser(input: $input) {\n    __typename\n    PrimaryKey\n    SortKey\n    Location\n    FirstName\n    LastName\n    LastAccessed\n    IP\n    Online\n    UILanguage\n    SearchString\n    MemberAccess\n    Email\n    Gender\n    BirthDay\n    Phone\n    IsPublic\n    Groups\n  }\n}"

  public var input: DeleteUserInput?

  public init(input: DeleteUserInput? = nil) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteUser", arguments: ["input": GraphQLVariable("input")], type: .object(DeleteUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteUser: DeleteUser? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteUser": deleteUser.flatMap { $0.snapshot }])
    }

    public var deleteUser: DeleteUser? {
      get {
        return (snapshot["deleteUser"] as? Snapshot).flatMap { DeleteUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteUser")
      }
    }

    public struct DeleteUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("PrimaryKey", type: .scalar(String.self)),
        GraphQLField("SortKey", type: .scalar(String.self)),
        GraphQLField("Location", type: .scalar(String.self)),
        GraphQLField("FirstName", type: .scalar(String.self)),
        GraphQLField("LastName", type: .scalar(String.self)),
        GraphQLField("LastAccessed", type: .scalar(String.self)),
        GraphQLField("IP", type: .scalar(String.self)),
        GraphQLField("Online", type: .scalar(Int.self)),
        GraphQLField("UILanguage", type: .scalar(String.self)),
        GraphQLField("SearchString", type: .scalar(String.self)),
        GraphQLField("MemberAccess", type: .scalar(String.self)),
        GraphQLField("Email", type: .scalar(String.self)),
        GraphQLField("Gender", type: .scalar(String.self)),
        GraphQLField("BirthDay", type: .scalar(String.self)),
        GraphQLField("Phone", type: .scalar(String.self)),
        GraphQLField("IsPublic", type: .scalar(Bool.self)),
        GraphQLField("Groups", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(primaryKey: String? = nil, sortKey: String? = nil, location: String? = nil, firstName: String? = nil, lastName: String? = nil, lastAccessed: String? = nil, ip: String? = nil, online: Int? = nil, uiLanguage: String? = nil, searchString: String? = nil, memberAccess: String? = nil, email: String? = nil, gender: String? = nil, birthDay: String? = nil, phone: String? = nil, isPublic: Bool? = nil, groups: String? = nil) {
        self.init(snapshot: ["__typename": "User", "PrimaryKey": primaryKey, "SortKey": sortKey, "Location": location, "FirstName": firstName, "LastName": lastName, "LastAccessed": lastAccessed, "IP": ip, "Online": online, "UILanguage": uiLanguage, "SearchString": searchString, "MemberAccess": memberAccess, "Email": email, "Gender": gender, "BirthDay": birthDay, "Phone": phone, "IsPublic": isPublic, "Groups": groups])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var primaryKey: String? {
        get {
          return snapshot["PrimaryKey"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "PrimaryKey")
        }
      }

      /// #username
      public var sortKey: String? {
        get {
          return snapshot["SortKey"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "SortKey")
        }
      }

      /// #basedata
      public var location: String? {
        get {
          return snapshot["Location"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Location")
        }
      }

      public var firstName: String? {
        get {
          return snapshot["FirstName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "FirstName")
        }
      }

      public var lastName: String? {
        get {
          return snapshot["LastName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "LastName")
        }
      }

      public var lastAccessed: String? {
        get {
          return snapshot["LastAccessed"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "LastAccessed")
        }
      }

      public var ip: String? {
        get {
          return snapshot["IP"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "IP")
        }
      }

      public var online: Int? {
        get {
          return snapshot["Online"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "Online")
        }
      }

      public var uiLanguage: String? {
        get {
          return snapshot["UILanguage"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "UILanguage")
        }
      }

      public var searchString: String? {
        get {
          return snapshot["SearchString"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "SearchString")
        }
      }

      public var memberAccess: String? {
        get {
          return snapshot["MemberAccess"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "MemberAccess")
        }
      }

      public var email: String? {
        get {
          return snapshot["Email"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Email")
        }
      }

      public var gender: String? {
        get {
          return snapshot["Gender"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Gender")
        }
      }

      public var birthDay: String? {
        get {
          return snapshot["BirthDay"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "BirthDay")
        }
      }

      public var phone: String? {
        get {
          return snapshot["Phone"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Phone")
        }
      }

      public var isPublic: Bool? {
        get {
          return snapshot["IsPublic"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "IsPublic")
        }
      }

      public var groups: String? {
        get {
          return snapshot["Groups"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Groups")
        }
      }
    }
  }
}

public final class UpdateUserMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateUser($input: UserInput) {\n  updateUser(input: $input) {\n    __typename\n    PrimaryKey\n    SortKey\n    Location\n    FirstName\n    LastName\n    LastAccessed\n    IP\n    Online\n    UILanguage\n    SearchString\n    MemberAccess\n    Email\n    Gender\n    BirthDay\n    Phone\n    IsPublic\n    Groups\n  }\n}"

  public var input: UserInput?

  public init(input: UserInput? = nil) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateUser", arguments: ["input": GraphQLVariable("input")], type: .object(UpdateUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateUser: UpdateUser? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateUser": updateUser.flatMap { $0.snapshot }])
    }

    public var updateUser: UpdateUser? {
      get {
        return (snapshot["updateUser"] as? Snapshot).flatMap { UpdateUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateUser")
      }
    }

    public struct UpdateUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("PrimaryKey", type: .scalar(String.self)),
        GraphQLField("SortKey", type: .scalar(String.self)),
        GraphQLField("Location", type: .scalar(String.self)),
        GraphQLField("FirstName", type: .scalar(String.self)),
        GraphQLField("LastName", type: .scalar(String.self)),
        GraphQLField("LastAccessed", type: .scalar(String.self)),
        GraphQLField("IP", type: .scalar(String.self)),
        GraphQLField("Online", type: .scalar(Int.self)),
        GraphQLField("UILanguage", type: .scalar(String.self)),
        GraphQLField("SearchString", type: .scalar(String.self)),
        GraphQLField("MemberAccess", type: .scalar(String.self)),
        GraphQLField("Email", type: .scalar(String.self)),
        GraphQLField("Gender", type: .scalar(String.self)),
        GraphQLField("BirthDay", type: .scalar(String.self)),
        GraphQLField("Phone", type: .scalar(String.self)),
        GraphQLField("IsPublic", type: .scalar(Bool.self)),
        GraphQLField("Groups", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(primaryKey: String? = nil, sortKey: String? = nil, location: String? = nil, firstName: String? = nil, lastName: String? = nil, lastAccessed: String? = nil, ip: String? = nil, online: Int? = nil, uiLanguage: String? = nil, searchString: String? = nil, memberAccess: String? = nil, email: String? = nil, gender: String? = nil, birthDay: String? = nil, phone: String? = nil, isPublic: Bool? = nil, groups: String? = nil) {
        self.init(snapshot: ["__typename": "User", "PrimaryKey": primaryKey, "SortKey": sortKey, "Location": location, "FirstName": firstName, "LastName": lastName, "LastAccessed": lastAccessed, "IP": ip, "Online": online, "UILanguage": uiLanguage, "SearchString": searchString, "MemberAccess": memberAccess, "Email": email, "Gender": gender, "BirthDay": birthDay, "Phone": phone, "IsPublic": isPublic, "Groups": groups])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var primaryKey: String? {
        get {
          return snapshot["PrimaryKey"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "PrimaryKey")
        }
      }

      /// #username
      public var sortKey: String? {
        get {
          return snapshot["SortKey"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "SortKey")
        }
      }

      /// #basedata
      public var location: String? {
        get {
          return snapshot["Location"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Location")
        }
      }

      public var firstName: String? {
        get {
          return snapshot["FirstName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "FirstName")
        }
      }

      public var lastName: String? {
        get {
          return snapshot["LastName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "LastName")
        }
      }

      public var lastAccessed: String? {
        get {
          return snapshot["LastAccessed"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "LastAccessed")
        }
      }

      public var ip: String? {
        get {
          return snapshot["IP"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "IP")
        }
      }

      public var online: Int? {
        get {
          return snapshot["Online"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "Online")
        }
      }

      public var uiLanguage: String? {
        get {
          return snapshot["UILanguage"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "UILanguage")
        }
      }

      public var searchString: String? {
        get {
          return snapshot["SearchString"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "SearchString")
        }
      }

      public var memberAccess: String? {
        get {
          return snapshot["MemberAccess"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "MemberAccess")
        }
      }

      public var email: String? {
        get {
          return snapshot["Email"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Email")
        }
      }

      public var gender: String? {
        get {
          return snapshot["Gender"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Gender")
        }
      }

      public var birthDay: String? {
        get {
          return snapshot["BirthDay"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "BirthDay")
        }
      }

      public var phone: String? {
        get {
          return snapshot["Phone"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Phone")
        }
      }

      public var isPublic: Bool? {
        get {
          return snapshot["IsPublic"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "IsPublic")
        }
      }

      public var groups: String? {
        get {
          return snapshot["Groups"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Groups")
        }
      }
    }
  }
}

public final class CreateCalendarMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateCalendar($input: CalendarInput) {\n  createCalendar(input: $input) {\n    __typename\n    PrimaryKey\n    SortKey\n    EventDate\n    EventDescription\n  }\n}"

  public var input: CalendarInput?

  public init(input: CalendarInput? = nil) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createCalendar", arguments: ["input": GraphQLVariable("input")], type: .object(CreateCalendar.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createCalendar: CreateCalendar? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createCalendar": createCalendar.flatMap { $0.snapshot }])
    }

    public var createCalendar: CreateCalendar? {
      get {
        return (snapshot["createCalendar"] as? Snapshot).flatMap { CreateCalendar(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createCalendar")
      }
    }

    public struct CreateCalendar: GraphQLSelectionSet {
      public static let possibleTypes = ["Calendar"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("PrimaryKey", type: .scalar(String.self)),
        GraphQLField("SortKey", type: .scalar(String.self)),
        GraphQLField("EventDate", type: .scalar(String.self)),
        GraphQLField("EventDescription", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(primaryKey: String? = nil, sortKey: String? = nil, eventDate: String? = nil, eventDescription: String? = nil) {
        self.init(snapshot: ["__typename": "Calendar", "PrimaryKey": primaryKey, "SortKey": sortKey, "EventDate": eventDate, "EventDescription": eventDescription])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var primaryKey: String? {
        get {
          return snapshot["PrimaryKey"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "PrimaryKey")
        }
      }

      /// #this is username of initiator
      public var sortKey: String? {
        get {
          return snapshot["SortKey"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "SortKey")
        }
      }

      /// #this is username of acceptor
      public var eventDate: String? {
        get {
          return snapshot["EventDate"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "EventDate")
        }
      }

      public var eventDescription: String? {
        get {
          return snapshot["EventDescription"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "EventDescription")
        }
      }
    }
  }
}

public final class DeleteCalendarMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteCalendar($input: DeleteUserInput) {\n  deleteCalendar(input: $input) {\n    __typename\n    PrimaryKey\n    SortKey\n    EventDate\n    EventDescription\n  }\n}"

  public var input: DeleteUserInput?

  public init(input: DeleteUserInput? = nil) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteCalendar", arguments: ["input": GraphQLVariable("input")], type: .object(DeleteCalendar.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteCalendar: DeleteCalendar? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteCalendar": deleteCalendar.flatMap { $0.snapshot }])
    }

    public var deleteCalendar: DeleteCalendar? {
      get {
        return (snapshot["deleteCalendar"] as? Snapshot).flatMap { DeleteCalendar(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteCalendar")
      }
    }

    public struct DeleteCalendar: GraphQLSelectionSet {
      public static let possibleTypes = ["Calendar"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("PrimaryKey", type: .scalar(String.self)),
        GraphQLField("SortKey", type: .scalar(String.self)),
        GraphQLField("EventDate", type: .scalar(String.self)),
        GraphQLField("EventDescription", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(primaryKey: String? = nil, sortKey: String? = nil, eventDate: String? = nil, eventDescription: String? = nil) {
        self.init(snapshot: ["__typename": "Calendar", "PrimaryKey": primaryKey, "SortKey": sortKey, "EventDate": eventDate, "EventDescription": eventDescription])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var primaryKey: String? {
        get {
          return snapshot["PrimaryKey"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "PrimaryKey")
        }
      }

      /// #this is username of initiator
      public var sortKey: String? {
        get {
          return snapshot["SortKey"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "SortKey")
        }
      }

      /// #this is username of acceptor
      public var eventDate: String? {
        get {
          return snapshot["EventDate"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "EventDate")
        }
      }

      public var eventDescription: String? {
        get {
          return snapshot["EventDescription"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "EventDescription")
        }
      }
    }
  }
}

public final class UpdateCalendarMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateCalendar($input: CalendarInput) {\n  updateCalendar(input: $input) {\n    __typename\n    PrimaryKey\n    SortKey\n    EventDate\n    EventDescription\n  }\n}"

  public var input: CalendarInput?

  public init(input: CalendarInput? = nil) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateCalendar", arguments: ["input": GraphQLVariable("input")], type: .object(UpdateCalendar.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateCalendar: UpdateCalendar? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateCalendar": updateCalendar.flatMap { $0.snapshot }])
    }

    public var updateCalendar: UpdateCalendar? {
      get {
        return (snapshot["updateCalendar"] as? Snapshot).flatMap { UpdateCalendar(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateCalendar")
      }
    }

    public struct UpdateCalendar: GraphQLSelectionSet {
      public static let possibleTypes = ["Calendar"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("PrimaryKey", type: .scalar(String.self)),
        GraphQLField("SortKey", type: .scalar(String.self)),
        GraphQLField("EventDate", type: .scalar(String.self)),
        GraphQLField("EventDescription", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(primaryKey: String? = nil, sortKey: String? = nil, eventDate: String? = nil, eventDescription: String? = nil) {
        self.init(snapshot: ["__typename": "Calendar", "PrimaryKey": primaryKey, "SortKey": sortKey, "EventDate": eventDate, "EventDescription": eventDescription])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var primaryKey: String? {
        get {
          return snapshot["PrimaryKey"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "PrimaryKey")
        }
      }

      /// #this is username of initiator
      public var sortKey: String? {
        get {
          return snapshot["SortKey"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "SortKey")
        }
      }

      /// #this is username of acceptor
      public var eventDate: String? {
        get {
          return snapshot["EventDate"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "EventDate")
        }
      }

      public var eventDescription: String? {
        get {
          return snapshot["EventDescription"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "EventDescription")
        }
      }
    }
  }
}

public final class CreateInvitationMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateInvitation($input: InvitationInput) {\n  createInvitation(input: $input) {\n    __typename\n    PrimaryKey\n    SortKey\n    IsBlocked\n    Status\n    CreatedAt\n    LastEdited\n    Location\n    FirstName\n    LastName\n    Email\n    SearchString\n    IsRead\n  }\n}"

  public var input: InvitationInput?

  public init(input: InvitationInput? = nil) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createInvitation", arguments: ["input": GraphQLVariable("input")], type: .object(CreateInvitation.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createInvitation: CreateInvitation? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createInvitation": createInvitation.flatMap { $0.snapshot }])
    }

    public var createInvitation: CreateInvitation? {
      get {
        return (snapshot["createInvitation"] as? Snapshot).flatMap { CreateInvitation(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createInvitation")
      }
    }

    public struct CreateInvitation: GraphQLSelectionSet {
      public static let possibleTypes = ["Invitation"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("PrimaryKey", type: .scalar(String.self)),
        GraphQLField("SortKey", type: .scalar(String.self)),
        GraphQLField("IsBlocked", type: .scalar(Bool.self)),
        GraphQLField("Status", type: .scalar(String.self)),
        GraphQLField("CreatedAt", type: .scalar(String.self)),
        GraphQLField("LastEdited", type: .scalar(String.self)),
        GraphQLField("Location", type: .scalar(String.self)),
        GraphQLField("FirstName", type: .scalar(String.self)),
        GraphQLField("LastName", type: .scalar(String.self)),
        GraphQLField("Email", type: .scalar(String.self)),
        GraphQLField("SearchString", type: .scalar(String.self)),
        GraphQLField("IsRead", type: .scalar(Bool.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(primaryKey: String? = nil, sortKey: String? = nil, isBlocked: Bool? = nil, status: String? = nil, createdAt: String? = nil, lastEdited: String? = nil, location: String? = nil, firstName: String? = nil, lastName: String? = nil, email: String? = nil, searchString: String? = nil, isRead: Bool? = nil) {
        self.init(snapshot: ["__typename": "Invitation", "PrimaryKey": primaryKey, "SortKey": sortKey, "IsBlocked": isBlocked, "Status": status, "CreatedAt": createdAt, "LastEdited": lastEdited, "Location": location, "FirstName": firstName, "LastName": lastName, "Email": email, "SearchString": searchString, "IsRead": isRead])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var primaryKey: String? {
        get {
          return snapshot["PrimaryKey"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "PrimaryKey")
        }
      }

      /// #this is username of initiator
      public var sortKey: String? {
        get {
          return snapshot["SortKey"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "SortKey")
        }
      }

      /// #this is username of acceptor
      public var isBlocked: Bool? {
        get {
          return snapshot["IsBlocked"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "IsBlocked")
        }
      }

      public var status: String? {
        get {
          return snapshot["Status"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Status")
        }
      }

      public var createdAt: String? {
        get {
          return snapshot["CreatedAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "CreatedAt")
        }
      }

      public var lastEdited: String? {
        get {
          return snapshot["LastEdited"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "LastEdited")
        }
      }

      public var location: String? {
        get {
          return snapshot["Location"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Location")
        }
      }

      public var firstName: String? {
        get {
          return snapshot["FirstName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "FirstName")
        }
      }

      public var lastName: String? {
        get {
          return snapshot["LastName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "LastName")
        }
      }

      public var email: String? {
        get {
          return snapshot["Email"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Email")
        }
      }

      public var searchString: String? {
        get {
          return snapshot["SearchString"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "SearchString")
        }
      }

      public var isRead: Bool? {
        get {
          return snapshot["IsRead"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "IsRead")
        }
      }
    }
  }
}

public final class DeleteInvitationMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteInvitation($input: DeleteUserInput) {\n  deleteInvitation(input: $input) {\n    __typename\n    PrimaryKey\n    SortKey\n    IsBlocked\n    Status\n    CreatedAt\n    LastEdited\n    Location\n    FirstName\n    LastName\n    Email\n    SearchString\n    IsRead\n  }\n}"

  public var input: DeleteUserInput?

  public init(input: DeleteUserInput? = nil) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteInvitation", arguments: ["input": GraphQLVariable("input")], type: .object(DeleteInvitation.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteInvitation: DeleteInvitation? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteInvitation": deleteInvitation.flatMap { $0.snapshot }])
    }

    public var deleteInvitation: DeleteInvitation? {
      get {
        return (snapshot["deleteInvitation"] as? Snapshot).flatMap { DeleteInvitation(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteInvitation")
      }
    }

    public struct DeleteInvitation: GraphQLSelectionSet {
      public static let possibleTypes = ["Invitation"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("PrimaryKey", type: .scalar(String.self)),
        GraphQLField("SortKey", type: .scalar(String.self)),
        GraphQLField("IsBlocked", type: .scalar(Bool.self)),
        GraphQLField("Status", type: .scalar(String.self)),
        GraphQLField("CreatedAt", type: .scalar(String.self)),
        GraphQLField("LastEdited", type: .scalar(String.self)),
        GraphQLField("Location", type: .scalar(String.self)),
        GraphQLField("FirstName", type: .scalar(String.self)),
        GraphQLField("LastName", type: .scalar(String.self)),
        GraphQLField("Email", type: .scalar(String.self)),
        GraphQLField("SearchString", type: .scalar(String.self)),
        GraphQLField("IsRead", type: .scalar(Bool.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(primaryKey: String? = nil, sortKey: String? = nil, isBlocked: Bool? = nil, status: String? = nil, createdAt: String? = nil, lastEdited: String? = nil, location: String? = nil, firstName: String? = nil, lastName: String? = nil, email: String? = nil, searchString: String? = nil, isRead: Bool? = nil) {
        self.init(snapshot: ["__typename": "Invitation", "PrimaryKey": primaryKey, "SortKey": sortKey, "IsBlocked": isBlocked, "Status": status, "CreatedAt": createdAt, "LastEdited": lastEdited, "Location": location, "FirstName": firstName, "LastName": lastName, "Email": email, "SearchString": searchString, "IsRead": isRead])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var primaryKey: String? {
        get {
          return snapshot["PrimaryKey"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "PrimaryKey")
        }
      }

      /// #this is username of initiator
      public var sortKey: String? {
        get {
          return snapshot["SortKey"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "SortKey")
        }
      }

      /// #this is username of acceptor
      public var isBlocked: Bool? {
        get {
          return snapshot["IsBlocked"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "IsBlocked")
        }
      }

      public var status: String? {
        get {
          return snapshot["Status"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Status")
        }
      }

      public var createdAt: String? {
        get {
          return snapshot["CreatedAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "CreatedAt")
        }
      }

      public var lastEdited: String? {
        get {
          return snapshot["LastEdited"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "LastEdited")
        }
      }

      public var location: String? {
        get {
          return snapshot["Location"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Location")
        }
      }

      public var firstName: String? {
        get {
          return snapshot["FirstName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "FirstName")
        }
      }

      public var lastName: String? {
        get {
          return snapshot["LastName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "LastName")
        }
      }

      public var email: String? {
        get {
          return snapshot["Email"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Email")
        }
      }

      public var searchString: String? {
        get {
          return snapshot["SearchString"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "SearchString")
        }
      }

      public var isRead: Bool? {
        get {
          return snapshot["IsRead"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "IsRead")
        }
      }
    }
  }
}

public final class UpdateInvitationMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateInvitation($input: InvitationInput) {\n  updateInvitation(input: $input) {\n    __typename\n    PrimaryKey\n    SortKey\n    IsBlocked\n    Status\n    CreatedAt\n    LastEdited\n    Location\n    FirstName\n    LastName\n    Email\n    SearchString\n    IsRead\n  }\n}"

  public var input: InvitationInput?

  public init(input: InvitationInput? = nil) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateInvitation", arguments: ["input": GraphQLVariable("input")], type: .object(UpdateInvitation.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateInvitation: UpdateInvitation? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateInvitation": updateInvitation.flatMap { $0.snapshot }])
    }

    public var updateInvitation: UpdateInvitation? {
      get {
        return (snapshot["updateInvitation"] as? Snapshot).flatMap { UpdateInvitation(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateInvitation")
      }
    }

    public struct UpdateInvitation: GraphQLSelectionSet {
      public static let possibleTypes = ["Invitation"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("PrimaryKey", type: .scalar(String.self)),
        GraphQLField("SortKey", type: .scalar(String.self)),
        GraphQLField("IsBlocked", type: .scalar(Bool.self)),
        GraphQLField("Status", type: .scalar(String.self)),
        GraphQLField("CreatedAt", type: .scalar(String.self)),
        GraphQLField("LastEdited", type: .scalar(String.self)),
        GraphQLField("Location", type: .scalar(String.self)),
        GraphQLField("FirstName", type: .scalar(String.self)),
        GraphQLField("LastName", type: .scalar(String.self)),
        GraphQLField("Email", type: .scalar(String.self)),
        GraphQLField("SearchString", type: .scalar(String.self)),
        GraphQLField("IsRead", type: .scalar(Bool.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(primaryKey: String? = nil, sortKey: String? = nil, isBlocked: Bool? = nil, status: String? = nil, createdAt: String? = nil, lastEdited: String? = nil, location: String? = nil, firstName: String? = nil, lastName: String? = nil, email: String? = nil, searchString: String? = nil, isRead: Bool? = nil) {
        self.init(snapshot: ["__typename": "Invitation", "PrimaryKey": primaryKey, "SortKey": sortKey, "IsBlocked": isBlocked, "Status": status, "CreatedAt": createdAt, "LastEdited": lastEdited, "Location": location, "FirstName": firstName, "LastName": lastName, "Email": email, "SearchString": searchString, "IsRead": isRead])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var primaryKey: String? {
        get {
          return snapshot["PrimaryKey"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "PrimaryKey")
        }
      }

      /// #this is username of initiator
      public var sortKey: String? {
        get {
          return snapshot["SortKey"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "SortKey")
        }
      }

      /// #this is username of acceptor
      public var isBlocked: Bool? {
        get {
          return snapshot["IsBlocked"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "IsBlocked")
        }
      }

      public var status: String? {
        get {
          return snapshot["Status"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Status")
        }
      }

      public var createdAt: String? {
        get {
          return snapshot["CreatedAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "CreatedAt")
        }
      }

      public var lastEdited: String? {
        get {
          return snapshot["LastEdited"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "LastEdited")
        }
      }

      public var location: String? {
        get {
          return snapshot["Location"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Location")
        }
      }

      public var firstName: String? {
        get {
          return snapshot["FirstName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "FirstName")
        }
      }

      public var lastName: String? {
        get {
          return snapshot["LastName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "LastName")
        }
      }

      public var email: String? {
        get {
          return snapshot["Email"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Email")
        }
      }

      public var searchString: String? {
        get {
          return snapshot["SearchString"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "SearchString")
        }
      }

      public var isRead: Bool? {
        get {
          return snapshot["IsRead"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "IsRead")
        }
      }
    }
  }
}

public final class CreatePostMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreatePost($input: PostInput) {\n  createPost(input: $input) {\n    __typename\n    PrimaryKey\n    SortKey\n    MediaURL\n    Description\n    Categories\n    Likes\n    Year\n    SearchString\n    PostedBy\n    CreatedAt\n    LastEdited\n    PostType\n    comments {\n      __typename\n      eventId\n      commentId\n      content\n      createdAt\n      reactionType\n      lastEdited\n      reactedBy\n      originalAuthor\n    }\n  }\n}"

  public var input: PostInput?

  public init(input: PostInput? = nil) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createPost", arguments: ["input": GraphQLVariable("input")], type: .object(CreatePost.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createPost: CreatePost? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createPost": createPost.flatMap { $0.snapshot }])
    }

    public var createPost: CreatePost? {
      get {
        return (snapshot["createPost"] as? Snapshot).flatMap { CreatePost(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createPost")
      }
    }

    public struct CreatePost: GraphQLSelectionSet {
      public static let possibleTypes = ["Post"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("PrimaryKey", type: .scalar(String.self)),
        GraphQLField("SortKey", type: .scalar(String.self)),
        GraphQLField("MediaURL", type: .scalar(String.self)),
        GraphQLField("Description", type: .scalar(String.self)),
        GraphQLField("Categories", type: .scalar(String.self)),
        GraphQLField("Likes", type: .scalar(Int.self)),
        GraphQLField("Year", type: .scalar(String.self)),
        GraphQLField("SearchString", type: .scalar(String.self)),
        GraphQLField("PostedBy", type: .scalar(String.self)),
        GraphQLField("CreatedAt", type: .scalar(String.self)),
        GraphQLField("LastEdited", type: .scalar(String.self)),
        GraphQLField("PostType", type: .scalar(String.self)),
        GraphQLField("comments", type: .object(Comment.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(primaryKey: String? = nil, sortKey: String? = nil, mediaUrl: String? = nil, description: String? = nil, categories: String? = nil, likes: Int? = nil, year: String? = nil, searchString: String? = nil, postedBy: String? = nil, createdAt: String? = nil, lastEdited: String? = nil, postType: String? = nil, comments: Comment? = nil) {
        self.init(snapshot: ["__typename": "Post", "PrimaryKey": primaryKey, "SortKey": sortKey, "MediaURL": mediaUrl, "Description": description, "Categories": categories, "Likes": likes, "Year": year, "SearchString": searchString, "PostedBy": postedBy, "CreatedAt": createdAt, "LastEdited": lastEdited, "PostType": postType, "comments": comments.flatMap { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var primaryKey: String? {
        get {
          return snapshot["PrimaryKey"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "PrimaryKey")
        }
      }

      /// #username
      public var sortKey: String? {
        get {
          return snapshot["SortKey"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "SortKey")
        }
      }

      /// #basedata
      public var mediaUrl: String? {
        get {
          return snapshot["MediaURL"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "MediaURL")
        }
      }

      public var description: String? {
        get {
          return snapshot["Description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Description")
        }
      }

      public var categories: String? {
        get {
          return snapshot["Categories"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Categories")
        }
      }

      public var likes: Int? {
        get {
          return snapshot["Likes"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "Likes")
        }
      }

      public var year: String? {
        get {
          return snapshot["Year"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Year")
        }
      }

      public var searchString: String? {
        get {
          return snapshot["SearchString"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "SearchString")
        }
      }

      public var postedBy: String? {
        get {
          return snapshot["PostedBy"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "PostedBy")
        }
      }

      public var createdAt: String? {
        get {
          return snapshot["CreatedAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "CreatedAt")
        }
      }

      public var lastEdited: String? {
        get {
          return snapshot["LastEdited"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "LastEdited")
        }
      }

      public var postType: String? {
        get {
          return snapshot["PostType"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "PostType")
        }
      }

      public var comments: Comment? {
        get {
          return (snapshot["comments"] as? Snapshot).flatMap { Comment(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "comments")
        }
      }

      public struct Comment: GraphQLSelectionSet {
        public static let possibleTypes = ["Reaction"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("eventId", type: .scalar(GraphQLID.self)),
          GraphQLField("commentId", type: .scalar(String.self)),
          GraphQLField("content", type: .scalar(String.self)),
          GraphQLField("createdAt", type: .scalar(String.self)),
          GraphQLField("reactionType", type: .scalar(String.self)),
          GraphQLField("lastEdited", type: .scalar(String.self)),
          GraphQLField("reactedBy", type: .scalar(String.self)),
          GraphQLField("originalAuthor", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(eventId: GraphQLID? = nil, commentId: String? = nil, content: String? = nil, createdAt: String? = nil, reactionType: String? = nil, lastEdited: String? = nil, reactedBy: String? = nil, originalAuthor: String? = nil) {
          self.init(snapshot: ["__typename": "Reaction", "eventId": eventId, "commentId": commentId, "content": content, "createdAt": createdAt, "reactionType": reactionType, "lastEdited": lastEdited, "reactedBy": reactedBy, "originalAuthor": originalAuthor])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The id of the comment's parent event.
        public var eventId: GraphQLID? {
          get {
            return snapshot["eventId"] as? GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "eventId")
          }
        }

        /// A unique identifier for the comment.
        public var commentId: String? {
          get {
            return snapshot["commentId"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "commentId")
          }
        }

        /// The comment's content.
        public var content: String? {
          get {
            return snapshot["content"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "content")
          }
        }

        /// The comment timestamp. This field is indexed to enable sorted pagination.
        public var createdAt: String? {
          get {
            return snapshot["createdAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var reactionType: String? {
          get {
            return snapshot["reactionType"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "reactionType")
          }
        }

        public var lastEdited: String? {
          get {
            return snapshot["lastEdited"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "lastEdited")
          }
        }

        public var reactedBy: String? {
          get {
            return snapshot["reactedBy"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "reactedBy")
          }
        }

        public var originalAuthor: String? {
          get {
            return snapshot["originalAuthor"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "originalAuthor")
          }
        }
      }
    }
  }
}

public final class DeletePostMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeletePost($input: DeleteUserInput) {\n  deletePost(input: $input) {\n    __typename\n    PrimaryKey\n    SortKey\n    MediaURL\n    Description\n    Categories\n    Likes\n    Year\n    SearchString\n    PostedBy\n    CreatedAt\n    LastEdited\n    PostType\n    comments {\n      __typename\n      eventId\n      commentId\n      content\n      createdAt\n      reactionType\n      lastEdited\n      reactedBy\n      originalAuthor\n    }\n  }\n}"

  public var input: DeleteUserInput?

  public init(input: DeleteUserInput? = nil) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deletePost", arguments: ["input": GraphQLVariable("input")], type: .object(DeletePost.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deletePost: DeletePost? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deletePost": deletePost.flatMap { $0.snapshot }])
    }

    public var deletePost: DeletePost? {
      get {
        return (snapshot["deletePost"] as? Snapshot).flatMap { DeletePost(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deletePost")
      }
    }

    public struct DeletePost: GraphQLSelectionSet {
      public static let possibleTypes = ["Post"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("PrimaryKey", type: .scalar(String.self)),
        GraphQLField("SortKey", type: .scalar(String.self)),
        GraphQLField("MediaURL", type: .scalar(String.self)),
        GraphQLField("Description", type: .scalar(String.self)),
        GraphQLField("Categories", type: .scalar(String.self)),
        GraphQLField("Likes", type: .scalar(Int.self)),
        GraphQLField("Year", type: .scalar(String.self)),
        GraphQLField("SearchString", type: .scalar(String.self)),
        GraphQLField("PostedBy", type: .scalar(String.self)),
        GraphQLField("CreatedAt", type: .scalar(String.self)),
        GraphQLField("LastEdited", type: .scalar(String.self)),
        GraphQLField("PostType", type: .scalar(String.self)),
        GraphQLField("comments", type: .object(Comment.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(primaryKey: String? = nil, sortKey: String? = nil, mediaUrl: String? = nil, description: String? = nil, categories: String? = nil, likes: Int? = nil, year: String? = nil, searchString: String? = nil, postedBy: String? = nil, createdAt: String? = nil, lastEdited: String? = nil, postType: String? = nil, comments: Comment? = nil) {
        self.init(snapshot: ["__typename": "Post", "PrimaryKey": primaryKey, "SortKey": sortKey, "MediaURL": mediaUrl, "Description": description, "Categories": categories, "Likes": likes, "Year": year, "SearchString": searchString, "PostedBy": postedBy, "CreatedAt": createdAt, "LastEdited": lastEdited, "PostType": postType, "comments": comments.flatMap { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var primaryKey: String? {
        get {
          return snapshot["PrimaryKey"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "PrimaryKey")
        }
      }

      /// #username
      public var sortKey: String? {
        get {
          return snapshot["SortKey"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "SortKey")
        }
      }

      /// #basedata
      public var mediaUrl: String? {
        get {
          return snapshot["MediaURL"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "MediaURL")
        }
      }

      public var description: String? {
        get {
          return snapshot["Description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Description")
        }
      }

      public var categories: String? {
        get {
          return snapshot["Categories"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Categories")
        }
      }

      public var likes: Int? {
        get {
          return snapshot["Likes"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "Likes")
        }
      }

      public var year: String? {
        get {
          return snapshot["Year"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Year")
        }
      }

      public var searchString: String? {
        get {
          return snapshot["SearchString"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "SearchString")
        }
      }

      public var postedBy: String? {
        get {
          return snapshot["PostedBy"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "PostedBy")
        }
      }

      public var createdAt: String? {
        get {
          return snapshot["CreatedAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "CreatedAt")
        }
      }

      public var lastEdited: String? {
        get {
          return snapshot["LastEdited"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "LastEdited")
        }
      }

      public var postType: String? {
        get {
          return snapshot["PostType"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "PostType")
        }
      }

      public var comments: Comment? {
        get {
          return (snapshot["comments"] as? Snapshot).flatMap { Comment(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "comments")
        }
      }

      public struct Comment: GraphQLSelectionSet {
        public static let possibleTypes = ["Reaction"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("eventId", type: .scalar(GraphQLID.self)),
          GraphQLField("commentId", type: .scalar(String.self)),
          GraphQLField("content", type: .scalar(String.self)),
          GraphQLField("createdAt", type: .scalar(String.self)),
          GraphQLField("reactionType", type: .scalar(String.self)),
          GraphQLField("lastEdited", type: .scalar(String.self)),
          GraphQLField("reactedBy", type: .scalar(String.self)),
          GraphQLField("originalAuthor", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(eventId: GraphQLID? = nil, commentId: String? = nil, content: String? = nil, createdAt: String? = nil, reactionType: String? = nil, lastEdited: String? = nil, reactedBy: String? = nil, originalAuthor: String? = nil) {
          self.init(snapshot: ["__typename": "Reaction", "eventId": eventId, "commentId": commentId, "content": content, "createdAt": createdAt, "reactionType": reactionType, "lastEdited": lastEdited, "reactedBy": reactedBy, "originalAuthor": originalAuthor])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The id of the comment's parent event.
        public var eventId: GraphQLID? {
          get {
            return snapshot["eventId"] as? GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "eventId")
          }
        }

        /// A unique identifier for the comment.
        public var commentId: String? {
          get {
            return snapshot["commentId"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "commentId")
          }
        }

        /// The comment's content.
        public var content: String? {
          get {
            return snapshot["content"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "content")
          }
        }

        /// The comment timestamp. This field is indexed to enable sorted pagination.
        public var createdAt: String? {
          get {
            return snapshot["createdAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var reactionType: String? {
          get {
            return snapshot["reactionType"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "reactionType")
          }
        }

        public var lastEdited: String? {
          get {
            return snapshot["lastEdited"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "lastEdited")
          }
        }

        public var reactedBy: String? {
          get {
            return snapshot["reactedBy"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "reactedBy")
          }
        }

        public var originalAuthor: String? {
          get {
            return snapshot["originalAuthor"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "originalAuthor")
          }
        }
      }
    }
  }
}

public final class UpdatePostMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdatePost($input: PostInput) {\n  updatePost(input: $input) {\n    __typename\n    PrimaryKey\n    SortKey\n    MediaURL\n    Description\n    Categories\n    Likes\n    Year\n    SearchString\n    PostedBy\n    CreatedAt\n    LastEdited\n    PostType\n    comments {\n      __typename\n      eventId\n      commentId\n      content\n      createdAt\n      reactionType\n      lastEdited\n      reactedBy\n      originalAuthor\n    }\n  }\n}"

  public var input: PostInput?

  public init(input: PostInput? = nil) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updatePost", arguments: ["input": GraphQLVariable("input")], type: .object(UpdatePost.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updatePost: UpdatePost? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updatePost": updatePost.flatMap { $0.snapshot }])
    }

    public var updatePost: UpdatePost? {
      get {
        return (snapshot["updatePost"] as? Snapshot).flatMap { UpdatePost(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updatePost")
      }
    }

    public struct UpdatePost: GraphQLSelectionSet {
      public static let possibleTypes = ["Post"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("PrimaryKey", type: .scalar(String.self)),
        GraphQLField("SortKey", type: .scalar(String.self)),
        GraphQLField("MediaURL", type: .scalar(String.self)),
        GraphQLField("Description", type: .scalar(String.self)),
        GraphQLField("Categories", type: .scalar(String.self)),
        GraphQLField("Likes", type: .scalar(Int.self)),
        GraphQLField("Year", type: .scalar(String.self)),
        GraphQLField("SearchString", type: .scalar(String.self)),
        GraphQLField("PostedBy", type: .scalar(String.self)),
        GraphQLField("CreatedAt", type: .scalar(String.self)),
        GraphQLField("LastEdited", type: .scalar(String.self)),
        GraphQLField("PostType", type: .scalar(String.self)),
        GraphQLField("comments", type: .object(Comment.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(primaryKey: String? = nil, sortKey: String? = nil, mediaUrl: String? = nil, description: String? = nil, categories: String? = nil, likes: Int? = nil, year: String? = nil, searchString: String? = nil, postedBy: String? = nil, createdAt: String? = nil, lastEdited: String? = nil, postType: String? = nil, comments: Comment? = nil) {
        self.init(snapshot: ["__typename": "Post", "PrimaryKey": primaryKey, "SortKey": sortKey, "MediaURL": mediaUrl, "Description": description, "Categories": categories, "Likes": likes, "Year": year, "SearchString": searchString, "PostedBy": postedBy, "CreatedAt": createdAt, "LastEdited": lastEdited, "PostType": postType, "comments": comments.flatMap { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var primaryKey: String? {
        get {
          return snapshot["PrimaryKey"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "PrimaryKey")
        }
      }

      /// #username
      public var sortKey: String? {
        get {
          return snapshot["SortKey"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "SortKey")
        }
      }

      /// #basedata
      public var mediaUrl: String? {
        get {
          return snapshot["MediaURL"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "MediaURL")
        }
      }

      public var description: String? {
        get {
          return snapshot["Description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Description")
        }
      }

      public var categories: String? {
        get {
          return snapshot["Categories"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Categories")
        }
      }

      public var likes: Int? {
        get {
          return snapshot["Likes"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "Likes")
        }
      }

      public var year: String? {
        get {
          return snapshot["Year"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Year")
        }
      }

      public var searchString: String? {
        get {
          return snapshot["SearchString"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "SearchString")
        }
      }

      public var postedBy: String? {
        get {
          return snapshot["PostedBy"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "PostedBy")
        }
      }

      public var createdAt: String? {
        get {
          return snapshot["CreatedAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "CreatedAt")
        }
      }

      public var lastEdited: String? {
        get {
          return snapshot["LastEdited"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "LastEdited")
        }
      }

      public var postType: String? {
        get {
          return snapshot["PostType"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "PostType")
        }
      }

      public var comments: Comment? {
        get {
          return (snapshot["comments"] as? Snapshot).flatMap { Comment(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "comments")
        }
      }

      public struct Comment: GraphQLSelectionSet {
        public static let possibleTypes = ["Reaction"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("eventId", type: .scalar(GraphQLID.self)),
          GraphQLField("commentId", type: .scalar(String.self)),
          GraphQLField("content", type: .scalar(String.self)),
          GraphQLField("createdAt", type: .scalar(String.self)),
          GraphQLField("reactionType", type: .scalar(String.self)),
          GraphQLField("lastEdited", type: .scalar(String.self)),
          GraphQLField("reactedBy", type: .scalar(String.self)),
          GraphQLField("originalAuthor", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(eventId: GraphQLID? = nil, commentId: String? = nil, content: String? = nil, createdAt: String? = nil, reactionType: String? = nil, lastEdited: String? = nil, reactedBy: String? = nil, originalAuthor: String? = nil) {
          self.init(snapshot: ["__typename": "Reaction", "eventId": eventId, "commentId": commentId, "content": content, "createdAt": createdAt, "reactionType": reactionType, "lastEdited": lastEdited, "reactedBy": reactedBy, "originalAuthor": originalAuthor])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The id of the comment's parent event.
        public var eventId: GraphQLID? {
          get {
            return snapshot["eventId"] as? GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "eventId")
          }
        }

        /// A unique identifier for the comment.
        public var commentId: String? {
          get {
            return snapshot["commentId"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "commentId")
          }
        }

        /// The comment's content.
        public var content: String? {
          get {
            return snapshot["content"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "content")
          }
        }

        /// The comment timestamp. This field is indexed to enable sorted pagination.
        public var createdAt: String? {
          get {
            return snapshot["createdAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var reactionType: String? {
          get {
            return snapshot["reactionType"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "reactionType")
          }
        }

        public var lastEdited: String? {
          get {
            return snapshot["lastEdited"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "lastEdited")
          }
        }

        public var reactedBy: String? {
          get {
            return snapshot["reactedBy"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "reactedBy")
          }
        }

        public var originalAuthor: String? {
          get {
            return snapshot["originalAuthor"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "originalAuthor")
          }
        }
      }
    }
  }
}

public final class CreateMessageVaultMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateMessageVault($input: MessageVaultInput) {\n  createMessageVault(input: $input) {\n    __typename\n    PrimaryKey\n    SortKey\n    MediaURL\n    CanBeOpenedOn\n    IsLocked\n    SearchString\n    PostedBy\n    ReceivedBy\n    CreatedAt\n    LastEdited\n    PostType\n    Description\n    Sendername\n    Receivername\n  }\n}"

  public var input: MessageVaultInput?

  public init(input: MessageVaultInput? = nil) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createMessageVault", arguments: ["input": GraphQLVariable("input")], type: .object(CreateMessageVault.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createMessageVault: CreateMessageVault? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createMessageVault": createMessageVault.flatMap { $0.snapshot }])
    }

    public var createMessageVault: CreateMessageVault? {
      get {
        return (snapshot["createMessageVault"] as? Snapshot).flatMap { CreateMessageVault(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createMessageVault")
      }
    }

    public struct CreateMessageVault: GraphQLSelectionSet {
      public static let possibleTypes = ["MessageVault"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("PrimaryKey", type: .scalar(String.self)),
        GraphQLField("SortKey", type: .scalar(String.self)),
        GraphQLField("MediaURL", type: .scalar(String.self)),
        GraphQLField("CanBeOpenedOn", type: .scalar(String.self)),
        GraphQLField("IsLocked", type: .scalar(Bool.self)),
        GraphQLField("SearchString", type: .scalar(String.self)),
        GraphQLField("PostedBy", type: .scalar(String.self)),
        GraphQLField("ReceivedBy", type: .scalar(String.self)),
        GraphQLField("CreatedAt", type: .scalar(String.self)),
        GraphQLField("LastEdited", type: .scalar(String.self)),
        GraphQLField("PostType", type: .scalar(String.self)),
        GraphQLField("Description", type: .scalar(String.self)),
        GraphQLField("Sendername", type: .scalar(String.self)),
        GraphQLField("Receivername", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(primaryKey: String? = nil, sortKey: String? = nil, mediaUrl: String? = nil, canBeOpenedOn: String? = nil, isLocked: Bool? = nil, searchString: String? = nil, postedBy: String? = nil, receivedBy: String? = nil, createdAt: String? = nil, lastEdited: String? = nil, postType: String? = nil, description: String? = nil, sendername: String? = nil, receivername: String? = nil) {
        self.init(snapshot: ["__typename": "MessageVault", "PrimaryKey": primaryKey, "SortKey": sortKey, "MediaURL": mediaUrl, "CanBeOpenedOn": canBeOpenedOn, "IsLocked": isLocked, "SearchString": searchString, "PostedBy": postedBy, "ReceivedBy": receivedBy, "CreatedAt": createdAt, "LastEdited": lastEdited, "PostType": postType, "Description": description, "Sendername": sendername, "Receivername": receivername])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var primaryKey: String? {
        get {
          return snapshot["PrimaryKey"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "PrimaryKey")
        }
      }

      /// #username
      public var sortKey: String? {
        get {
          return snapshot["SortKey"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "SortKey")
        }
      }

      /// #basedata
      public var mediaUrl: String? {
        get {
          return snapshot["MediaURL"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "MediaURL")
        }
      }

      public var canBeOpenedOn: String? {
        get {
          return snapshot["CanBeOpenedOn"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "CanBeOpenedOn")
        }
      }

      public var isLocked: Bool? {
        get {
          return snapshot["IsLocked"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "IsLocked")
        }
      }

      public var searchString: String? {
        get {
          return snapshot["SearchString"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "SearchString")
        }
      }

      public var postedBy: String? {
        get {
          return snapshot["PostedBy"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "PostedBy")
        }
      }

      public var receivedBy: String? {
        get {
          return snapshot["ReceivedBy"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "ReceivedBy")
        }
      }

      public var createdAt: String? {
        get {
          return snapshot["CreatedAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "CreatedAt")
        }
      }

      public var lastEdited: String? {
        get {
          return snapshot["LastEdited"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "LastEdited")
        }
      }

      public var postType: String? {
        get {
          return snapshot["PostType"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "PostType")
        }
      }

      public var description: String? {
        get {
          return snapshot["Description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Description")
        }
      }

      public var sendername: String? {
        get {
          return snapshot["Sendername"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Sendername")
        }
      }

      public var receivername: String? {
        get {
          return snapshot["Receivername"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Receivername")
        }
      }
    }
  }
}

public final class DeleteMessageVaultMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteMessageVault($input: DeleteUserInput) {\n  deleteMessageVault(input: $input) {\n    __typename\n    PrimaryKey\n    SortKey\n    MediaURL\n    CanBeOpenedOn\n    IsLocked\n    SearchString\n    PostedBy\n    ReceivedBy\n    CreatedAt\n    LastEdited\n    PostType\n    Description\n    Sendername\n    Receivername\n  }\n}"

  public var input: DeleteUserInput?

  public init(input: DeleteUserInput? = nil) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteMessageVault", arguments: ["input": GraphQLVariable("input")], type: .object(DeleteMessageVault.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteMessageVault: DeleteMessageVault? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteMessageVault": deleteMessageVault.flatMap { $0.snapshot }])
    }

    public var deleteMessageVault: DeleteMessageVault? {
      get {
        return (snapshot["deleteMessageVault"] as? Snapshot).flatMap { DeleteMessageVault(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteMessageVault")
      }
    }

    public struct DeleteMessageVault: GraphQLSelectionSet {
      public static let possibleTypes = ["MessageVault"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("PrimaryKey", type: .scalar(String.self)),
        GraphQLField("SortKey", type: .scalar(String.self)),
        GraphQLField("MediaURL", type: .scalar(String.self)),
        GraphQLField("CanBeOpenedOn", type: .scalar(String.self)),
        GraphQLField("IsLocked", type: .scalar(Bool.self)),
        GraphQLField("SearchString", type: .scalar(String.self)),
        GraphQLField("PostedBy", type: .scalar(String.self)),
        GraphQLField("ReceivedBy", type: .scalar(String.self)),
        GraphQLField("CreatedAt", type: .scalar(String.self)),
        GraphQLField("LastEdited", type: .scalar(String.self)),
        GraphQLField("PostType", type: .scalar(String.self)),
        GraphQLField("Description", type: .scalar(String.self)),
        GraphQLField("Sendername", type: .scalar(String.self)),
        GraphQLField("Receivername", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(primaryKey: String? = nil, sortKey: String? = nil, mediaUrl: String? = nil, canBeOpenedOn: String? = nil, isLocked: Bool? = nil, searchString: String? = nil, postedBy: String? = nil, receivedBy: String? = nil, createdAt: String? = nil, lastEdited: String? = nil, postType: String? = nil, description: String? = nil, sendername: String? = nil, receivername: String? = nil) {
        self.init(snapshot: ["__typename": "MessageVault", "PrimaryKey": primaryKey, "SortKey": sortKey, "MediaURL": mediaUrl, "CanBeOpenedOn": canBeOpenedOn, "IsLocked": isLocked, "SearchString": searchString, "PostedBy": postedBy, "ReceivedBy": receivedBy, "CreatedAt": createdAt, "LastEdited": lastEdited, "PostType": postType, "Description": description, "Sendername": sendername, "Receivername": receivername])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var primaryKey: String? {
        get {
          return snapshot["PrimaryKey"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "PrimaryKey")
        }
      }

      /// #username
      public var sortKey: String? {
        get {
          return snapshot["SortKey"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "SortKey")
        }
      }

      /// #basedata
      public var mediaUrl: String? {
        get {
          return snapshot["MediaURL"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "MediaURL")
        }
      }

      public var canBeOpenedOn: String? {
        get {
          return snapshot["CanBeOpenedOn"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "CanBeOpenedOn")
        }
      }

      public var isLocked: Bool? {
        get {
          return snapshot["IsLocked"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "IsLocked")
        }
      }

      public var searchString: String? {
        get {
          return snapshot["SearchString"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "SearchString")
        }
      }

      public var postedBy: String? {
        get {
          return snapshot["PostedBy"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "PostedBy")
        }
      }

      public var receivedBy: String? {
        get {
          return snapshot["ReceivedBy"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "ReceivedBy")
        }
      }

      public var createdAt: String? {
        get {
          return snapshot["CreatedAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "CreatedAt")
        }
      }

      public var lastEdited: String? {
        get {
          return snapshot["LastEdited"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "LastEdited")
        }
      }

      public var postType: String? {
        get {
          return snapshot["PostType"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "PostType")
        }
      }

      public var description: String? {
        get {
          return snapshot["Description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Description")
        }
      }

      public var sendername: String? {
        get {
          return snapshot["Sendername"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Sendername")
        }
      }

      public var receivername: String? {
        get {
          return snapshot["Receivername"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Receivername")
        }
      }
    }
  }
}

public final class UpdateMessageVaultMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateMessageVault($input: MessageVaultInput) {\n  updateMessageVault(input: $input) {\n    __typename\n    PrimaryKey\n    SortKey\n    MediaURL\n    CanBeOpenedOn\n    IsLocked\n    SearchString\n    PostedBy\n    ReceivedBy\n    CreatedAt\n    LastEdited\n    PostType\n    Description\n    Sendername\n    Receivername\n  }\n}"

  public var input: MessageVaultInput?

  public init(input: MessageVaultInput? = nil) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateMessageVault", arguments: ["input": GraphQLVariable("input")], type: .object(UpdateMessageVault.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateMessageVault: UpdateMessageVault? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateMessageVault": updateMessageVault.flatMap { $0.snapshot }])
    }

    public var updateMessageVault: UpdateMessageVault? {
      get {
        return (snapshot["updateMessageVault"] as? Snapshot).flatMap { UpdateMessageVault(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateMessageVault")
      }
    }

    public struct UpdateMessageVault: GraphQLSelectionSet {
      public static let possibleTypes = ["MessageVault"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("PrimaryKey", type: .scalar(String.self)),
        GraphQLField("SortKey", type: .scalar(String.self)),
        GraphQLField("MediaURL", type: .scalar(String.self)),
        GraphQLField("CanBeOpenedOn", type: .scalar(String.self)),
        GraphQLField("IsLocked", type: .scalar(Bool.self)),
        GraphQLField("SearchString", type: .scalar(String.self)),
        GraphQLField("PostedBy", type: .scalar(String.self)),
        GraphQLField("ReceivedBy", type: .scalar(String.self)),
        GraphQLField("CreatedAt", type: .scalar(String.self)),
        GraphQLField("LastEdited", type: .scalar(String.self)),
        GraphQLField("PostType", type: .scalar(String.self)),
        GraphQLField("Description", type: .scalar(String.self)),
        GraphQLField("Sendername", type: .scalar(String.self)),
        GraphQLField("Receivername", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(primaryKey: String? = nil, sortKey: String? = nil, mediaUrl: String? = nil, canBeOpenedOn: String? = nil, isLocked: Bool? = nil, searchString: String? = nil, postedBy: String? = nil, receivedBy: String? = nil, createdAt: String? = nil, lastEdited: String? = nil, postType: String? = nil, description: String? = nil, sendername: String? = nil, receivername: String? = nil) {
        self.init(snapshot: ["__typename": "MessageVault", "PrimaryKey": primaryKey, "SortKey": sortKey, "MediaURL": mediaUrl, "CanBeOpenedOn": canBeOpenedOn, "IsLocked": isLocked, "SearchString": searchString, "PostedBy": postedBy, "ReceivedBy": receivedBy, "CreatedAt": createdAt, "LastEdited": lastEdited, "PostType": postType, "Description": description, "Sendername": sendername, "Receivername": receivername])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var primaryKey: String? {
        get {
          return snapshot["PrimaryKey"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "PrimaryKey")
        }
      }

      /// #username
      public var sortKey: String? {
        get {
          return snapshot["SortKey"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "SortKey")
        }
      }

      /// #basedata
      public var mediaUrl: String? {
        get {
          return snapshot["MediaURL"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "MediaURL")
        }
      }

      public var canBeOpenedOn: String? {
        get {
          return snapshot["CanBeOpenedOn"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "CanBeOpenedOn")
        }
      }

      public var isLocked: Bool? {
        get {
          return snapshot["IsLocked"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "IsLocked")
        }
      }

      public var searchString: String? {
        get {
          return snapshot["SearchString"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "SearchString")
        }
      }

      public var postedBy: String? {
        get {
          return snapshot["PostedBy"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "PostedBy")
        }
      }

      public var receivedBy: String? {
        get {
          return snapshot["ReceivedBy"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "ReceivedBy")
        }
      }

      public var createdAt: String? {
        get {
          return snapshot["CreatedAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "CreatedAt")
        }
      }

      public var lastEdited: String? {
        get {
          return snapshot["LastEdited"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "LastEdited")
        }
      }

      public var postType: String? {
        get {
          return snapshot["PostType"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "PostType")
        }
      }

      public var description: String? {
        get {
          return snapshot["Description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Description")
        }
      }

      public var sendername: String? {
        get {
          return snapshot["Sendername"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Sendername")
        }
      }

      public var receivername: String? {
        get {
          return snapshot["Receivername"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Receivername")
        }
      }
    }
  }
}

public final class GetReactionQuery: GraphQLQuery {
  public static let operationString =
    "query GetReaction($PrimaryKey: String, $SortKey: String) {\n  getReaction(PrimaryKey: $PrimaryKey, SortKey: $SortKey) {\n    __typename\n    eventId\n    commentId\n    content\n    createdAt\n    reactionType\n    lastEdited\n    reactedBy\n    originalAuthor\n  }\n}"

  public var PrimaryKey: String?
  public var SortKey: String?

  public init(PrimaryKey: String? = nil, SortKey: String? = nil) {
    self.PrimaryKey = PrimaryKey
    self.SortKey = SortKey
  }

  public var variables: GraphQLMap? {
    return ["PrimaryKey": PrimaryKey, "SortKey": SortKey]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getReaction", arguments: ["PrimaryKey": GraphQLVariable("PrimaryKey"), "SortKey": GraphQLVariable("SortKey")], type: .object(GetReaction.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getReaction: GetReaction? = nil) {
      self.init(snapshot: ["__typename": "Query", "getReaction": getReaction.flatMap { $0.snapshot }])
    }

    public var getReaction: GetReaction? {
      get {
        return (snapshot["getReaction"] as? Snapshot).flatMap { GetReaction(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getReaction")
      }
    }

    public struct GetReaction: GraphQLSelectionSet {
      public static let possibleTypes = ["Reaction"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("eventId", type: .scalar(GraphQLID.self)),
        GraphQLField("commentId", type: .scalar(String.self)),
        GraphQLField("content", type: .scalar(String.self)),
        GraphQLField("createdAt", type: .scalar(String.self)),
        GraphQLField("reactionType", type: .scalar(String.self)),
        GraphQLField("lastEdited", type: .scalar(String.self)),
        GraphQLField("reactedBy", type: .scalar(String.self)),
        GraphQLField("originalAuthor", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(eventId: GraphQLID? = nil, commentId: String? = nil, content: String? = nil, createdAt: String? = nil, reactionType: String? = nil, lastEdited: String? = nil, reactedBy: String? = nil, originalAuthor: String? = nil) {
        self.init(snapshot: ["__typename": "Reaction", "eventId": eventId, "commentId": commentId, "content": content, "createdAt": createdAt, "reactionType": reactionType, "lastEdited": lastEdited, "reactedBy": reactedBy, "originalAuthor": originalAuthor])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      /// The id of the comment's parent event.
      public var eventId: GraphQLID? {
        get {
          return snapshot["eventId"] as? GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "eventId")
        }
      }

      /// A unique identifier for the comment.
      public var commentId: String? {
        get {
          return snapshot["commentId"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "commentId")
        }
      }

      /// The comment's content.
      public var content: String? {
        get {
          return snapshot["content"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "content")
        }
      }

      /// The comment timestamp. This field is indexed to enable sorted pagination.
      public var createdAt: String? {
        get {
          return snapshot["createdAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var reactionType: String? {
        get {
          return snapshot["reactionType"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "reactionType")
        }
      }

      public var lastEdited: String? {
        get {
          return snapshot["lastEdited"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "lastEdited")
        }
      }

      public var reactedBy: String? {
        get {
          return snapshot["reactedBy"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "reactedBy")
        }
      }

      public var originalAuthor: String? {
        get {
          return snapshot["originalAuthor"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "originalAuthor")
        }
      }
    }
  }
}

public final class FetchReactionsQuery: GraphQLQuery {
  public static let operationString =
    "query FetchReactions($PrimaryKey: String, $limit: Int, $nextToken: String) {\n  fetchReactions(PrimaryKey: $PrimaryKey, limit: $limit, nextToken: $nextToken) {\n    __typename\n    nextToken\n    items {\n      __typename\n      PrimaryKey\n      SortKey\n      Location\n      FirstName\n      LastName\n      LastAccessed\n      IP\n      Online\n      UILanguage\n      SearchString\n      MemberAccess\n      Email\n      Gender\n      BirthDay\n      Phone\n      IsPublic\n      Groups\n    }\n  }\n}"

  public var PrimaryKey: String?
  public var limit: Int?
  public var nextToken: String?

  public init(PrimaryKey: String? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.PrimaryKey = PrimaryKey
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["PrimaryKey": PrimaryKey, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("fetchReactions", arguments: ["PrimaryKey": GraphQLVariable("PrimaryKey"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(FetchReaction.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(fetchReactions: FetchReaction? = nil) {
      self.init(snapshot: ["__typename": "Query", "fetchReactions": fetchReactions.flatMap { $0.snapshot }])
    }

    public var fetchReactions: FetchReaction? {
      get {
        return (snapshot["fetchReactions"] as? Snapshot).flatMap { FetchReaction(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "fetchReactions")
      }
    }

    public struct FetchReaction: GraphQLSelectionSet {
      public static let possibleTypes = ["PaginatedUsers"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("nextToken", type: .scalar(String.self)),
        GraphQLField("items", type: .list(.object(Item.selections))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(nextToken: String? = nil, items: [Item?]? = nil) {
        self.init(snapshot: ["__typename": "PaginatedUsers", "nextToken": nextToken, "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("PrimaryKey", type: .scalar(String.self)),
          GraphQLField("SortKey", type: .scalar(String.self)),
          GraphQLField("Location", type: .scalar(String.self)),
          GraphQLField("FirstName", type: .scalar(String.self)),
          GraphQLField("LastName", type: .scalar(String.self)),
          GraphQLField("LastAccessed", type: .scalar(String.self)),
          GraphQLField("IP", type: .scalar(String.self)),
          GraphQLField("Online", type: .scalar(Int.self)),
          GraphQLField("UILanguage", type: .scalar(String.self)),
          GraphQLField("SearchString", type: .scalar(String.self)),
          GraphQLField("MemberAccess", type: .scalar(String.self)),
          GraphQLField("Email", type: .scalar(String.self)),
          GraphQLField("Gender", type: .scalar(String.self)),
          GraphQLField("BirthDay", type: .scalar(String.self)),
          GraphQLField("Phone", type: .scalar(String.self)),
          GraphQLField("IsPublic", type: .scalar(Bool.self)),
          GraphQLField("Groups", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(primaryKey: String? = nil, sortKey: String? = nil, location: String? = nil, firstName: String? = nil, lastName: String? = nil, lastAccessed: String? = nil, ip: String? = nil, online: Int? = nil, uiLanguage: String? = nil, searchString: String? = nil, memberAccess: String? = nil, email: String? = nil, gender: String? = nil, birthDay: String? = nil, phone: String? = nil, isPublic: Bool? = nil, groups: String? = nil) {
          self.init(snapshot: ["__typename": "User", "PrimaryKey": primaryKey, "SortKey": sortKey, "Location": location, "FirstName": firstName, "LastName": lastName, "LastAccessed": lastAccessed, "IP": ip, "Online": online, "UILanguage": uiLanguage, "SearchString": searchString, "MemberAccess": memberAccess, "Email": email, "Gender": gender, "BirthDay": birthDay, "Phone": phone, "IsPublic": isPublic, "Groups": groups])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var primaryKey: String? {
          get {
            return snapshot["PrimaryKey"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "PrimaryKey")
          }
        }

        /// #username
        public var sortKey: String? {
          get {
            return snapshot["SortKey"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "SortKey")
          }
        }

        /// #basedata
        public var location: String? {
          get {
            return snapshot["Location"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "Location")
          }
        }

        public var firstName: String? {
          get {
            return snapshot["FirstName"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "FirstName")
          }
        }

        public var lastName: String? {
          get {
            return snapshot["LastName"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "LastName")
          }
        }

        public var lastAccessed: String? {
          get {
            return snapshot["LastAccessed"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "LastAccessed")
          }
        }

        public var ip: String? {
          get {
            return snapshot["IP"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "IP")
          }
        }

        public var online: Int? {
          get {
            return snapshot["Online"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "Online")
          }
        }

        public var uiLanguage: String? {
          get {
            return snapshot["UILanguage"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "UILanguage")
          }
        }

        public var searchString: String? {
          get {
            return snapshot["SearchString"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "SearchString")
          }
        }

        public var memberAccess: String? {
          get {
            return snapshot["MemberAccess"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "MemberAccess")
          }
        }

        public var email: String? {
          get {
            return snapshot["Email"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "Email")
          }
        }

        public var gender: String? {
          get {
            return snapshot["Gender"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "Gender")
          }
        }

        public var birthDay: String? {
          get {
            return snapshot["BirthDay"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "BirthDay")
          }
        }

        public var phone: String? {
          get {
            return snapshot["Phone"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "Phone")
          }
        }

        public var isPublic: Bool? {
          get {
            return snapshot["IsPublic"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "IsPublic")
          }
        }

        public var groups: String? {
          get {
            return snapshot["Groups"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "Groups")
          }
        }
      }
    }
  }
}

public final class GetUserQuery: GraphQLQuery {
  public static let operationString =
    "query GetUser($PrimaryKey: String, $SortKey: String) {\n  getUser(PrimaryKey: $PrimaryKey, SortKey: $SortKey) {\n    __typename\n    PrimaryKey\n    SortKey\n    Location\n    FirstName\n    LastName\n    LastAccessed\n    IP\n    Online\n    UILanguage\n    SearchString\n    MemberAccess\n    Email\n    Gender\n    BirthDay\n    Phone\n    IsPublic\n    Groups\n  }\n}"

  public var PrimaryKey: String?
  public var SortKey: String?

  public init(PrimaryKey: String? = nil, SortKey: String? = nil) {
    self.PrimaryKey = PrimaryKey
    self.SortKey = SortKey
  }

  public var variables: GraphQLMap? {
    return ["PrimaryKey": PrimaryKey, "SortKey": SortKey]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getUser", arguments: ["PrimaryKey": GraphQLVariable("PrimaryKey"), "SortKey": GraphQLVariable("SortKey")], type: .object(GetUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getUser: GetUser? = nil) {
      self.init(snapshot: ["__typename": "Query", "getUser": getUser.flatMap { $0.snapshot }])
    }

    public var getUser: GetUser? {
      get {
        return (snapshot["getUser"] as? Snapshot).flatMap { GetUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getUser")
      }
    }

    public struct GetUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("PrimaryKey", type: .scalar(String.self)),
        GraphQLField("SortKey", type: .scalar(String.self)),
        GraphQLField("Location", type: .scalar(String.self)),
        GraphQLField("FirstName", type: .scalar(String.self)),
        GraphQLField("LastName", type: .scalar(String.self)),
        GraphQLField("LastAccessed", type: .scalar(String.self)),
        GraphQLField("IP", type: .scalar(String.self)),
        GraphQLField("Online", type: .scalar(Int.self)),
        GraphQLField("UILanguage", type: .scalar(String.self)),
        GraphQLField("SearchString", type: .scalar(String.self)),
        GraphQLField("MemberAccess", type: .scalar(String.self)),
        GraphQLField("Email", type: .scalar(String.self)),
        GraphQLField("Gender", type: .scalar(String.self)),
        GraphQLField("BirthDay", type: .scalar(String.self)),
        GraphQLField("Phone", type: .scalar(String.self)),
        GraphQLField("IsPublic", type: .scalar(Bool.self)),
        GraphQLField("Groups", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(primaryKey: String? = nil, sortKey: String? = nil, location: String? = nil, firstName: String? = nil, lastName: String? = nil, lastAccessed: String? = nil, ip: String? = nil, online: Int? = nil, uiLanguage: String? = nil, searchString: String? = nil, memberAccess: String? = nil, email: String? = nil, gender: String? = nil, birthDay: String? = nil, phone: String? = nil, isPublic: Bool? = nil, groups: String? = nil) {
        self.init(snapshot: ["__typename": "User", "PrimaryKey": primaryKey, "SortKey": sortKey, "Location": location, "FirstName": firstName, "LastName": lastName, "LastAccessed": lastAccessed, "IP": ip, "Online": online, "UILanguage": uiLanguage, "SearchString": searchString, "MemberAccess": memberAccess, "Email": email, "Gender": gender, "BirthDay": birthDay, "Phone": phone, "IsPublic": isPublic, "Groups": groups])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var primaryKey: String? {
        get {
          return snapshot["PrimaryKey"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "PrimaryKey")
        }
      }

      /// #username
      public var sortKey: String? {
        get {
          return snapshot["SortKey"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "SortKey")
        }
      }

      /// #basedata
      public var location: String? {
        get {
          return snapshot["Location"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Location")
        }
      }

      public var firstName: String? {
        get {
          return snapshot["FirstName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "FirstName")
        }
      }

      public var lastName: String? {
        get {
          return snapshot["LastName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "LastName")
        }
      }

      public var lastAccessed: String? {
        get {
          return snapshot["LastAccessed"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "LastAccessed")
        }
      }

      public var ip: String? {
        get {
          return snapshot["IP"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "IP")
        }
      }

      public var online: Int? {
        get {
          return snapshot["Online"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "Online")
        }
      }

      public var uiLanguage: String? {
        get {
          return snapshot["UILanguage"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "UILanguage")
        }
      }

      public var searchString: String? {
        get {
          return snapshot["SearchString"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "SearchString")
        }
      }

      public var memberAccess: String? {
        get {
          return snapshot["MemberAccess"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "MemberAccess")
        }
      }

      public var email: String? {
        get {
          return snapshot["Email"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Email")
        }
      }

      public var gender: String? {
        get {
          return snapshot["Gender"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Gender")
        }
      }

      public var birthDay: String? {
        get {
          return snapshot["BirthDay"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "BirthDay")
        }
      }

      public var phone: String? {
        get {
          return snapshot["Phone"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Phone")
        }
      }

      public var isPublic: Bool? {
        get {
          return snapshot["IsPublic"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "IsPublic")
        }
      }

      public var groups: String? {
        get {
          return snapshot["Groups"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Groups")
        }
      }
    }
  }
}

public final class FetchUsersQuery: GraphQLQuery {
  public static let operationString =
    "query FetchUsers($PrimaryKey: String, $limit: Int, $nextToken: String) {\n  fetchUsers(PrimaryKey: $PrimaryKey, limit: $limit, nextToken: $nextToken) {\n    __typename\n    nextToken\n    items {\n      __typename\n      PrimaryKey\n      SortKey\n      Location\n      FirstName\n      LastName\n      LastAccessed\n      IP\n      Online\n      UILanguage\n      SearchString\n      MemberAccess\n      Email\n      Gender\n      BirthDay\n      Phone\n      IsPublic\n      Groups\n    }\n  }\n}"

  public var PrimaryKey: String?
  public var limit: Int?
  public var nextToken: String?

  public init(PrimaryKey: String? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.PrimaryKey = PrimaryKey
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["PrimaryKey": PrimaryKey, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("fetchUsers", arguments: ["PrimaryKey": GraphQLVariable("PrimaryKey"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(FetchUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(fetchUsers: FetchUser? = nil) {
      self.init(snapshot: ["__typename": "Query", "fetchUsers": fetchUsers.flatMap { $0.snapshot }])
    }

    public var fetchUsers: FetchUser? {
      get {
        return (snapshot["fetchUsers"] as? Snapshot).flatMap { FetchUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "fetchUsers")
      }
    }

    public struct FetchUser: GraphQLSelectionSet {
      public static let possibleTypes = ["PaginatedUsers"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("nextToken", type: .scalar(String.self)),
        GraphQLField("items", type: .list(.object(Item.selections))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(nextToken: String? = nil, items: [Item?]? = nil) {
        self.init(snapshot: ["__typename": "PaginatedUsers", "nextToken": nextToken, "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("PrimaryKey", type: .scalar(String.self)),
          GraphQLField("SortKey", type: .scalar(String.self)),
          GraphQLField("Location", type: .scalar(String.self)),
          GraphQLField("FirstName", type: .scalar(String.self)),
          GraphQLField("LastName", type: .scalar(String.self)),
          GraphQLField("LastAccessed", type: .scalar(String.self)),
          GraphQLField("IP", type: .scalar(String.self)),
          GraphQLField("Online", type: .scalar(Int.self)),
          GraphQLField("UILanguage", type: .scalar(String.self)),
          GraphQLField("SearchString", type: .scalar(String.self)),
          GraphQLField("MemberAccess", type: .scalar(String.self)),
          GraphQLField("Email", type: .scalar(String.self)),
          GraphQLField("Gender", type: .scalar(String.self)),
          GraphQLField("BirthDay", type: .scalar(String.self)),
          GraphQLField("Phone", type: .scalar(String.self)),
          GraphQLField("IsPublic", type: .scalar(Bool.self)),
          GraphQLField("Groups", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(primaryKey: String? = nil, sortKey: String? = nil, location: String? = nil, firstName: String? = nil, lastName: String? = nil, lastAccessed: String? = nil, ip: String? = nil, online: Int? = nil, uiLanguage: String? = nil, searchString: String? = nil, memberAccess: String? = nil, email: String? = nil, gender: String? = nil, birthDay: String? = nil, phone: String? = nil, isPublic: Bool? = nil, groups: String? = nil) {
          self.init(snapshot: ["__typename": "User", "PrimaryKey": primaryKey, "SortKey": sortKey, "Location": location, "FirstName": firstName, "LastName": lastName, "LastAccessed": lastAccessed, "IP": ip, "Online": online, "UILanguage": uiLanguage, "SearchString": searchString, "MemberAccess": memberAccess, "Email": email, "Gender": gender, "BirthDay": birthDay, "Phone": phone, "IsPublic": isPublic, "Groups": groups])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var primaryKey: String? {
          get {
            return snapshot["PrimaryKey"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "PrimaryKey")
          }
        }

        /// #username
        public var sortKey: String? {
          get {
            return snapshot["SortKey"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "SortKey")
          }
        }

        /// #basedata
        public var location: String? {
          get {
            return snapshot["Location"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "Location")
          }
        }

        public var firstName: String? {
          get {
            return snapshot["FirstName"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "FirstName")
          }
        }

        public var lastName: String? {
          get {
            return snapshot["LastName"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "LastName")
          }
        }

        public var lastAccessed: String? {
          get {
            return snapshot["LastAccessed"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "LastAccessed")
          }
        }

        public var ip: String? {
          get {
            return snapshot["IP"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "IP")
          }
        }

        public var online: Int? {
          get {
            return snapshot["Online"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "Online")
          }
        }

        public var uiLanguage: String? {
          get {
            return snapshot["UILanguage"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "UILanguage")
          }
        }

        public var searchString: String? {
          get {
            return snapshot["SearchString"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "SearchString")
          }
        }

        public var memberAccess: String? {
          get {
            return snapshot["MemberAccess"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "MemberAccess")
          }
        }

        public var email: String? {
          get {
            return snapshot["Email"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "Email")
          }
        }

        public var gender: String? {
          get {
            return snapshot["Gender"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "Gender")
          }
        }

        public var birthDay: String? {
          get {
            return snapshot["BirthDay"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "BirthDay")
          }
        }

        public var phone: String? {
          get {
            return snapshot["Phone"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "Phone")
          }
        }

        public var isPublic: Bool? {
          get {
            return snapshot["IsPublic"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "IsPublic")
          }
        }

        public var groups: String? {
          get {
            return snapshot["Groups"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "Groups")
          }
        }
      }
    }
  }
}

public final class SearchUsersQuery: GraphQLQuery {
  public static let operationString =
    "query SearchUsers($SortKey: String, $SearchString: String, $limit: Int, $nextToken: String) {\n  searchUsers(SortKey: $SortKey, SearchString: $SearchString, limit: $limit, nextToken: $nextToken) {\n    __typename\n    nextToken\n    items {\n      __typename\n      PrimaryKey\n      SortKey\n      Location\n      FirstName\n      LastName\n      LastAccessed\n      IP\n      Online\n      UILanguage\n      SearchString\n      MemberAccess\n      Email\n      Gender\n      BirthDay\n      Phone\n      IsPublic\n      Groups\n    }\n  }\n}"

  public var SortKey: String?
  public var SearchString: String?
  public var limit: Int?
  public var nextToken: String?

  public init(SortKey: String? = nil, SearchString: String? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.SortKey = SortKey
    self.SearchString = SearchString
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["SortKey": SortKey, "SearchString": SearchString, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("searchUsers", arguments: ["SortKey": GraphQLVariable("SortKey"), "SearchString": GraphQLVariable("SearchString"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(SearchUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(searchUsers: SearchUser? = nil) {
      self.init(snapshot: ["__typename": "Query", "searchUsers": searchUsers.flatMap { $0.snapshot }])
    }

    public var searchUsers: SearchUser? {
      get {
        return (snapshot["searchUsers"] as? Snapshot).flatMap { SearchUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "searchUsers")
      }
    }

    public struct SearchUser: GraphQLSelectionSet {
      public static let possibleTypes = ["PaginatedUsers"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("nextToken", type: .scalar(String.self)),
        GraphQLField("items", type: .list(.object(Item.selections))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(nextToken: String? = nil, items: [Item?]? = nil) {
        self.init(snapshot: ["__typename": "PaginatedUsers", "nextToken": nextToken, "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("PrimaryKey", type: .scalar(String.self)),
          GraphQLField("SortKey", type: .scalar(String.self)),
          GraphQLField("Location", type: .scalar(String.self)),
          GraphQLField("FirstName", type: .scalar(String.self)),
          GraphQLField("LastName", type: .scalar(String.self)),
          GraphQLField("LastAccessed", type: .scalar(String.self)),
          GraphQLField("IP", type: .scalar(String.self)),
          GraphQLField("Online", type: .scalar(Int.self)),
          GraphQLField("UILanguage", type: .scalar(String.self)),
          GraphQLField("SearchString", type: .scalar(String.self)),
          GraphQLField("MemberAccess", type: .scalar(String.self)),
          GraphQLField("Email", type: .scalar(String.self)),
          GraphQLField("Gender", type: .scalar(String.self)),
          GraphQLField("BirthDay", type: .scalar(String.self)),
          GraphQLField("Phone", type: .scalar(String.self)),
          GraphQLField("IsPublic", type: .scalar(Bool.self)),
          GraphQLField("Groups", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(primaryKey: String? = nil, sortKey: String? = nil, location: String? = nil, firstName: String? = nil, lastName: String? = nil, lastAccessed: String? = nil, ip: String? = nil, online: Int? = nil, uiLanguage: String? = nil, searchString: String? = nil, memberAccess: String? = nil, email: String? = nil, gender: String? = nil, birthDay: String? = nil, phone: String? = nil, isPublic: Bool? = nil, groups: String? = nil) {
          self.init(snapshot: ["__typename": "User", "PrimaryKey": primaryKey, "SortKey": sortKey, "Location": location, "FirstName": firstName, "LastName": lastName, "LastAccessed": lastAccessed, "IP": ip, "Online": online, "UILanguage": uiLanguage, "SearchString": searchString, "MemberAccess": memberAccess, "Email": email, "Gender": gender, "BirthDay": birthDay, "Phone": phone, "IsPublic": isPublic, "Groups": groups])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var primaryKey: String? {
          get {
            return snapshot["PrimaryKey"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "PrimaryKey")
          }
        }

        /// #username
        public var sortKey: String? {
          get {
            return snapshot["SortKey"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "SortKey")
          }
        }

        /// #basedata
        public var location: String? {
          get {
            return snapshot["Location"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "Location")
          }
        }

        public var firstName: String? {
          get {
            return snapshot["FirstName"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "FirstName")
          }
        }

        public var lastName: String? {
          get {
            return snapshot["LastName"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "LastName")
          }
        }

        public var lastAccessed: String? {
          get {
            return snapshot["LastAccessed"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "LastAccessed")
          }
        }

        public var ip: String? {
          get {
            return snapshot["IP"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "IP")
          }
        }

        public var online: Int? {
          get {
            return snapshot["Online"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "Online")
          }
        }

        public var uiLanguage: String? {
          get {
            return snapshot["UILanguage"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "UILanguage")
          }
        }

        public var searchString: String? {
          get {
            return snapshot["SearchString"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "SearchString")
          }
        }

        public var memberAccess: String? {
          get {
            return snapshot["MemberAccess"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "MemberAccess")
          }
        }

        public var email: String? {
          get {
            return snapshot["Email"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "Email")
          }
        }

        public var gender: String? {
          get {
            return snapshot["Gender"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "Gender")
          }
        }

        public var birthDay: String? {
          get {
            return snapshot["BirthDay"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "BirthDay")
          }
        }

        public var phone: String? {
          get {
            return snapshot["Phone"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "Phone")
          }
        }

        public var isPublic: Bool? {
          get {
            return snapshot["IsPublic"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "IsPublic")
          }
        }

        public var groups: String? {
          get {
            return snapshot["Groups"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "Groups")
          }
        }
      }
    }
  }
}

public final class GetPostQuery: GraphQLQuery {
  public static let operationString =
    "query GetPost($PrimaryKey: String, $SortKey: String) {\n  getPost(PrimaryKey: $PrimaryKey, SortKey: $SortKey) {\n    __typename\n    PrimaryKey\n    SortKey\n    MediaURL\n    Description\n    Categories\n    Likes\n    Year\n    SearchString\n    PostedBy\n    CreatedAt\n    LastEdited\n    PostType\n    comments {\n      __typename\n      eventId\n      commentId\n      content\n      createdAt\n      reactionType\n      lastEdited\n      reactedBy\n      originalAuthor\n    }\n  }\n}"

  public var PrimaryKey: String?
  public var SortKey: String?

  public init(PrimaryKey: String? = nil, SortKey: String? = nil) {
    self.PrimaryKey = PrimaryKey
    self.SortKey = SortKey
  }

  public var variables: GraphQLMap? {
    return ["PrimaryKey": PrimaryKey, "SortKey": SortKey]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getPost", arguments: ["PrimaryKey": GraphQLVariable("PrimaryKey"), "SortKey": GraphQLVariable("SortKey")], type: .object(GetPost.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getPost: GetPost? = nil) {
      self.init(snapshot: ["__typename": "Query", "getPost": getPost.flatMap { $0.snapshot }])
    }

    public var getPost: GetPost? {
      get {
        return (snapshot["getPost"] as? Snapshot).flatMap { GetPost(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getPost")
      }
    }

    public struct GetPost: GraphQLSelectionSet {
      public static let possibleTypes = ["Post"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("PrimaryKey", type: .scalar(String.self)),
        GraphQLField("SortKey", type: .scalar(String.self)),
        GraphQLField("MediaURL", type: .scalar(String.self)),
        GraphQLField("Description", type: .scalar(String.self)),
        GraphQLField("Categories", type: .scalar(String.self)),
        GraphQLField("Likes", type: .scalar(Int.self)),
        GraphQLField("Year", type: .scalar(String.self)),
        GraphQLField("SearchString", type: .scalar(String.self)),
        GraphQLField("PostedBy", type: .scalar(String.self)),
        GraphQLField("CreatedAt", type: .scalar(String.self)),
        GraphQLField("LastEdited", type: .scalar(String.self)),
        GraphQLField("PostType", type: .scalar(String.self)),
        GraphQLField("comments", type: .object(Comment.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(primaryKey: String? = nil, sortKey: String? = nil, mediaUrl: String? = nil, description: String? = nil, categories: String? = nil, likes: Int? = nil, year: String? = nil, searchString: String? = nil, postedBy: String? = nil, createdAt: String? = nil, lastEdited: String? = nil, postType: String? = nil, comments: Comment? = nil) {
        self.init(snapshot: ["__typename": "Post", "PrimaryKey": primaryKey, "SortKey": sortKey, "MediaURL": mediaUrl, "Description": description, "Categories": categories, "Likes": likes, "Year": year, "SearchString": searchString, "PostedBy": postedBy, "CreatedAt": createdAt, "LastEdited": lastEdited, "PostType": postType, "comments": comments.flatMap { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var primaryKey: String? {
        get {
          return snapshot["PrimaryKey"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "PrimaryKey")
        }
      }

      /// #username
      public var sortKey: String? {
        get {
          return snapshot["SortKey"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "SortKey")
        }
      }

      /// #basedata
      public var mediaUrl: String? {
        get {
          return snapshot["MediaURL"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "MediaURL")
        }
      }

      public var description: String? {
        get {
          return snapshot["Description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Description")
        }
      }

      public var categories: String? {
        get {
          return snapshot["Categories"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Categories")
        }
      }

      public var likes: Int? {
        get {
          return snapshot["Likes"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "Likes")
        }
      }

      public var year: String? {
        get {
          return snapshot["Year"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Year")
        }
      }

      public var searchString: String? {
        get {
          return snapshot["SearchString"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "SearchString")
        }
      }

      public var postedBy: String? {
        get {
          return snapshot["PostedBy"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "PostedBy")
        }
      }

      public var createdAt: String? {
        get {
          return snapshot["CreatedAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "CreatedAt")
        }
      }

      public var lastEdited: String? {
        get {
          return snapshot["LastEdited"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "LastEdited")
        }
      }

      public var postType: String? {
        get {
          return snapshot["PostType"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "PostType")
        }
      }

      public var comments: Comment? {
        get {
          return (snapshot["comments"] as? Snapshot).flatMap { Comment(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "comments")
        }
      }

      public struct Comment: GraphQLSelectionSet {
        public static let possibleTypes = ["Reaction"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("eventId", type: .scalar(GraphQLID.self)),
          GraphQLField("commentId", type: .scalar(String.self)),
          GraphQLField("content", type: .scalar(String.self)),
          GraphQLField("createdAt", type: .scalar(String.self)),
          GraphQLField("reactionType", type: .scalar(String.self)),
          GraphQLField("lastEdited", type: .scalar(String.self)),
          GraphQLField("reactedBy", type: .scalar(String.self)),
          GraphQLField("originalAuthor", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(eventId: GraphQLID? = nil, commentId: String? = nil, content: String? = nil, createdAt: String? = nil, reactionType: String? = nil, lastEdited: String? = nil, reactedBy: String? = nil, originalAuthor: String? = nil) {
          self.init(snapshot: ["__typename": "Reaction", "eventId": eventId, "commentId": commentId, "content": content, "createdAt": createdAt, "reactionType": reactionType, "lastEdited": lastEdited, "reactedBy": reactedBy, "originalAuthor": originalAuthor])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The id of the comment's parent event.
        public var eventId: GraphQLID? {
          get {
            return snapshot["eventId"] as? GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "eventId")
          }
        }

        /// A unique identifier for the comment.
        public var commentId: String? {
          get {
            return snapshot["commentId"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "commentId")
          }
        }

        /// The comment's content.
        public var content: String? {
          get {
            return snapshot["content"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "content")
          }
        }

        /// The comment timestamp. This field is indexed to enable sorted pagination.
        public var createdAt: String? {
          get {
            return snapshot["createdAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var reactionType: String? {
          get {
            return snapshot["reactionType"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "reactionType")
          }
        }

        public var lastEdited: String? {
          get {
            return snapshot["lastEdited"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "lastEdited")
          }
        }

        public var reactedBy: String? {
          get {
            return snapshot["reactedBy"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "reactedBy")
          }
        }

        public var originalAuthor: String? {
          get {
            return snapshot["originalAuthor"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "originalAuthor")
          }
        }
      }
    }
  }
}


public final class FetchPostsQuery: GraphQLQuery {
  public static let operationString =
    "query FetchPosts($PrimaryKey: String, $limit: Int, $nextToken: String) {\n  fetchPosts(PrimaryKey: $PrimaryKey, limit: $limit, nextToken: $nextToken) {\n    __typename\n    nextToken\n    items {\n      __typename\n      PrimaryKey\n      SortKey\n      MediaURL\n      Description\n      Categories\n      Likes\n      Year\n      SearchString\n      PostedBy\n      CreatedAt\n      LastEdited\n      PostType\n   comments {\n      __typename\n      eventId\n      commentId\n      content\n      createdAt\n      reactionType\n      lastEdited\n      reactedBy\n      originalAuthor\n    } }\n  }\n}"
    
        

  public var PrimaryKey: String?
  public var limit: Int?
  public var nextToken: String?

  public init(PrimaryKey: String? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.PrimaryKey = PrimaryKey
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["PrimaryKey": PrimaryKey, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("fetchPosts", arguments: ["PrimaryKey": GraphQLVariable("PrimaryKey"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(FetchPost.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(fetchPosts: FetchPost? = nil) {
      self.init(snapshot: ["__typename": "Query", "fetchPosts": fetchPosts.flatMap { $0.snapshot }])
    }

    public var fetchPosts: FetchPost? {
      get {
        return (snapshot["fetchPosts"] as? Snapshot).flatMap { FetchPost(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "fetchPosts")
      }
    }

    public struct FetchPost: GraphQLSelectionSet {
      public static let possibleTypes = ["PaginatedPosts"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("nextToken", type: .scalar(String.self)),
        GraphQLField("items", type: .list(.object(Item.selections))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(nextToken: String? = nil, items: [Item?]? = nil) {
        self.init(snapshot: ["__typename": "PaginatedPosts", "nextToken": nextToken, "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Post"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("PrimaryKey", type: .scalar(String.self)),
          GraphQLField("SortKey", type: .scalar(String.self)),
          GraphQLField("MediaURL", type: .scalar(String.self)),
          GraphQLField("Description", type: .scalar(String.self)),
          GraphQLField("Categories", type: .scalar(String.self)),
          GraphQLField("Likes", type: .scalar(Int.self)),
          GraphQLField("Year", type: .scalar(String.self)),
          GraphQLField("SearchString", type: .scalar(String.self)),
          GraphQLField("PostedBy", type: .scalar(String.self)),
          GraphQLField("CreatedAt", type: .scalar(String.self)),
          GraphQLField("LastEdited", type: .scalar(String.self)),
          GraphQLField("PostType", type: .scalar(String.self)),
          GraphQLField("comments", type: .object(Comment.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(primaryKey: String? = nil, sortKey: String? = nil, mediaUrl: String? = nil, description: String? = nil, categories: String? = nil, likes: Int? = nil, year: String? = nil, searchString: String? = nil, postedBy: String? = nil, createdAt: String? = nil, lastEdited: String? = nil, postType: String? = nil) {
          self.init(snapshot: ["__typename": "Post", "PrimaryKey": primaryKey, "SortKey": sortKey, "MediaURL": mediaUrl, "Description": description, "Categories": categories, "Likes": likes, "Year": year, "SearchString": searchString, "PostedBy": postedBy, "CreatedAt": createdAt, "LastEdited": lastEdited, "PostType": postType])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var primaryKey: String? {
          get {
            return snapshot["PrimaryKey"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "PrimaryKey")
          }
        }

        /// #username
        public var sortKey: String? {
          get {
            return snapshot["SortKey"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "SortKey")
          }
        }

        /// #basedata
        public var mediaUrl: String? {
          get {
            return snapshot["MediaURL"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "MediaURL")
          }
        }

        public var description: String? {
          get {
            return snapshot["Description"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "Description")
          }
        }

        public var categories: String? {
          get {
            return snapshot["Categories"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "Categories")
          }
        }

        public var likes: Int? {
          get {
            return snapshot["Likes"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "Likes")
          }
        }

        public var year: String? {
          get {
            return snapshot["Year"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "Year")
          }
        }

        public var searchString: String? {
          get {
            return snapshot["SearchString"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "SearchString")
          }
        }

        public var postedBy: String? {
          get {
            return snapshot["PostedBy"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "PostedBy")
          }
        }

        public var createdAt: String? {
          get {
            return snapshot["CreatedAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "CreatedAt")
          }
        }

        public var lastEdited: String? {
          get {
            return snapshot["LastEdited"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "LastEdited")
          }
        }

        public var postType: String? {
          get {
            return snapshot["PostType"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "PostType")
          }
        }
        
        public var comments: Comment? {
          get {
            return (snapshot["comments"] as? Snapshot).flatMap { Comment(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "comments")
          }
        }

        public struct Comment: GraphQLSelectionSet {
          public static let possibleTypes = ["Reaction"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("eventId", type: .scalar(GraphQLID.self)),
            GraphQLField("commentId", type: .scalar(String.self)),
            GraphQLField("content", type: .scalar(String.self)),
            GraphQLField("createdAt", type: .scalar(String.self)),
            GraphQLField("reactionType", type: .scalar(String.self)),
            GraphQLField("lastEdited", type: .scalar(String.self)),
            GraphQLField("reactedBy", type: .scalar(String.self)),
            GraphQLField("originalAuthor", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(eventId: GraphQLID? = nil, commentId: String? = nil, content: String? = nil, createdAt: String? = nil, reactionType: String? = nil, lastEdited: String? = nil, reactedBy: String? = nil, originalAuthor: String? = nil) {
            self.init(snapshot: ["__typename": "Reaction", "eventId": eventId, "commentId": commentId, "content": content, "createdAt": createdAt, "reactionType": reactionType, "lastEdited": lastEdited, "reactedBy": reactedBy, "originalAuthor": originalAuthor])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          /// The id of the comment's parent event.
          public var eventId: GraphQLID? {
            get {
              return snapshot["eventId"] as? GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "eventId")
            }
          }

          /// A unique identifier for the comment.
          public var commentId: String? {
            get {
              return snapshot["commentId"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "commentId")
            }
          }

          /// The comment's content.
          public var content: String? {
            get {
              return snapshot["content"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "content")
            }
          }

          /// The comment timestamp. This field is indexed to enable sorted pagination.
          public var createdAt: String? {
            get {
              return snapshot["createdAt"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var reactionType: String? {
            get {
              return snapshot["reactionType"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "reactionType")
            }
          }

          public var lastEdited: String? {
            get {
              return snapshot["lastEdited"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "lastEdited")
            }
          }

          public var reactedBy: String? {
            get {
              return snapshot["reactedBy"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "reactedBy")
            }
          }

          public var originalAuthor: String? {
            get {
              return snapshot["originalAuthor"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "originalAuthor")
            }
          }
        
        
        }
        
      }
    }
  }
}

public final class GetCalendarQuery: GraphQLQuery {
  public static let operationString =
    "query GetCalendar($PrimaryKey: String, $SortKey: String) {\n  getCalendar(PrimaryKey: $PrimaryKey, SortKey: $SortKey) {\n    __typename\n    PrimaryKey\n    SortKey\n    EventDate\n    EventDescription\n  }\n}"

  public var PrimaryKey: String?
  public var SortKey: String?

  public init(PrimaryKey: String? = nil, SortKey: String? = nil) {
    self.PrimaryKey = PrimaryKey
    self.SortKey = SortKey
  }

  public var variables: GraphQLMap? {
    return ["PrimaryKey": PrimaryKey, "SortKey": SortKey]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getCalendar", arguments: ["PrimaryKey": GraphQLVariable("PrimaryKey"), "SortKey": GraphQLVariable("SortKey")], type: .object(GetCalendar.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getCalendar: GetCalendar? = nil) {
      self.init(snapshot: ["__typename": "Query", "getCalendar": getCalendar.flatMap { $0.snapshot }])
    }

    public var getCalendar: GetCalendar? {
      get {
        return (snapshot["getCalendar"] as? Snapshot).flatMap { GetCalendar(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getCalendar")
      }
    }

    public struct GetCalendar: GraphQLSelectionSet {
      public static let possibleTypes = ["Calendar"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("PrimaryKey", type: .scalar(String.self)),
        GraphQLField("SortKey", type: .scalar(String.self)),
        GraphQLField("EventDate", type: .scalar(String.self)),
        GraphQLField("EventDescription", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(primaryKey: String? = nil, sortKey: String? = nil, eventDate: String? = nil, eventDescription: String? = nil) {
        self.init(snapshot: ["__typename": "Calendar", "PrimaryKey": primaryKey, "SortKey": sortKey, "EventDate": eventDate, "EventDescription": eventDescription])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var primaryKey: String? {
        get {
          return snapshot["PrimaryKey"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "PrimaryKey")
        }
      }

      /// #this is username of initiator
      public var sortKey: String? {
        get {
          return snapshot["SortKey"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "SortKey")
        }
      }

      /// #this is username of acceptor
      public var eventDate: String? {
        get {
          return snapshot["EventDate"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "EventDate")
        }
      }

      public var eventDescription: String? {
        get {
          return snapshot["EventDescription"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "EventDescription")
        }
      }
    }
  }
}

public final class FetchCalendarsQuery: GraphQLQuery {
  public static let operationString =
    "query FetchCalendars($PrimaryKey: String, $limit: Int, $nextToken: String) {\n  fetchCalendars(PrimaryKey: $PrimaryKey, limit: $limit, nextToken: $nextToken) {\n    __typename\n    nextToken\n    items {\n      __typename\n      PrimaryKey\n      SortKey\n      EventDate\n      EventDescription\n    }\n  }\n}"

  public var PrimaryKey: String?
  public var limit: Int?
  public var nextToken: String?

  public init(PrimaryKey: String? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.PrimaryKey = PrimaryKey
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["PrimaryKey": PrimaryKey, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("fetchCalendars", arguments: ["PrimaryKey": GraphQLVariable("PrimaryKey"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(FetchCalendar.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(fetchCalendars: FetchCalendar? = nil) {
      self.init(snapshot: ["__typename": "Query", "fetchCalendars": fetchCalendars.flatMap { $0.snapshot }])
    }

    public var fetchCalendars: FetchCalendar? {
      get {
        return (snapshot["fetchCalendars"] as? Snapshot).flatMap { FetchCalendar(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "fetchCalendars")
      }
    }

    public struct FetchCalendar: GraphQLSelectionSet {
      public static let possibleTypes = ["PaginatedCalendars"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("nextToken", type: .scalar(String.self)),
        GraphQLField("items", type: .list(.object(Item.selections))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(nextToken: String? = nil, items: [Item?]? = nil) {
        self.init(snapshot: ["__typename": "PaginatedCalendars", "nextToken": nextToken, "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Calendar"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("PrimaryKey", type: .scalar(String.self)),
          GraphQLField("SortKey", type: .scalar(String.self)),
          GraphQLField("EventDate", type: .scalar(String.self)),
          GraphQLField("EventDescription", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(primaryKey: String? = nil, sortKey: String? = nil, eventDate: String? = nil, eventDescription: String? = nil) {
          self.init(snapshot: ["__typename": "Calendar", "PrimaryKey": primaryKey, "SortKey": sortKey, "EventDate": eventDate, "EventDescription": eventDescription])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var primaryKey: String? {
          get {
            return snapshot["PrimaryKey"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "PrimaryKey")
          }
        }

        /// #this is username of initiator
        public var sortKey: String? {
          get {
            return snapshot["SortKey"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "SortKey")
          }
        }

        /// #this is username of acceptor
        public var eventDate: String? {
          get {
            return snapshot["EventDate"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "EventDate")
          }
        }

        public var eventDescription: String? {
          get {
            return snapshot["EventDescription"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "EventDescription")
          }
        }
      }
    }
  }
}

public final class GetInvitationQuery: GraphQLQuery {
  public static let operationString =
    "query GetInvitation($PrimaryKey: String, $SortKey: String) {\n  getInvitation(PrimaryKey: $PrimaryKey, SortKey: $SortKey) {\n    __typename\n    PrimaryKey\n    SortKey\n    IsBlocked\n    Status\n    CreatedAt\n    LastEdited\n    Location\n    FirstName\n    LastName\n    Email\n    SearchString\n    IsRead\n  }\n}"

  public var PrimaryKey: String?
  public var SortKey: String?

  public init(PrimaryKey: String? = nil, SortKey: String? = nil) {
    self.PrimaryKey = PrimaryKey
    self.SortKey = SortKey
  }

  public var variables: GraphQLMap? {
    return ["PrimaryKey": PrimaryKey, "SortKey": SortKey]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getInvitation", arguments: ["PrimaryKey": GraphQLVariable("PrimaryKey"), "SortKey": GraphQLVariable("SortKey")], type: .object(GetInvitation.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getInvitation: GetInvitation? = nil) {
      self.init(snapshot: ["__typename": "Query", "getInvitation": getInvitation.flatMap { $0.snapshot }])
    }

    public var getInvitation: GetInvitation? {
      get {
        return (snapshot["getInvitation"] as? Snapshot).flatMap { GetInvitation(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getInvitation")
      }
    }

    public struct GetInvitation: GraphQLSelectionSet {
      public static let possibleTypes = ["Invitation"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("PrimaryKey", type: .scalar(String.self)),
        GraphQLField("SortKey", type: .scalar(String.self)),
        GraphQLField("IsBlocked", type: .scalar(Bool.self)),
        GraphQLField("Status", type: .scalar(String.self)),
        GraphQLField("CreatedAt", type: .scalar(String.self)),
        GraphQLField("LastEdited", type: .scalar(String.self)),
        GraphQLField("Location", type: .scalar(String.self)),
        GraphQLField("FirstName", type: .scalar(String.self)),
        GraphQLField("LastName", type: .scalar(String.self)),
        GraphQLField("Email", type: .scalar(String.self)),
        GraphQLField("SearchString", type: .scalar(String.self)),
        GraphQLField("IsRead", type: .scalar(Bool.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(primaryKey: String? = nil, sortKey: String? = nil, isBlocked: Bool? = nil, status: String? = nil, createdAt: String? = nil, lastEdited: String? = nil, location: String? = nil, firstName: String? = nil, lastName: String? = nil, email: String? = nil, searchString: String? = nil, isRead: Bool? = nil) {
        self.init(snapshot: ["__typename": "Invitation", "PrimaryKey": primaryKey, "SortKey": sortKey, "IsBlocked": isBlocked, "Status": status, "CreatedAt": createdAt, "LastEdited": lastEdited, "Location": location, "FirstName": firstName, "LastName": lastName, "Email": email, "SearchString": searchString, "IsRead": isRead])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var primaryKey: String? {
        get {
          return snapshot["PrimaryKey"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "PrimaryKey")
        }
      }

      /// #this is username of initiator
      public var sortKey: String? {
        get {
          return snapshot["SortKey"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "SortKey")
        }
      }

      /// #this is username of acceptor
      public var isBlocked: Bool? {
        get {
          return snapshot["IsBlocked"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "IsBlocked")
        }
      }

      public var status: String? {
        get {
          return snapshot["Status"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Status")
        }
      }

      public var createdAt: String? {
        get {
          return snapshot["CreatedAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "CreatedAt")
        }
      }

      public var lastEdited: String? {
        get {
          return snapshot["LastEdited"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "LastEdited")
        }
      }

      public var location: String? {
        get {
          return snapshot["Location"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Location")
        }
      }

      public var firstName: String? {
        get {
          return snapshot["FirstName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "FirstName")
        }
      }

      public var lastName: String? {
        get {
          return snapshot["LastName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "LastName")
        }
      }

      public var email: String? {
        get {
          return snapshot["Email"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Email")
        }
      }

      public var searchString: String? {
        get {
          return snapshot["SearchString"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "SearchString")
        }
      }

      public var isRead: Bool? {
        get {
          return snapshot["IsRead"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "IsRead")
        }
      }
    }
  }
}

public final class FetchInvitationsQuery: GraphQLQuery {
  public static let operationString =
    "query FetchInvitations($PrimaryKey: String, $limit: Int, $nextToken: String) {\n  fetchInvitations(PrimaryKey: $PrimaryKey, limit: $limit, nextToken: $nextToken) {\n    __typename\n    nextToken\n    items {\n      __typename\n      PrimaryKey\n      SortKey\n      IsBlocked\n      Status\n      CreatedAt\n      LastEdited\n      Location\n      FirstName\n      LastName\n      Email\n      SearchString\n      IsRead\n    }\n  }\n}"

  public var PrimaryKey: String?
  public var limit: Int?
  public var nextToken: String?

  public init(PrimaryKey: String? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.PrimaryKey = PrimaryKey
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["PrimaryKey": PrimaryKey, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("fetchInvitations", arguments: ["PrimaryKey": GraphQLVariable("PrimaryKey"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(FetchInvitation.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(fetchInvitations: FetchInvitation? = nil) {
      self.init(snapshot: ["__typename": "Query", "fetchInvitations": fetchInvitations.flatMap { $0.snapshot }])
    }

    public var fetchInvitations: FetchInvitation? {
      get {
        return (snapshot["fetchInvitations"] as? Snapshot).flatMap { FetchInvitation(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "fetchInvitations")
      }
    }

    public struct FetchInvitation: GraphQLSelectionSet {
      public static let possibleTypes = ["PaginatedInvitations"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("nextToken", type: .scalar(String.self)),
        GraphQLField("items", type: .list(.object(Item.selections))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(nextToken: String? = nil, items: [Item?]? = nil) {
        self.init(snapshot: ["__typename": "PaginatedInvitations", "nextToken": nextToken, "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Invitation"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("PrimaryKey", type: .scalar(String.self)),
          GraphQLField("SortKey", type: .scalar(String.self)),
          GraphQLField("IsBlocked", type: .scalar(Bool.self)),
          GraphQLField("Status", type: .scalar(String.self)),
          GraphQLField("CreatedAt", type: .scalar(String.self)),
          GraphQLField("LastEdited", type: .scalar(String.self)),
          GraphQLField("Location", type: .scalar(String.self)),
          GraphQLField("FirstName", type: .scalar(String.self)),
          GraphQLField("LastName", type: .scalar(String.self)),
          GraphQLField("Email", type: .scalar(String.self)),
          GraphQLField("SearchString", type: .scalar(String.self)),
          GraphQLField("IsRead", type: .scalar(Bool.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(primaryKey: String? = nil, sortKey: String? = nil, isBlocked: Bool? = nil, status: String? = nil, createdAt: String? = nil, lastEdited: String? = nil, location: String? = nil, firstName: String? = nil, lastName: String? = nil, email: String? = nil, searchString: String? = nil, isRead: Bool? = nil) {
          self.init(snapshot: ["__typename": "Invitation", "PrimaryKey": primaryKey, "SortKey": sortKey, "IsBlocked": isBlocked, "Status": status, "CreatedAt": createdAt, "LastEdited": lastEdited, "Location": location, "FirstName": firstName, "LastName": lastName, "Email": email, "SearchString": searchString, "IsRead": isRead])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var primaryKey: String? {
          get {
            return snapshot["PrimaryKey"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "PrimaryKey")
          }
        }

        /// #this is username of initiator
        public var sortKey: String? {
          get {
            return snapshot["SortKey"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "SortKey")
          }
        }

        /// #this is username of acceptor
        public var isBlocked: Bool? {
          get {
            return snapshot["IsBlocked"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "IsBlocked")
          }
        }

        public var status: String? {
          get {
            return snapshot["Status"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "Status")
          }
        }

        public var createdAt: String? {
          get {
            return snapshot["CreatedAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "CreatedAt")
          }
        }

        public var lastEdited: String? {
          get {
            return snapshot["LastEdited"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "LastEdited")
          }
        }

        public var location: String? {
          get {
            return snapshot["Location"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "Location")
          }
        }

        public var firstName: String? {
          get {
            return snapshot["FirstName"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "FirstName")
          }
        }

        public var lastName: String? {
          get {
            return snapshot["LastName"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "LastName")
          }
        }

        public var email: String? {
          get {
            return snapshot["Email"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "Email")
          }
        }

        public var searchString: String? {
          get {
            return snapshot["SearchString"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "SearchString")
          }
        }

        public var isRead: Bool? {
          get {
            return snapshot["IsRead"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "IsRead")
          }
        }
      }
    }
  }
}

public final class SearchPostsByYearQuery: GraphQLQuery {
  public static let operationString =
    "query SearchPostsByYear($PrimaryKey: String, $Year: String, $limit: Int, $nextToken: String) {\n  searchPostsByYear(PrimaryKey: $PrimaryKey, Year: $Year, limit: $limit, nextToken: $nextToken) {\n    __typename\n    nextToken\n    items {\n      __typename\n      PrimaryKey\n      SortKey\n      MediaURL\n      Description\n      Categories\n      Likes\n      Year\n      SearchString\n      PostedBy\n      CreatedAt\n      LastEdited\n      PostType\n    }\n  }\n}"

  public var PrimaryKey: String?
  public var Year: String?
  public var limit: Int?
  public var nextToken: String?

  public init(PrimaryKey: String? = nil, Year: String? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.PrimaryKey = PrimaryKey
    self.Year = Year
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["PrimaryKey": PrimaryKey, "Year": Year, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("searchPostsByYear", arguments: ["PrimaryKey": GraphQLVariable("PrimaryKey"), "Year": GraphQLVariable("Year"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(SearchPostsByYear.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(searchPostsByYear: SearchPostsByYear? = nil) {
      self.init(snapshot: ["__typename": "Query", "searchPostsByYear": searchPostsByYear.flatMap { $0.snapshot }])
    }

    public var searchPostsByYear: SearchPostsByYear? {
      get {
        return (snapshot["searchPostsByYear"] as? Snapshot).flatMap { SearchPostsByYear(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "searchPostsByYear")
      }
    }

    public struct SearchPostsByYear: GraphQLSelectionSet {
      public static let possibleTypes = ["PaginatedPosts"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("nextToken", type: .scalar(String.self)),
        GraphQLField("items", type: .list(.object(Item.selections))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(nextToken: String? = nil, items: [Item?]? = nil) {
        self.init(snapshot: ["__typename": "PaginatedPosts", "nextToken": nextToken, "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Post"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("PrimaryKey", type: .scalar(String.self)),
          GraphQLField("SortKey", type: .scalar(String.self)),
          GraphQLField("MediaURL", type: .scalar(String.self)),
          GraphQLField("Description", type: .scalar(String.self)),
          GraphQLField("Categories", type: .scalar(String.self)),
          GraphQLField("Likes", type: .scalar(Int.self)),
          GraphQLField("Year", type: .scalar(String.self)),
          GraphQLField("SearchString", type: .scalar(String.self)),
          GraphQLField("PostedBy", type: .scalar(String.self)),
          GraphQLField("CreatedAt", type: .scalar(String.self)),
          GraphQLField("LastEdited", type: .scalar(String.self)),
          GraphQLField("PostType", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(primaryKey: String? = nil, sortKey: String? = nil, mediaUrl: String? = nil, description: String? = nil, categories: String? = nil, likes: Int? = nil, year: String? = nil, searchString: String? = nil, postedBy: String? = nil, createdAt: String? = nil, lastEdited: String? = nil, postType: String? = nil) {
          self.init(snapshot: ["__typename": "Post", "PrimaryKey": primaryKey, "SortKey": sortKey, "MediaURL": mediaUrl, "Description": description, "Categories": categories, "Likes": likes, "Year": year, "SearchString": searchString, "PostedBy": postedBy, "CreatedAt": createdAt, "LastEdited": lastEdited, "PostType": postType])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var primaryKey: String? {
          get {
            return snapshot["PrimaryKey"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "PrimaryKey")
          }
        }

        /// #username
        public var sortKey: String? {
          get {
            return snapshot["SortKey"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "SortKey")
          }
        }

        /// #basedata
        public var mediaUrl: String? {
          get {
            return snapshot["MediaURL"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "MediaURL")
          }
        }

        public var description: String? {
          get {
            return snapshot["Description"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "Description")
          }
        }

        public var categories: String? {
          get {
            return snapshot["Categories"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "Categories")
          }
        }

        public var likes: Int? {
          get {
            return snapshot["Likes"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "Likes")
          }
        }

        public var year: String? {
          get {
            return snapshot["Year"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "Year")
          }
        }

        public var searchString: String? {
          get {
            return snapshot["SearchString"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "SearchString")
          }
        }

        public var postedBy: String? {
          get {
            return snapshot["PostedBy"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "PostedBy")
          }
        }

        public var createdAt: String? {
          get {
            return snapshot["CreatedAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "CreatedAt")
          }
        }

        public var lastEdited: String? {
          get {
            return snapshot["LastEdited"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "LastEdited")
          }
        }

        public var postType: String? {
          get {
            return snapshot["PostType"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "PostType")
          }
        }
      }
    }
  }
}

public final class SearchPostsByCategoryQuery: GraphQLQuery {
  public static let operationString =
    "query SearchPostsByCategory($PrimaryKey: String, $Category: String, $limit: Int, $nextToken: String) {\n  searchPostsByCategory(PrimaryKey: $PrimaryKey, Category: $Category, limit: $limit, nextToken: $nextToken) {\n    __typename\n    nextToken\n    items {\n      __typename\n      PrimaryKey\n      SortKey\n      MediaURL\n      Description\n      Categories\n      Likes\n      Year\n      SearchString\n      PostedBy\n      CreatedAt\n      LastEdited\n      PostType\n    }\n  }\n}"

  public var PrimaryKey: String?
  public var Category: String?
  public var limit: Int?
  public var nextToken: String?

  public init(PrimaryKey: String? = nil, Category: String? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.PrimaryKey = PrimaryKey
    self.Category = Category
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["PrimaryKey": PrimaryKey, "Category": Category, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("searchPostsByCategory", arguments: ["PrimaryKey": GraphQLVariable("PrimaryKey"), "Category": GraphQLVariable("Category"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(SearchPostsByCategory.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(searchPostsByCategory: SearchPostsByCategory? = nil) {
      self.init(snapshot: ["__typename": "Query", "searchPostsByCategory": searchPostsByCategory.flatMap { $0.snapshot }])
    }

    public var searchPostsByCategory: SearchPostsByCategory? {
      get {
        return (snapshot["searchPostsByCategory"] as? Snapshot).flatMap { SearchPostsByCategory(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "searchPostsByCategory")
      }
    }

    public struct SearchPostsByCategory: GraphQLSelectionSet {
      public static let possibleTypes = ["PaginatedPosts"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("nextToken", type: .scalar(String.self)),
        GraphQLField("items", type: .list(.object(Item.selections))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(nextToken: String? = nil, items: [Item?]? = nil) {
        self.init(snapshot: ["__typename": "PaginatedPosts", "nextToken": nextToken, "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Post"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("PrimaryKey", type: .scalar(String.self)),
          GraphQLField("SortKey", type: .scalar(String.self)),
          GraphQLField("MediaURL", type: .scalar(String.self)),
          GraphQLField("Description", type: .scalar(String.self)),
          GraphQLField("Categories", type: .scalar(String.self)),
          GraphQLField("Likes", type: .scalar(Int.self)),
          GraphQLField("Year", type: .scalar(String.self)),
          GraphQLField("SearchString", type: .scalar(String.self)),
          GraphQLField("PostedBy", type: .scalar(String.self)),
          GraphQLField("CreatedAt", type: .scalar(String.self)),
          GraphQLField("LastEdited", type: .scalar(String.self)),
          GraphQLField("PostType", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(primaryKey: String? = nil, sortKey: String? = nil, mediaUrl: String? = nil, description: String? = nil, categories: String? = nil, likes: Int? = nil, year: String? = nil, searchString: String? = nil, postedBy: String? = nil, createdAt: String? = nil, lastEdited: String? = nil, postType: String? = nil) {
          self.init(snapshot: ["__typename": "Post", "PrimaryKey": primaryKey, "SortKey": sortKey, "MediaURL": mediaUrl, "Description": description, "Categories": categories, "Likes": likes, "Year": year, "SearchString": searchString, "PostedBy": postedBy, "CreatedAt": createdAt, "LastEdited": lastEdited, "PostType": postType])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var primaryKey: String? {
          get {
            return snapshot["PrimaryKey"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "PrimaryKey")
          }
        }

        /// #username
        public var sortKey: String? {
          get {
            return snapshot["SortKey"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "SortKey")
          }
        }

        /// #basedata
        public var mediaUrl: String? {
          get {
            return snapshot["MediaURL"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "MediaURL")
          }
        }

        public var description: String? {
          get {
            return snapshot["Description"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "Description")
          }
        }

        public var categories: String? {
          get {
            return snapshot["Categories"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "Categories")
          }
        }

        public var likes: Int? {
          get {
            return snapshot["Likes"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "Likes")
          }
        }

        public var year: String? {
          get {
            return snapshot["Year"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "Year")
          }
        }

        public var searchString: String? {
          get {
            return snapshot["SearchString"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "SearchString")
          }
        }

        public var postedBy: String? {
          get {
            return snapshot["PostedBy"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "PostedBy")
          }
        }

        public var createdAt: String? {
          get {
            return snapshot["CreatedAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "CreatedAt")
          }
        }

        public var lastEdited: String? {
          get {
            return snapshot["LastEdited"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "LastEdited")
          }
        }

        public var postType: String? {
          get {
            return snapshot["PostType"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "PostType")
          }
        }
      }
    }
  }
}

public final class SearchPostsQuery: GraphQLQuery {
  public static let operationString =
    "query SearchPosts($PrimaryKey: String, $SearchString: String, $limit: Int, $nextToken: String) {\n  searchPosts(PrimaryKey: $PrimaryKey, SearchString: $SearchString, limit: $limit, nextToken: $nextToken) {\n    __typename\n    nextToken\n    items {\n      __typename\n      PrimaryKey\n      SortKey\n      MediaURL\n      Description\n      Categories\n      Likes\n      Year\n      SearchString\n      PostedBy\n      CreatedAt\n      LastEdited\n      PostType\n  comments {\n      __typename\n      eventId\n      commentId\n      content\n      createdAt\n      reactionType\n      lastEdited\n      reactedBy\n      originalAuthor\n    }   }\n  }\n}"

  public var PrimaryKey: String?
  public var SearchString: String?
  public var limit: Int?
  public var nextToken: String?

  public init(PrimaryKey: String? = nil, SearchString: String? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.PrimaryKey = PrimaryKey
    self.SearchString = SearchString
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["PrimaryKey": PrimaryKey, "SearchString": SearchString, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("searchPosts", arguments: ["PrimaryKey": GraphQLVariable("PrimaryKey"), "SearchString": GraphQLVariable("SearchString"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(SearchPost.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(searchPosts: SearchPost? = nil) {
      self.init(snapshot: ["__typename": "Query", "searchPosts": searchPosts.flatMap { $0.snapshot }])
    }

    public var searchPosts: SearchPost? {
      get {
        return (snapshot["searchPosts"] as? Snapshot).flatMap { SearchPost(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "searchPosts")
      }
    }

    public struct SearchPost: GraphQLSelectionSet {
      public static let possibleTypes = ["PaginatedPosts"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("nextToken", type: .scalar(String.self)),
        GraphQLField("items", type: .list(.object(Item.selections))),
        
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(nextToken: String? = nil, items: [Item?]? = nil) {
        self.init(snapshot: ["__typename": "PaginatedPosts", "nextToken": nextToken, "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Post"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("PrimaryKey", type: .scalar(String.self)),
          GraphQLField("SortKey", type: .scalar(String.self)),
          GraphQLField("MediaURL", type: .scalar(String.self)),
          GraphQLField("Description", type: .scalar(String.self)),
          GraphQLField("Categories", type: .scalar(String.self)),
          GraphQLField("Likes", type: .scalar(Int.self)),
          GraphQLField("Year", type: .scalar(String.self)),
          GraphQLField("SearchString", type: .scalar(String.self)),
          GraphQLField("PostedBy", type: .scalar(String.self)),
          GraphQLField("CreatedAt", type: .scalar(String.self)),
          GraphQLField("LastEdited", type: .scalar(String.self)),
          GraphQLField("PostType", type: .scalar(String.self)),
                    GraphQLField("comments", type: .object(Comment.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(primaryKey: String? = nil, sortKey: String? = nil, mediaUrl: String? = nil, description: String? = nil, categories: String? = nil, likes: Int? = nil, year: String? = nil, searchString: String? = nil, postedBy: String? = nil, createdAt: String? = nil, lastEdited: String? = nil, postType: String? = nil) {
          self.init(snapshot: ["__typename": "Post", "PrimaryKey": primaryKey, "SortKey": sortKey, "MediaURL": mediaUrl, "Description": description, "Categories": categories, "Likes": likes, "Year": year, "SearchString": searchString, "PostedBy": postedBy, "CreatedAt": createdAt, "LastEdited": lastEdited, "PostType": postType])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var primaryKey: String? {
          get {
            return snapshot["PrimaryKey"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "PrimaryKey")
          }
        }

        /// #username
        public var sortKey: String? {
          get {
            return snapshot["SortKey"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "SortKey")
          }
        }

        /// #basedata
        public var mediaUrl: String? {
          get {
            return snapshot["MediaURL"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "MediaURL")
          }
        }

        public var description: String? {
          get {
            return snapshot["Description"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "Description")
          }
        }

        public var categories: String? {
          get {
            return snapshot["Categories"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "Categories")
          }
        }

        public var likes: Int? {
          get {
            return snapshot["Likes"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "Likes")
          }
        }

        public var year: String? {
          get {
            return snapshot["Year"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "Year")
          }
        }

        public var searchString: String? {
          get {
            return snapshot["SearchString"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "SearchString")
          }
        }

        public var postedBy: String? {
          get {
            return snapshot["PostedBy"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "PostedBy")
          }
        }

        public var createdAt: String? {
          get {
            return snapshot["CreatedAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "CreatedAt")
          }
        }

        public var lastEdited: String? {
          get {
            return snapshot["LastEdited"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "LastEdited")
          }
        }

        public var postType: String? {
          get {
            return snapshot["PostType"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "PostType")
          }
        }
        
      public var comments: Comment? {
                  get {
                    return (snapshot["comments"] as? Snapshot).flatMap { Comment(snapshot: $0) }
                  }
                  set {
                    snapshot.updateValue(newValue?.snapshot, forKey: "comments")
                  }
                }

                public struct Comment: GraphQLSelectionSet {
                  public static let possibleTypes = ["Reaction"]

                  public static let selections: [GraphQLSelection] = [
                    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                    GraphQLField("eventId", type: .scalar(GraphQLID.self)),
                    GraphQLField("commentId", type: .scalar(String.self)),
                    GraphQLField("content", type: .scalar(String.self)),
                    GraphQLField("createdAt", type: .scalar(String.self)),
                    GraphQLField("reactionType", type: .scalar(String.self)),
                    GraphQLField("lastEdited", type: .scalar(String.self)),
                    GraphQLField("reactedBy", type: .scalar(String.self)),
                    GraphQLField("originalAuthor", type: .scalar(String.self)),
                  ]

                  public var snapshot: Snapshot

                  public init(snapshot: Snapshot) {
                    self.snapshot = snapshot
                  }

                  public init(eventId: GraphQLID? = nil, commentId: String? = nil, content: String? = nil, createdAt: String? = nil, reactionType: String? = nil, lastEdited: String? = nil, reactedBy: String? = nil, originalAuthor: String? = nil) {
                    self.init(snapshot: ["__typename": "Reaction", "eventId": eventId, "commentId": commentId, "content": content, "createdAt": createdAt, "reactionType": reactionType, "lastEdited": lastEdited, "reactedBy": reactedBy, "originalAuthor": originalAuthor])
                  }

                  public var __typename: String {
                    get {
                      return snapshot["__typename"]! as! String
                    }
                    set {
                      snapshot.updateValue(newValue, forKey: "__typename")
                    }
                  }

                  /// The id of the comment's parent event.
                  public var eventId: GraphQLID? {
                    get {
                      return snapshot["eventId"] as? GraphQLID
                    }
                    set {
                      snapshot.updateValue(newValue, forKey: "eventId")
                    }
                  }

                  /// A unique identifier for the comment.
                  public var commentId: String? {
                    get {
                      return snapshot["commentId"] as? String
                    }
                    set {
                      snapshot.updateValue(newValue, forKey: "commentId")
                    }
                  }

                  /// The comment's content.
                  public var content: String? {
                    get {
                      return snapshot["content"] as? String
                    }
                    set {
                      snapshot.updateValue(newValue, forKey: "content")
                    }
                  }

                  /// The comment timestamp. This field is indexed to enable sorted pagination.
                  public var createdAt: String? {
                    get {
                      return snapshot["createdAt"] as? String
                    }
                    set {
                      snapshot.updateValue(newValue, forKey: "createdAt")
                    }
                  }

                  public var reactionType: String? {
                    get {
                      return snapshot["reactionType"] as? String
                    }
                    set {
                      snapshot.updateValue(newValue, forKey: "reactionType")
                    }
                  }

                  public var lastEdited: String? {
                    get {
                      return snapshot["lastEdited"] as? String
                    }
                    set {
                      snapshot.updateValue(newValue, forKey: "lastEdited")
                    }
                  }

                  public var reactedBy: String? {
                    get {
                      return snapshot["reactedBy"] as? String
                    }
                    set {
                      snapshot.updateValue(newValue, forKey: "reactedBy")
                    }
                  }

                  public var originalAuthor: String? {
                    get {
                      return snapshot["originalAuthor"] as? String
                    }
                    set {
                      snapshot.updateValue(newValue, forKey: "originalAuthor")
                    }
                  }
                
                
                }
                
              }
            }
          }
        }

public final class GetMessageVaultQuery: GraphQLQuery {
  public static let operationString =
    "query GetMessageVault($PrimaryKey: String, $SortKey: String) {\n  getMessageVault(PrimaryKey: $PrimaryKey, SortKey: $SortKey) {\n    __typename\n    PrimaryKey\n    SortKey\n    MediaURL\n    CanBeOpenedOn\n    IsLocked\n    SearchString\n    PostedBy\n    ReceivedBy\n    CreatedAt\n    LastEdited\n    PostType\n    Description\n    Sendername\n    Receivername\n  }\n}"

  public var PrimaryKey: String?
  public var SortKey: String?

  public init(PrimaryKey: String? = nil, SortKey: String? = nil) {
    self.PrimaryKey = PrimaryKey
    self.SortKey = SortKey
  }

  public var variables: GraphQLMap? {
    return ["PrimaryKey": PrimaryKey, "SortKey": SortKey]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getMessageVault", arguments: ["PrimaryKey": GraphQLVariable("PrimaryKey"), "SortKey": GraphQLVariable("SortKey")], type: .object(GetMessageVault.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getMessageVault: GetMessageVault? = nil) {
      self.init(snapshot: ["__typename": "Query", "getMessageVault": getMessageVault.flatMap { $0.snapshot }])
    }

    public var getMessageVault: GetMessageVault? {
      get {
        return (snapshot["getMessageVault"] as? Snapshot).flatMap { GetMessageVault(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getMessageVault")
      }
    }

    public struct GetMessageVault: GraphQLSelectionSet {
      public static let possibleTypes = ["MessageVault"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("PrimaryKey", type: .scalar(String.self)),
        GraphQLField("SortKey", type: .scalar(String.self)),
        GraphQLField("MediaURL", type: .scalar(String.self)),
        GraphQLField("CanBeOpenedOn", type: .scalar(String.self)),
        GraphQLField("IsLocked", type: .scalar(Bool.self)),
        GraphQLField("SearchString", type: .scalar(String.self)),
        GraphQLField("PostedBy", type: .scalar(String.self)),
        GraphQLField("ReceivedBy", type: .scalar(String.self)),
        GraphQLField("CreatedAt", type: .scalar(String.self)),
        GraphQLField("LastEdited", type: .scalar(String.self)),
        GraphQLField("PostType", type: .scalar(String.self)),
        GraphQLField("Description", type: .scalar(String.self)),
        GraphQLField("Sendername", type: .scalar(String.self)),
        GraphQLField("Receivername", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(primaryKey: String? = nil, sortKey: String? = nil, mediaUrl: String? = nil, canBeOpenedOn: String? = nil, isLocked: Bool? = nil, searchString: String? = nil, postedBy: String? = nil, receivedBy: String? = nil, createdAt: String? = nil, lastEdited: String? = nil, postType: String? = nil, description: String? = nil, sendername: String? = nil, receivername: String? = nil) {
        self.init(snapshot: ["__typename": "MessageVault", "PrimaryKey": primaryKey, "SortKey": sortKey, "MediaURL": mediaUrl, "CanBeOpenedOn": canBeOpenedOn, "IsLocked": isLocked, "SearchString": searchString, "PostedBy": postedBy, "ReceivedBy": receivedBy, "CreatedAt": createdAt, "LastEdited": lastEdited, "PostType": postType, "Description": description, "Sendername": sendername, "Receivername": receivername])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var primaryKey: String? {
        get {
          return snapshot["PrimaryKey"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "PrimaryKey")
        }
      }

      /// #username
      public var sortKey: String? {
        get {
          return snapshot["SortKey"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "SortKey")
        }
      }

      /// #basedata
      public var mediaUrl: String? {
        get {
          return snapshot["MediaURL"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "MediaURL")
        }
      }

      public var canBeOpenedOn: String? {
        get {
          return snapshot["CanBeOpenedOn"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "CanBeOpenedOn")
        }
      }

      public var isLocked: Bool? {
        get {
          return snapshot["IsLocked"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "IsLocked")
        }
      }

      public var searchString: String? {
        get {
          return snapshot["SearchString"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "SearchString")
        }
      }

      public var postedBy: String? {
        get {
          return snapshot["PostedBy"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "PostedBy")
        }
      }

      public var receivedBy: String? {
        get {
          return snapshot["ReceivedBy"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "ReceivedBy")
        }
      }

      public var createdAt: String? {
        get {
          return snapshot["CreatedAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "CreatedAt")
        }
      }

      public var lastEdited: String? {
        get {
          return snapshot["LastEdited"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "LastEdited")
        }
      }

      public var postType: String? {
        get {
          return snapshot["PostType"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "PostType")
        }
      }

      public var description: String? {
        get {
          return snapshot["Description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Description")
        }
      }

      public var sendername: String? {
        get {
          return snapshot["Sendername"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Sendername")
        }
      }

      public var receivername: String? {
        get {
          return snapshot["Receivername"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Receivername")
        }
      }
    }
  }
}

public final class FetchMessageVaultsQuery: GraphQLQuery {
  public static let operationString =
    "query FetchMessageVaults($PrimaryKey: String, $limit: Int, $nextToken: String) {\n  fetchMessageVaults(PrimaryKey: $PrimaryKey, limit: $limit, nextToken: $nextToken) {\n    __typename\n    nextToken\n    items {\n      __typename\n      PrimaryKey\n      SortKey\n      MediaURL\n      CanBeOpenedOn\n      IsLocked\n      SearchString\n      PostedBy\n      ReceivedBy\n      CreatedAt\n      LastEdited\n      PostType\n      Description\n      Sendername\n      Receivername\n    }\n  }\n}"

  public var PrimaryKey: String?
  public var limit: Int?
  public var nextToken: String?

  public init(PrimaryKey: String? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.PrimaryKey = PrimaryKey
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["PrimaryKey": PrimaryKey, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("fetchMessageVaults", arguments: ["PrimaryKey": GraphQLVariable("PrimaryKey"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(FetchMessageVault.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(fetchMessageVaults: FetchMessageVault? = nil) {
      self.init(snapshot: ["__typename": "Query", "fetchMessageVaults": fetchMessageVaults.flatMap { $0.snapshot }])
    }

    public var fetchMessageVaults: FetchMessageVault? {
      get {
        return (snapshot["fetchMessageVaults"] as? Snapshot).flatMap { FetchMessageVault(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "fetchMessageVaults")
      }
    }

    public struct FetchMessageVault: GraphQLSelectionSet {
      public static let possibleTypes = ["PaginatedMessageVaults"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("nextToken", type: .scalar(String.self)),
        GraphQLField("items", type: .list(.object(Item.selections))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(nextToken: String? = nil, items: [Item?]? = nil) {
        self.init(snapshot: ["__typename": "PaginatedMessageVaults", "nextToken": nextToken, "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["MessageVault"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("PrimaryKey", type: .scalar(String.self)),
          GraphQLField("SortKey", type: .scalar(String.self)),
          GraphQLField("MediaURL", type: .scalar(String.self)),
          GraphQLField("CanBeOpenedOn", type: .scalar(String.self)),
          GraphQLField("IsLocked", type: .scalar(Bool.self)),
          GraphQLField("SearchString", type: .scalar(String.self)),
          GraphQLField("PostedBy", type: .scalar(String.self)),
          GraphQLField("ReceivedBy", type: .scalar(String.self)),
          GraphQLField("CreatedAt", type: .scalar(String.self)),
          GraphQLField("LastEdited", type: .scalar(String.self)),
          GraphQLField("PostType", type: .scalar(String.self)),
          GraphQLField("Description", type: .scalar(String.self)),
          GraphQLField("Sendername", type: .scalar(String.self)),
          GraphQLField("Receivername", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(primaryKey: String? = nil, sortKey: String? = nil, mediaUrl: String? = nil, canBeOpenedOn: String? = nil, isLocked: Bool? = nil, searchString: String? = nil, postedBy: String? = nil, receivedBy: String? = nil, createdAt: String? = nil, lastEdited: String? = nil, postType: String? = nil, description: String? = nil, sendername: String? = nil, receivername: String? = nil) {
          self.init(snapshot: ["__typename": "MessageVault", "PrimaryKey": primaryKey, "SortKey": sortKey, "MediaURL": mediaUrl, "CanBeOpenedOn": canBeOpenedOn, "IsLocked": isLocked, "SearchString": searchString, "PostedBy": postedBy, "ReceivedBy": receivedBy, "CreatedAt": createdAt, "LastEdited": lastEdited, "PostType": postType, "Description": description, "Sendername": sendername, "Receivername": receivername])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var primaryKey: String? {
          get {
            return snapshot["PrimaryKey"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "PrimaryKey")
          }
        }

        /// #username
        public var sortKey: String? {
          get {
            return snapshot["SortKey"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "SortKey")
          }
        }

        /// #basedata
        public var mediaUrl: String? {
          get {
            return snapshot["MediaURL"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "MediaURL")
          }
        }

        public var canBeOpenedOn: String? {
          get {
            return snapshot["CanBeOpenedOn"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "CanBeOpenedOn")
          }
        }

        public var isLocked: Bool? {
          get {
            return snapshot["IsLocked"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "IsLocked")
          }
        }

        public var searchString: String? {
          get {
            return snapshot["SearchString"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "SearchString")
          }
        }

        public var postedBy: String? {
          get {
            return snapshot["PostedBy"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "PostedBy")
          }
        }

        public var receivedBy: String? {
          get {
            return snapshot["ReceivedBy"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "ReceivedBy")
          }
        }

        public var createdAt: String? {
          get {
            return snapshot["CreatedAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "CreatedAt")
          }
        }

        public var lastEdited: String? {
          get {
            return snapshot["LastEdited"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "LastEdited")
          }
        }

        public var postType: String? {
          get {
            return snapshot["PostType"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "PostType")
          }
        }

        public var description: String? {
          get {
            return snapshot["Description"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "Description")
          }
        }

        public var sendername: String? {
          get {
            return snapshot["Sendername"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "Sendername")
          }
        }

        public var receivername: String? {
          get {
            return snapshot["Receivername"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "Receivername")
          }
        }
      }
    }
  }
}

public final class SearchMessageVaultsQuery: GraphQLQuery {
  public static let operationString =
    "query SearchMessageVaults($PrimaryKey: String, $SearchString: String, $limit: Int, $nextToken: String) {\n  searchMessageVaults(PrimaryKey: $PrimaryKey, SearchString: $SearchString, limit: $limit, nextToken: $nextToken) {\n    __typename\n    nextToken\n    items {\n      __typename\n      PrimaryKey\n      SortKey\n      MediaURL\n      CanBeOpenedOn\n      IsLocked\n      SearchString\n      PostedBy\n      ReceivedBy\n      CreatedAt\n      LastEdited\n      PostType\n      Description\n      Sendername\n      Receivername\n    }\n  }\n}"

  public var PrimaryKey: String?
  public var SearchString: String?
  public var limit: Int?
  public var nextToken: String?

  public init(PrimaryKey: String? = nil, SearchString: String? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.PrimaryKey = PrimaryKey
    self.SearchString = SearchString
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["PrimaryKey": PrimaryKey, "SearchString": SearchString, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("searchMessageVaults", arguments: ["PrimaryKey": GraphQLVariable("PrimaryKey"), "SearchString": GraphQLVariable("SearchString"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(SearchMessageVault.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(searchMessageVaults: SearchMessageVault? = nil) {
      self.init(snapshot: ["__typename": "Query", "searchMessageVaults": searchMessageVaults.flatMap { $0.snapshot }])
    }

    public var searchMessageVaults: SearchMessageVault? {
      get {
        return (snapshot["searchMessageVaults"] as? Snapshot).flatMap { SearchMessageVault(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "searchMessageVaults")
      }
    }

    public struct SearchMessageVault: GraphQLSelectionSet {
      public static let possibleTypes = ["PaginatedMessageVaults"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("nextToken", type: .scalar(String.self)),
        GraphQLField("items", type: .list(.object(Item.selections))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(nextToken: String? = nil, items: [Item?]? = nil) {
        self.init(snapshot: ["__typename": "PaginatedMessageVaults", "nextToken": nextToken, "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["MessageVault"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("PrimaryKey", type: .scalar(String.self)),
          GraphQLField("SortKey", type: .scalar(String.self)),
          GraphQLField("MediaURL", type: .scalar(String.self)),
          GraphQLField("CanBeOpenedOn", type: .scalar(String.self)),
          GraphQLField("IsLocked", type: .scalar(Bool.self)),
          GraphQLField("SearchString", type: .scalar(String.self)),
          GraphQLField("PostedBy", type: .scalar(String.self)),
          GraphQLField("ReceivedBy", type: .scalar(String.self)),
          GraphQLField("CreatedAt", type: .scalar(String.self)),
          GraphQLField("LastEdited", type: .scalar(String.self)),
          GraphQLField("PostType", type: .scalar(String.self)),
          GraphQLField("Description", type: .scalar(String.self)),
          GraphQLField("Sendername", type: .scalar(String.self)),
          GraphQLField("Receivername", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(primaryKey: String? = nil, sortKey: String? = nil, mediaUrl: String? = nil, canBeOpenedOn: String? = nil, isLocked: Bool? = nil, searchString: String? = nil, postedBy: String? = nil, receivedBy: String? = nil, createdAt: String? = nil, lastEdited: String? = nil, postType: String? = nil, description: String? = nil, sendername: String? = nil, receivername: String? = nil) {
          self.init(snapshot: ["__typename": "MessageVault", "PrimaryKey": primaryKey, "SortKey": sortKey, "MediaURL": mediaUrl, "CanBeOpenedOn": canBeOpenedOn, "IsLocked": isLocked, "SearchString": searchString, "PostedBy": postedBy, "ReceivedBy": receivedBy, "CreatedAt": createdAt, "LastEdited": lastEdited, "PostType": postType, "Description": description, "Sendername": sendername, "Receivername": receivername])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var primaryKey: String? {
          get {
            return snapshot["PrimaryKey"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "PrimaryKey")
          }
        }

        /// #username
        public var sortKey: String? {
          get {
            return snapshot["SortKey"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "SortKey")
          }
        }

        /// #basedata
        public var mediaUrl: String? {
          get {
            return snapshot["MediaURL"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "MediaURL")
          }
        }

        public var canBeOpenedOn: String? {
          get {
            return snapshot["CanBeOpenedOn"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "CanBeOpenedOn")
          }
        }

        public var isLocked: Bool? {
          get {
            return snapshot["IsLocked"] as? Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "IsLocked")
          }
        }

        public var searchString: String? {
          get {
            return snapshot["SearchString"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "SearchString")
          }
        }

        public var postedBy: String? {
          get {
            return snapshot["PostedBy"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "PostedBy")
          }
        }

        public var receivedBy: String? {
          get {
            return snapshot["ReceivedBy"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "ReceivedBy")
          }
        }

        public var createdAt: String? {
          get {
            return snapshot["CreatedAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "CreatedAt")
          }
        }

        public var lastEdited: String? {
          get {
            return snapshot["LastEdited"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "LastEdited")
          }
        }

        public var postType: String? {
          get {
            return snapshot["PostType"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "PostType")
          }
        }

        public var description: String? {
          get {
            return snapshot["Description"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "Description")
          }
        }

        public var sendername: String? {
          get {
            return snapshot["Sendername"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "Sendername")
          }
        }

        public var receivername: String? {
          get {
            return snapshot["Receivername"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "Receivername")
          }
        }
      }
    }
  }
}

public final class OnupdatePostSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnupdatePost($PrimaryKey: String, $SortKey: String, $PostedBy: String) {\n  onupdatePost(PrimaryKey: $PrimaryKey, SortKey: $SortKey, PostedBy: $PostedBy) {\n    __typename\n    PrimaryKey\n    SortKey\n    MediaURL\n    Description\n    Categories\n    Likes\n    Year\n    SearchString\n    PostedBy\n    CreatedAt\n    LastEdited\n    PostType\n    comments {\n      __typename\n      eventId\n      commentId\n      content\n      createdAt\n      reactionType\n      lastEdited\n      reactedBy\n      originalAuthor\n    }\n  }\n}"

  public var PrimaryKey: String?
  public var SortKey: String?
  public var PostedBy: String?

  public init(PrimaryKey: String? = nil, SortKey: String? = nil, PostedBy: String? = nil) {
    self.PrimaryKey = PrimaryKey
    self.SortKey = SortKey
    self.PostedBy = PostedBy
  }

  public var variables: GraphQLMap? {
    return ["PrimaryKey": PrimaryKey, "SortKey": SortKey, "PostedBy": PostedBy]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onupdatePost", arguments: ["PrimaryKey": GraphQLVariable("PrimaryKey"), "SortKey": GraphQLVariable("SortKey"), "PostedBy": GraphQLVariable("PostedBy")], type: .object(OnupdatePost.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onupdatePost: OnupdatePost? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onupdatePost": onupdatePost.flatMap { $0.snapshot }])
    }

    public var onupdatePost: OnupdatePost? {
      get {
        return (snapshot["onupdatePost"] as? Snapshot).flatMap { OnupdatePost(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onupdatePost")
      }
    }

    public struct OnupdatePost: GraphQLSelectionSet {
      public static let possibleTypes = ["Post"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("PrimaryKey", type: .scalar(String.self)),
        GraphQLField("SortKey", type: .scalar(String.self)),
        GraphQLField("MediaURL", type: .scalar(String.self)),
        GraphQLField("Description", type: .scalar(String.self)),
        GraphQLField("Categories", type: .scalar(String.self)),
        GraphQLField("Likes", type: .scalar(Int.self)),
        GraphQLField("Year", type: .scalar(String.self)),
        GraphQLField("SearchString", type: .scalar(String.self)),
        GraphQLField("PostedBy", type: .scalar(String.self)),
        GraphQLField("CreatedAt", type: .scalar(String.self)),
        GraphQLField("LastEdited", type: .scalar(String.self)),
        GraphQLField("PostType", type: .scalar(String.self)),
        GraphQLField("comments", type: .object(Comment.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(primaryKey: String? = nil, sortKey: String? = nil, mediaUrl: String? = nil, description: String? = nil, categories: String? = nil, likes: Int? = nil, year: String? = nil, searchString: String? = nil, postedBy: String? = nil, createdAt: String? = nil, lastEdited: String? = nil, postType: String? = nil, comments: Comment? = nil) {
        self.init(snapshot: ["__typename": "Post", "PrimaryKey": primaryKey, "SortKey": sortKey, "MediaURL": mediaUrl, "Description": description, "Categories": categories, "Likes": likes, "Year": year, "SearchString": searchString, "PostedBy": postedBy, "CreatedAt": createdAt, "LastEdited": lastEdited, "PostType": postType, "comments": comments.flatMap { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var primaryKey: String? {
        get {
          return snapshot["PrimaryKey"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "PrimaryKey")
        }
      }

      /// #username
      public var sortKey: String? {
        get {
          return snapshot["SortKey"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "SortKey")
        }
      }

      /// #basedata
      public var mediaUrl: String? {
        get {
          return snapshot["MediaURL"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "MediaURL")
        }
      }

      public var description: String? {
        get {
          return snapshot["Description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Description")
        }
      }

      public var categories: String? {
        get {
          return snapshot["Categories"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Categories")
        }
      }

      public var likes: Int? {
        get {
          return snapshot["Likes"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "Likes")
        }
      }

      public var year: String? {
        get {
          return snapshot["Year"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Year")
        }
      }

      public var searchString: String? {
        get {
          return snapshot["SearchString"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "SearchString")
        }
      }

      public var postedBy: String? {
        get {
          return snapshot["PostedBy"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "PostedBy")
        }
      }

      public var createdAt: String? {
        get {
          return snapshot["CreatedAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "CreatedAt")
        }
      }

      public var lastEdited: String? {
        get {
          return snapshot["LastEdited"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "LastEdited")
        }
      }

      public var postType: String? {
        get {
          return snapshot["PostType"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "PostType")
        }
      }

      public var comments: Comment? {
        get {
          return (snapshot["comments"] as? Snapshot).flatMap { Comment(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "comments")
        }
      }

      public struct Comment: GraphQLSelectionSet {
        public static let possibleTypes = ["Reaction"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("eventId", type: .scalar(GraphQLID.self)),
          GraphQLField("commentId", type: .scalar(String.self)),
          GraphQLField("content", type: .scalar(String.self)),
          GraphQLField("createdAt", type: .scalar(String.self)),
          GraphQLField("reactionType", type: .scalar(String.self)),
          GraphQLField("lastEdited", type: .scalar(String.self)),
          GraphQLField("reactedBy", type: .scalar(String.self)),
          GraphQLField("originalAuthor", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(eventId: GraphQLID? = nil, commentId: String? = nil, content: String? = nil, createdAt: String? = nil, reactionType: String? = nil, lastEdited: String? = nil, reactedBy: String? = nil, originalAuthor: String? = nil) {
          self.init(snapshot: ["__typename": "Reaction", "eventId": eventId, "commentId": commentId, "content": content, "createdAt": createdAt, "reactionType": reactionType, "lastEdited": lastEdited, "reactedBy": reactedBy, "originalAuthor": originalAuthor])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The id of the comment's parent event.
        public var eventId: GraphQLID? {
          get {
            return snapshot["eventId"] as? GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "eventId")
          }
        }

        /// A unique identifier for the comment.
        public var commentId: String? {
          get {
            return snapshot["commentId"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "commentId")
          }
        }

        /// The comment's content.
        public var content: String? {
          get {
            return snapshot["content"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "content")
          }
        }

        /// The comment timestamp. This field is indexed to enable sorted pagination.
        public var createdAt: String? {
          get {
            return snapshot["createdAt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var reactionType: String? {
          get {
            return snapshot["reactionType"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "reactionType")
          }
        }

        public var lastEdited: String? {
          get {
            return snapshot["lastEdited"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "lastEdited")
          }
        }

        public var reactedBy: String? {
          get {
            return snapshot["reactedBy"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "reactedBy")
          }
        }

        public var originalAuthor: String? {
          get {
            return snapshot["originalAuthor"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "originalAuthor")
          }
        }
      }
    }
  }
}

public final class OncreateInvitationSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OncreateInvitation($PrimaryKey: String, $SortKey: String) {\n  oncreateInvitation(PrimaryKey: $PrimaryKey, SortKey: $SortKey) {\n    __typename\n    PrimaryKey\n    SortKey\n    IsBlocked\n    Status\n    CreatedAt\n    LastEdited\n    Location\n    FirstName\n    LastName\n    Email\n    SearchString\n    IsRead\n  }\n}"

  public var PrimaryKey: String?
  public var SortKey: String?

  public init(PrimaryKey: String? = nil, SortKey: String? = nil) {
    self.PrimaryKey = PrimaryKey
    self.SortKey = SortKey
  }

  public var variables: GraphQLMap? {
    return ["PrimaryKey": PrimaryKey, "SortKey": SortKey]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("oncreateInvitation", arguments: ["PrimaryKey": GraphQLVariable("PrimaryKey"), "SortKey": GraphQLVariable("SortKey")], type: .object(OncreateInvitation.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(oncreateInvitation: OncreateInvitation? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "oncreateInvitation": oncreateInvitation.flatMap { $0.snapshot }])
    }

    public var oncreateInvitation: OncreateInvitation? {
      get {
        return (snapshot["oncreateInvitation"] as? Snapshot).flatMap { OncreateInvitation(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "oncreateInvitation")
      }
    }

    public struct OncreateInvitation: GraphQLSelectionSet {
      public static let possibleTypes = ["Invitation"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("PrimaryKey", type: .scalar(String.self)),
        GraphQLField("SortKey", type: .scalar(String.self)),
        GraphQLField("IsBlocked", type: .scalar(Bool.self)),
        GraphQLField("Status", type: .scalar(String.self)),
        GraphQLField("CreatedAt", type: .scalar(String.self)),
        GraphQLField("LastEdited", type: .scalar(String.self)),
        GraphQLField("Location", type: .scalar(String.self)),
        GraphQLField("FirstName", type: .scalar(String.self)),
        GraphQLField("LastName", type: .scalar(String.self)),
        GraphQLField("Email", type: .scalar(String.self)),
        GraphQLField("SearchString", type: .scalar(String.self)),
        GraphQLField("IsRead", type: .scalar(Bool.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(primaryKey: String? = nil, sortKey: String? = nil, isBlocked: Bool? = nil, status: String? = nil, createdAt: String? = nil, lastEdited: String? = nil, location: String? = nil, firstName: String? = nil, lastName: String? = nil, email: String? = nil, searchString: String? = nil, isRead: Bool? = nil) {
        self.init(snapshot: ["__typename": "Invitation", "PrimaryKey": primaryKey, "SortKey": sortKey, "IsBlocked": isBlocked, "Status": status, "CreatedAt": createdAt, "LastEdited": lastEdited, "Location": location, "FirstName": firstName, "LastName": lastName, "Email": email, "SearchString": searchString, "IsRead": isRead])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var primaryKey: String? {
        get {
          return snapshot["PrimaryKey"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "PrimaryKey")
        }
      }

      /// #this is username of initiator
      public var sortKey: String? {
        get {
          return snapshot["SortKey"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "SortKey")
        }
      }

      /// #this is username of acceptor
      public var isBlocked: Bool? {
        get {
          return snapshot["IsBlocked"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "IsBlocked")
        }
      }

      public var status: String? {
        get {
          return snapshot["Status"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Status")
        }
      }

      public var createdAt: String? {
        get {
          return snapshot["CreatedAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "CreatedAt")
        }
      }

      public var lastEdited: String? {
        get {
          return snapshot["LastEdited"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "LastEdited")
        }
      }

      public var location: String? {
        get {
          return snapshot["Location"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Location")
        }
      }

      public var firstName: String? {
        get {
          return snapshot["FirstName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "FirstName")
        }
      }

      public var lastName: String? {
        get {
          return snapshot["LastName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "LastName")
        }
      }

      public var email: String? {
        get {
          return snapshot["Email"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Email")
        }
      }

      public var searchString: String? {
        get {
          return snapshot["SearchString"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "SearchString")
        }
      }

      public var isRead: Bool? {
        get {
          return snapshot["IsRead"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "IsRead")
        }
      }
    }
  }
}

public final class OnupdateInvitationSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnupdateInvitation($PrimaryKey: String, $SortKey: String) {\n  onupdateInvitation(PrimaryKey: $PrimaryKey, SortKey: $SortKey) {\n    __typename\n    PrimaryKey\n    SortKey\n    IsBlocked\n    Status\n    CreatedAt\n    LastEdited\n    Location\n    FirstName\n    LastName\n    Email\n    SearchString\n    IsRead\n  }\n}"

  public var PrimaryKey: String?
  public var SortKey: String?

  public init(PrimaryKey: String? = nil, SortKey: String? = nil) {
    self.PrimaryKey = PrimaryKey
    self.SortKey = SortKey
  }

  public var variables: GraphQLMap? {
    return ["PrimaryKey": PrimaryKey, "SortKey": SortKey]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onupdateInvitation", arguments: ["PrimaryKey": GraphQLVariable("PrimaryKey"), "SortKey": GraphQLVariable("SortKey")], type: .object(OnupdateInvitation.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onupdateInvitation: OnupdateInvitation? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onupdateInvitation": onupdateInvitation.flatMap { $0.snapshot }])
    }

    public var onupdateInvitation: OnupdateInvitation? {
      get {
        return (snapshot["onupdateInvitation"] as? Snapshot).flatMap { OnupdateInvitation(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onupdateInvitation")
      }
    }

    public struct OnupdateInvitation: GraphQLSelectionSet {
      public static let possibleTypes = ["Invitation"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("PrimaryKey", type: .scalar(String.self)),
        GraphQLField("SortKey", type: .scalar(String.self)),
        GraphQLField("IsBlocked", type: .scalar(Bool.self)),
        GraphQLField("Status", type: .scalar(String.self)),
        GraphQLField("CreatedAt", type: .scalar(String.self)),
        GraphQLField("LastEdited", type: .scalar(String.self)),
        GraphQLField("Location", type: .scalar(String.self)),
        GraphQLField("FirstName", type: .scalar(String.self)),
        GraphQLField("LastName", type: .scalar(String.self)),
        GraphQLField("Email", type: .scalar(String.self)),
        GraphQLField("SearchString", type: .scalar(String.self)),
        GraphQLField("IsRead", type: .scalar(Bool.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(primaryKey: String? = nil, sortKey: String? = nil, isBlocked: Bool? = nil, status: String? = nil, createdAt: String? = nil, lastEdited: String? = nil, location: String? = nil, firstName: String? = nil, lastName: String? = nil, email: String? = nil, searchString: String? = nil, isRead: Bool? = nil) {
        self.init(snapshot: ["__typename": "Invitation", "PrimaryKey": primaryKey, "SortKey": sortKey, "IsBlocked": isBlocked, "Status": status, "CreatedAt": createdAt, "LastEdited": lastEdited, "Location": location, "FirstName": firstName, "LastName": lastName, "Email": email, "SearchString": searchString, "IsRead": isRead])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var primaryKey: String? {
        get {
          return snapshot["PrimaryKey"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "PrimaryKey")
        }
      }

      /// #this is username of initiator
      public var sortKey: String? {
        get {
          return snapshot["SortKey"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "SortKey")
        }
      }

      /// #this is username of acceptor
      public var isBlocked: Bool? {
        get {
          return snapshot["IsBlocked"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "IsBlocked")
        }
      }

      public var status: String? {
        get {
          return snapshot["Status"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Status")
        }
      }

      public var createdAt: String? {
        get {
          return snapshot["CreatedAt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "CreatedAt")
        }
      }

      public var lastEdited: String? {
        get {
          return snapshot["LastEdited"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "LastEdited")
        }
      }

      public var location: String? {
        get {
          return snapshot["Location"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Location")
        }
      }

      public var firstName: String? {
        get {
          return snapshot["FirstName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "FirstName")
        }
      }

      public var lastName: String? {
        get {
          return snapshot["LastName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "LastName")
        }
      }

      public var email: String? {
        get {
          return snapshot["Email"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "Email")
        }
      }

      public var searchString: String? {
        get {
          return snapshot["SearchString"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "SearchString")
        }
      }

      public var isRead: Bool? {
        get {
          return snapshot["IsRead"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "IsRead")
        }
      }
    }
  }
}
