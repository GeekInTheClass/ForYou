//
//  ClothesDetailViewController.swift
//  ForYou
//
//  Created by cauadc on 2018. 2. 2..
//  Copyright © 2018년 HM. All rights reserved.
//

import UIKit

class ClothesDetailViewController: UIViewController {
    
    var cloth: Cloth?
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var modelDetail: UILabel!
    @IBOutlet weak var brandDetail: UILabel!
    @IBOutlet weak var priceDetail: UILabel!
    @IBOutlet weak var urlDetail: UILabel!
    @IBOutlet weak var discountPriceDetail: UILabel!
    @IBOutlet weak var discountRateDetail: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let myCloth = cloth {
            
            imageView.image = myCloth.clothImage
            modelDetail.text = myCloth.model
            brandDetail.text = myCloth.brand
            priceDetail.text = String(myCloth.price) + "￦"
            
            func discount (discount : Int, price : Int) -> Int {
                var discountPrice = (1-(0.01 * Double(discount))) * Double(price)
                
                return Int(discountPrice)
            }
            var rateOfDiscount = 15
            var discountedPrice = discount(discount: rateOfDiscount, price: myCloth.price)
            
            discountPriceDetail.text = "\(discountedPrice)" + "￦"
            discountRateDetail.text = "\(rateOfDiscount)" + " % off"
            
            self.navigationItem.title = myCloth.brand
        }

        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}

