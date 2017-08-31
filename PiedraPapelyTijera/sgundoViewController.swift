//
//  sgundoViewController.swift
//  PiedraPapelyTijera
//
//  Created by Pedro Antonio Vazquez Rodriguez on 31/08/17.
//  Copyright © 2017 Pedro Antonio Vazquez Rodriguez. All rights reserved.
//

import UIKit

class sgundoViewController: UIViewController {
    @IBOutlet weak var maquinabtn: UIButton!

    @IBAction func jugada(_ sender: UIButton) {
        let movJugador = sender.tag
        let movMaquina = Int(arc4random_uniform(3)+1)
        var tituloalerta = ""
        if movJugador == movMaquina {
            maquinabtn.setTitle(sender.titleLabel?.text, for: .normal)
        }
        else{
         switch movJugador {
         case 1:
            if movMaquina == 2{
                maquinabtn.setTitle("✋🏻", for: .normal)
            }else{
            maquinabtn.setTitle("✌🏻", for: .normal)
            }
            break
         case 2:
             if movMaquina == 3{
                maquinabtn.setTitle("✌🏻", for: .normal)
                
            }else{
                maquinabtn.setTitle("👊🏻", for: .normal)
                
            }
            break
         case 3:
                if movMaquina == 1{
                    maquinabtn.setTitle("👊🏻", for: .normal)
                }else{
                    maquinabtn.setTitle("✋🏻", for: .normal)
                    
                }
            break
            
         default:
            
            print ("novjugador")
            break
         }
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*f
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
