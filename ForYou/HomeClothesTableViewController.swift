//
//  HomeClothesTableViewController.swift
//  ForYou
//
//  Created by CAUADC on 2018. 2. 1..
//  Copyright © 2018년 HM. All rights reserved.
//

import UIKit

class HomeClothesTableViewController: UITableViewController {
    
    var clothes:[Cloth] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        var cloth1 = Cloth(model: "UNISEX CASHMERE JONAS OVERSIZED COAT awa102u (M/Beige)_MEN", brand: "Anderssonbell", price: 298_000, clothImage: #imageLiteral(resourceName: "AndersonBell1"), url: "http://www.hiphoper.com/shop/item.php?it_id=DU746872&ca_id=AA")
        var cloth2 = Cloth(model: "UNISEX CASHMERE JONAS OVERSIZED COAT awa102u (Black)_MEN", brand: "Anderssonbell", price: 298_000, clothImage: #imageLiteral(resourceName: "AndersonBell2"), url: "http://www.hiphoper.com/shop/item.php?it_id=XH822371&ca_id=AA")
        var cloth3 = Cloth(model: "VINCENT HANDMADE WOOL COAT awa114m(M/Beige)", brand: "Anderssonbell", price: 328_000, clothImage: #imageLiteral(resourceName: "AndersonBell3"), url: "http://www.hiphoper.com/shop/item.php?it_id=SZ247692&ca_id=AA")
        var cloth4 = Cloth(model: "PETERSSON CASHMERE SINGLE COAT awa115m(Khaki Beige)", brand: "Anderssonbell", price: 368_000, clothImage: #imageLiteral(resourceName: "AndersonBell4"), url: "http://www.hiphoper.com/shop/item.php?it_id=HT966491&ca_id=AA")
        
        clothes.append(cloth1)
        clothes.append(cloth2)
        clothes.append(cloth3)
        clothes.append(cloth4)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return clothes.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeClothes", for: indexPath) as! ClothTableViewCell
        
        
        // Configure the cell...
        
        let cloth = clothes[indexPath.row]

        cell.clothImage?.image=cloth.clothImage
        cell.brandLabel?.text=cloth.brand
        cell.modelLabel?.text=cloth.model
        cell.priceLabel?.text = "\(cloth.price)" + " " + "￦"
        
//      cell.textLabel?.text = cloth.model
//      cell.detailTextLabel?.text = "\(cloth.brand)" + "     " + "\(cloth.price)" + "￦"
//      cell.imageView?.image = cloth.clothImage
                
        return cell
    }
    
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if let indexPath = tableView.indexPathForSelectedRow {
            let selectedRow = indexPath.row
            let vc = segue.destination as? ClothesDetailViewController
            vc?.cloth = clothes[selectedRow]
        }
        
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    
    
}

