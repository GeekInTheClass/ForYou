//
//  cloth.swift
//  ForYou
//
//  Created by CAUADC on 2018. 2. 1..
//  Copyright © 2018년 HM. All rights reserved.
//

import Foundation
import UIKit

class cloth{
    var model:String
    var brand:String
    var price:Int
    var clothImage:UIImage
    var url:String

    init(model:String, brand:String, price:Int, clothImage:UIImage, url:String){
        self.model=model
        self.brand=brand
        self.price=price
        self.clothImage=clothImage
        self.url = url
    }
}
