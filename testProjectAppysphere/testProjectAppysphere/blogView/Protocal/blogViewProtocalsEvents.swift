//
//  blogViewProtocals.swift
//  testProjectAppysphere
//
//  Created by UdrinkIDev on 19/1/2562 BE.
//  Copyright © 2562 ANUPONG DORKKUM. All rights reserved.
//

import Foundation

struct BlogViewEvent {
    static let loadBlogDataComplete = "EVBLoadBlogDataComplete"
    static let loadBlogDataFail = "EVBLoadBlogDataFail"
    static let addBlogDataComplete = "EVBaddBlogDataComplete"
    static let addBlogDataFail = "EVBaddBlogDataFail"
    static let deletePlaceDataComplete = "EVBdeleteBlogDataComplete"
    static let deletePlaceDataFail = "EVBdeleteBlogDataFail"
    
    static let goDetailView = "EVBgotoDetailView"
    static let goAddView = "EVBgotoAddView"
}
