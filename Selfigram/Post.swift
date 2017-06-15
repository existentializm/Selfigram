//
//  Post.swift
//  Selfigram
//
//  Created by Temp User on 2017-05-22.
//  Copyright © 2017 Existentializm. All rights reserved.
//

import Foundation
import UIKit
import Parse

class Post:PFObject, PFSubclassing {
    
    @NSManaged var image:PFFile
    @NSManaged var user:PFUser
    @NSManaged var comment:String
    
    static func parseClassName() -> String {
        return "Post"
    }
    
    var likes: PFRelation<PFObject>! {
        // PFRelations are a bit different from just a regular properties
        // This is called a “computed property”, because it’s value is computed every time instead of stored.
        // The line below specifies that our relation column on Parse should be called “likes”
        return relation(forKey: "likes")
    }
    
    // convenience init method, because it’s building on top of PFObject’s init, rather than overriding it.
    convenience init(image:PFFile, user:PFUser, comment:String){
        // You can name the property you are passing into the function the
        // same name as the class' property. To distinguish the two
        // add "self." to the beginning of the class' property.
        self.init()
        self.image = image
        self.user = user
        self.comment = comment
    }
    
}

//class Post {
//    
//    let imageURL: URL
//    let user: User
//    let comment: String
//    
//    init(imageURL:URL, user:User, comment:String){
//        // You can name the property you are passing into the function the
//        // same name as the class' property. To distinguish the two
//        // add "self." to the beginning of the class' property.
//        // So for example we are passing in an UImage called image and setting it as our
//        // image property for Post.
//        self.imageURL = imageURL
//        self.user = user
//        self.comment = comment


