//
//  PostViewModel.swift
//  MVVM With Api Call Example
//
//  Created by amit pandey on 13/01/21.
//  Copyright © 2021 Xavient. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

class PostViewModel{
    
    var posts = BehaviorRelay<[Post]>(value: [])
    
    func getPosts(){
        
        Api.prepare.fetchPost(completion: {posts, error in
            self.posts.accept(posts)
        })
        
    }
    
}
