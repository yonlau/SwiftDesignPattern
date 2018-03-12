//
//  UserManager.swift
//  SwiftDesignPattern
//
//  Created by Yon Lau on 12/03/2018.
//  Copyright © 2018 YonLau. All rights reserved.
//

class UserManager {
    //單一設計模式下，封裝了兩個邏輯，一個是私有的靜態變數，一個是公開的靜態方法。
    
    //mInstance雖然是靜態變數，可是存取權限要設定為private私有的，
    //除了自己以外，其他類別成員都不能夠去操作存取這個靜態變數
    private static var mInstance:UserManager?
    
    //宣告一個靜態方法sharedInstance()
    //其他類別成員可透過sharedInstance()這個方法取得UserManager的實體
    static func sharedInstance() -> UserManager {
        if mInstance == nil {
            mInstance = UserManager()
            
        }
        return mInstance!
    }
    
    private var userName:String = String()
    
    private init(){
        self.userName = "YonLau"
    }
    
    func getUserName() -> String {
        return self.userName
    }
    
}
