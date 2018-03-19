//
//  ViewController.swift
//  BinaryCounter
//
//  Created by Maria Stezhko on 3/19/18.
//  Copyright © 2018 Maria Stezhko. All rights reserved.
//

import UIKit
import Darwin

class ViewController: UIViewController {
    
    var nums = [Int]()
    var sum:Int = 0

    @IBOutlet weak var sumLabel: UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        let n = Decimal(10)
        
        for i in 0..<16 {
            //nums.append(Int(pow(n,i)))
            //print(pow(10,i))
            let test = pow(n, i)
            let result = NSDecimalNumber(decimal: test)
            print(Int(result))
            nums.append(Int(result))
        }
        print(nums)
        
            sumLabel.text = "\(sum)"
            //sumLabel.text = String(sum)
        
        tableView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell") as! CustomCell
        cell.numberLabel.text = "\(nums[indexPath.row])"
        
        // return cell so that Table View knows what to draw in each row
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 16
    }
}
