//
//  ViewController.swift
//  TPCaulculette
//
//  Created by mbds on 08/04/2021.
//

import UIKit

class ViewController: UIViewController {

    var  temp:String=""
    var operation:Int=0
    @IBOutlet weak var txtdisplay: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func pressB7(_ sender: Any) {
        let ancv = txtdisplay.text
        txtdisplay.text = ancv! + "7"
    }
    
    @IBAction func pressB8(_ sender: Any) {
        let ancv = txtdisplay.text
        txtdisplay.text = ancv! + "8"
    }
    @IBAction func pressB9(_ sender: Any) {
        let ancv = txtdisplay.text
        txtdisplay.text = ancv! + "9"
    }
    @IBAction func pressB6(_ sender: Any) {
        let ancv = txtdisplay.text
        txtdisplay.text = ancv! + "6"
    }

    @IBAction func presseB5(_ sender: Any) {
        let ancv = txtdisplay.text
        txtdisplay.text = ancv! + "5"
    }
    
    @IBAction func pressB4(_ sender: Any) {
        let ancv = txtdisplay.text
        txtdisplay.text = ancv! + "4"
    }
    
    @IBAction func pressB3(_ sender: Any) {
        let ancv = txtdisplay.text
        txtdisplay.text = ancv! + "3"    }
    
    
    @IBAction func pressB2(_ sender: Any) {
        let ancv = txtdisplay.text
        txtdisplay.text = ancv! + "2"
    }
    
    @IBAction func presseB1(_ sender: Any) {
        let ancv = txtdisplay.text
        txtdisplay.text = ancv! + "1"
    }
    @IBAction func pressB0(_ sender: Any) {
        let ancv = txtdisplay.text
        txtdisplay.text = ancv! + "0"        
    }
    
    @IBAction func add(_ sender: Any) {
        temp=txtdisplay.text!
        txtdisplay.text=""
        operation=0
    }
    
    @IBAction func mult(_ sender: Any) {
        temp=txtdisplay.text!
        txtdisplay.text=""
        operation=1
    }
    
    @IBAction func moins(_ sender: Any) {
        temp=txtdisplay.text!
        txtdisplay.text=""
        operation=2
    }
    
    @IBAction func div(_ sender: Any) {
        temp=txtdisplay.text!
        txtdisplay.text=""
        operation=3
    }
    @IBAction func result(_ sender: Any) {
        let rec:String=txtdisplay.text!
        let v1:Int=Int(temp)!
        let v2:Int=Int(rec)!
        switch operation{
        case 0:
            txtdisplay.text=String(v1+v2)
        case 1:
            txtdisplay.text=String(v1*v2)
        case 2:
            txtdisplay.text=String(v1-v2)
        case 3:
            if v2==0{
                txtdisplay.text="Infinite"
            }
            else{
            txtdisplay.text=String(v1/v2)
            }
            
        default:
            txtdisplay.text="operation non definie"
        }
        
        
    }
    @IBAction func clear(_ sender: Any) {
        txtdisplay.text=""
    }
    
 
}

