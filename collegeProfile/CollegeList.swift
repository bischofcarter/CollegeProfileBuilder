//
//  CollegeList.swift
//  collegeProfile
//
//  Created by Carter Bischof on 2/9/17.
//  Copyright © 2017 Carter Bischof. All rights reserved.
//

import UIKit

class CollegeList: NSObject
{

    var size = " "
    var title = " "
    var image = UIImage(named: "default_icon")
    
    init(Title: String, Size: String, Image: UIImage)
    {
        title = Title
        size = Size
        image = Image
    }
    
    init(Title:String, Size:String)
    {
        title = Title
        size = Size
    }
    
}
