//
//  ViewController.swift
//  prac2
//
//  Created by DISMOV on 22/03/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfcampo: UITextField!
    @IBOutlet weak var tvTodo: UITextView!
    @IBOutlet weak var ivGoodBad: UIImageView!
    @IBOutlet weak var sCambio: UISwitch!
    @IBOutlet weak var sAlfa: UISlider!
    @IBOutlet weak var bAdd: UIButton!
    var habil:Bool = false
    override func viewDidLoad() {
        super.viewDidLoad()
        tvTodo.isEditable = false
        
        for fontFamilyName in UIFont.familyNames{
            for fontName in UIFont.fontNames(forFamilyName: fontFamilyName){
                print("Family : \(fontFamilyName)      Font: \(fontName)")
            }
        }
        // Do any additional setup after loading the view.
        
    }

    @IBAction func Deshablita(_ sender: UIButton) {
        if(!habil)
        {
            sCambio.isEnabled = habil
            tfcampo.isEnabled = habil
            bAdd.isEnabled = habil
            sAlfa.isEnabled = habil
            habil = true
        }
        else
        {
            sCambio.isEnabled = habil
            tfcampo.isEnabled = habil
            bAdd.isEnabled = habil
            sAlfa.isEnabled = habil
            habil = false
        }
    }
    
    @IBAction func Agregatxt(_ sender: UIButton) {
        tvTodo.text += tfcampo.text ?? ""
        tfcampo.text = ""
    }
    @IBAction func Cambia(_ sender: UISwitch) {
        if sender.isOn {
            ivGoodBad.image = UIImage(named: "Angel")
        }
        else{
            ivGoodBad.image = UIImage(named: "Evil")
        }
    }
    @IBAction func AlfaIm(_ sender: UISlider) {
        ivGoodBad.alpha = CGFloat(sender.value)
    }
}

