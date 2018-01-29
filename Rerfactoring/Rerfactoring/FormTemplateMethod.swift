//
//  FormTemplateMethod.swift
//  Rerfactoring
//
//  Created by 1 on 1/28/18.
//  Copyright © 2018 User. All rights reserved.
//
//В подклассах реализованы алгоритмы, содержащие похожие шаги и одинаковый порядок выполнения этих шагов.
//Вынесите структуру алгоритма и одинаковые шаги в суперкласс, а в подклассах оставьте реализацию отличающихся шагов.
import Foundation

enum DomainZone {
    case com
    case net
    case ua
}

class WebSite {}

class Portal: WebSite {
    func getDomainPrice(zone: DomainZone){}
    func getHostingPrice(){}
}

class Blog: WebSite {
    func getDomainPrice(zone: DomainZone) {}
    func getHostingPrice(){}
}


//after

class WebSiteAfter {
    var space: Double?
    var users: Int?
    
    func getDomainPrice(zone: DomainZone) {}
    
    func getHostingPrice(){
       //calculation logic
    }
}

class PortalAfter: WebSiteAfter {
    override init() {
        super.init()
        space = 20
        users = 1000
    }
}

class BlogAfter: WebSiteAfter {
    override init() {
        super.init()
        space = 1
        users = 1
    }
}

