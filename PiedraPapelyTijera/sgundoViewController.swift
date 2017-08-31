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
    @IBOutlet weak var personLabel: UILabel!
    @IBOutlet weak var machinelabel: UILabel!
    
    var counterMaquina = 0
    var counterPersona = 0
    
    @IBAction func jugada(_ sender: UIButton) {
        let movJugador = sender.tag
        let movMaquina = Int(arc4random_uniform(3)+1)
        var tituloalerta = ""
        
        
        if movJugador == movMaquina {
            maquinabtn.setTitle(sender.titleLabel?.text, for: .normal)
            tituloalerta = "Empate"
            
        }
        else{
         switch movJugador {
         case 1:
            if movMaquina == 2{
                maquinabtn.setTitle("✋🏻", for: .normal)
                tituloalerta = "Perdiste"
                counterMaquina += 1
            }else{
            maquinabtn.setTitle("✌🏻", for: .normal)
                tituloalerta = "Ganaste"
                counterPersona += 1
            }
            break
         case 2:
             if movMaquina == 3{
                maquinabtn.setTitle("✌🏻", for: .normal)
                tituloalerta = "Perdiste"
                counterMaquina += 1

                
            }else{
                maquinabtn.setTitle("👊🏻", for: .normal)
                tituloalerta = "Ganaste"
                counterPersona += 1
                
            }
            break
         case 3:
                if movMaquina == 1{
                    maquinabtn.setTitle("👊🏻", for: .normal)
                    tituloalerta = "Perdiste"
                    counterMaquina += 1

                }else{
                    maquinabtn.setTitle("✋🏻", for: .normal)
                    tituloalerta = "Ganaste"
                    counterPersona += 1
                    
                }
            break
            
         default:
            
            print ("novjugador")
            break
         }
        }
        
        let alertcontroller = UIAlertController(title: tituloalerta, message: "" , preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alertcontroller.addAction(action)
        self.present(alertcontroller, animated: true, completion: nil)
        machinelabel.text = "Score Maquina: \(counterMaquina)"
        personLabel.text = "Score Persona \(counterPersona)"
        
        
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
