import UIKit

class ViewController: UIViewController {

    var first = 0
    var second = 0
    var znak = ""
    
    @IBOutlet weak var otvet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        sleep(UInt32(1))
    }
    
    @IBAction func odin(_ sender: Any) {
        let a = Int(Double(otvet.text!)!)

        if a == 0 {
            otvet.text = String(1)
        }
        else {
            otvet.text! += String(1)
        }
        if otvet.text == "," {
            otvet.text! += String(1)
        }
    }
    
    @IBAction func dva(_ sender: Any) {
        let a = Int(Double(otvet.text!)!)
        
        if a == 0 {
            otvet.text = String(2)
        }
        else {
            otvet.text! += String(2)
        }
    }
    
    @IBAction func tri(_ sender: Any) {
        let a = Int(Double(otvet.text!)!)

        if a == 0 {
            otvet.text = String(3)
        }
        else {
            otvet.text! += String(3)
        }
    }
    
    @IBAction func four(_ sender: Any) {
        let a = Int(Double(otvet.text!)!)

        if a == 0 {
            otvet.text = String(4)
        }
        else {
            otvet.text! += String(4)
        }
    }
    
    @IBAction func fuve(_ sender: Any) {
        let a = Int(Double(otvet.text!)!)

        if a == 0 {
            otvet.text = String(5)
        }
        else {
            otvet.text! += String(5)
        }
    }
    
    @IBAction func six(_ sender: Any) {
        let a = Int(Double(otvet.text!)!)

        if a == 0 {
            otvet.text = String(6)
        }
        else {
            otvet.text! += String(6)
        }
    }
    
    @IBAction func seven(_ sender: Any) {
        let a = Int(Double(otvet.text!)!)

        if a == 0 {
            otvet.text = String(7)
        }
        else {
            otvet.text! += String(7)
        }
    }
    
    @IBAction func eight(_ sender: Any) {
        let a = Int(Double(otvet.text!)!)

        if a == 0 {
            otvet.text = String(8)
        }
        else {
            otvet.text! += String(8)
        }
    }
    
    @IBAction func nine(_ sender: Any) {
        let a = Int(Double(otvet.text!)!)

        if a == 0 {
            otvet.text = String(9)
        }
        else {
            otvet.text! += String(9)
        }
    }
    
    @IBAction func zero(_ sender: Any) {
        let a = Int(Double(otvet.text!)!)
        
        if a == 0 {
            otvet.text = String(0)
        }
        else {
            otvet.text! += String(0)
        }
    }
    
    @IBAction func divide(_ sender: Any) {
        znak = "/"
        first = Int(Double(otvet.text!)!)
        otvet.text = "0"
    }
    
    @IBAction func multiply(_ sender: Any) {
        znak = "*"
        first = Int(Double(otvet.text!)!)
        otvet.text = "0"
    }
    
    @IBAction func minus(_ sender: Any) {
        znak = "-"
        first = Int(Double(otvet.text!)!)
        otvet.text = "0"
    }
    
    @IBAction func plus(_ sender: UIButton) {
        znak = "+"
        first = Int(Double(otvet.text!)!)
        otvet.text = "0"
    }
    
    @IBAction func ravno(_ sender: Any) {
        if znak == "+" {
            second = Int(Double(otvet.text!)!)
            let res = first + second
            otvet.text = String(res)
        }
        if znak == "-" {
            second = Int(Double(otvet.text!)!)
            let res = first - second
            otvet.text = String(res)
        }
        if znak == "*" {
            second = Int(Double(otvet.text!)!)
            let res = first * second
            otvet.text = String(res)
        }
        if znak == "/" {
            second = Int(Double(otvet.text!)!)
            let res : Double = Double(first) / Double(second)
            otvet.text = String(res)
        }
    }
    
    @IBAction func deleteSign(_ sender: Any) {
        if znak == " " || znak == "" {
            first = Int(Double(otvet.text!)!)
            first = first / 10
            otvet.text = String(first)
        }
        
        else {
            second = Int(Double(otvet.text!)!)
            second = second / 10
            otvet.text = String(second)
        }
    }
    
    @IBAction func percentage(_ sender: Any) {
        var fistr : Double = Double(first)
        fistr = Double(otvet.text!)!
        let percentageRes = fistr / 100
        otvet.text = String(percentageRes)
    }

    @IBAction func minusier(_ sender: Any) {
        first = Int(Double(otvet.text!)!)
        first = first - (first * 2)
        otvet.text = String(first)
    }

    @IBAction func reset(_ sender: Any) {
        first = 0
        second = 0
        znak = ""
        otvet.text = "0"
    }
}
