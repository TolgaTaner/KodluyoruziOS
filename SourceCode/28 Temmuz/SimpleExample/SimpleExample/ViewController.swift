//
//  ViewController.swift
//  SimpleExample
//
//  Created by Tolga TANER on 28.07.2019.
//  Copyright © 2019 Tolga TANER. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var welcomeLabel: UILabel!
    
   
    @IBAction func myButtonTapped(_ sender: Any) {
        print("Kodluyoruz Butonuna Basıldı.")
    }
    //MARK: TODO- Mülakat sorusu!
    
    
    //Uygulama açıldığında çalışan ikinci function.
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad is ready.")
        configure()
    }
    
    //Uygulama açıldığında çalışan son function.
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear is ready.")
    }
    //Uygulama açıldığında bu ekran gösterilecek.
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
     print("viewWillAppear is ready.")
    }
    
    //Uygulama açıldığında çalışan ilk function.
    override func loadView() {
        super.loadView()
        print("load view is ready.")
    }
    
    //Uygulama açıldığında sondan bir önceki function.
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("view did layout subviews is ready.")
    }
    
    //Uygulama açıldığında sondan iki önceki function.
    override func viewWillLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("view will layout subviews is ready.")
    }
    
    func configure(){
        welcomeLabel.text = "Kodluyoruz."
        myButton.setTitle("Kodluyoruza Hoşgeldiniz.", for: .normal)
    }
    


}

