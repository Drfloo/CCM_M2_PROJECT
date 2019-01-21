//
//  ViewController.swift
//  CCMProjectTest1
//
//  Created by Valentin Denis on 21/01/2019.
//  Copyright © 2019 Val. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var myButton: UIButton!
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.title = "Cute Cat"
        myImage.image = UIImage(named: "cuteCat")
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
    }
    override func viewDidLayoutSubviews() {
        
    }

    @IBAction func didTapMyButton(_ sender: Any) {
        /*let alert: UIAlertController = UIAlertController.init(title: "Miaou", message: "Meow meow", preferredStyle: .alert)
        
        let okButton: UIAlertAction = UIAlertAction.init(title: "OK", style: .destructive) { (alertAction) in
            alert.dismiss(animated: true, completion: nil)
        }
        
        alert.addAction(okButton)
        
        self.present(alert, animated: true, completion: nil)*/
    
        self.performSegue(withIdentifier: "showDetail", sender: sender)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let identifier = segue.identifier {
            switch identifier {
            case "showDetail":
                if let destinationDetailVC = segue.destination as? DetailViewController {
                    //destinationDetailVC.prefilledString = "Valentin"
                }
                break
            default:
                break
            }
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }


}

