//
//  CheckListViewController.swift
//  TodoApp
//
//  Created by Tolga TANER on 25.08.2019.
//  Copyright © 2019 Tolga TANER. All rights reserved.
//

import UIKit

class CheckListViewController: UIViewController {
    
    //To do itemları listeler.
    @IBOutlet weak var checkListTableView: CheckListTableView!
    
    //Oluşturulan her bir itemı listenin içine atmamızı sağlayan data source.
    private var checkListItemList:[CheckListItemModel] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    //To do item yaratacak sayfaya yönlendirir.
    @IBAction func addItemTapped(_ sender: Any) {
        //AddCheckListViewController
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let addCheckListViewController = storyboard.instantiateViewController(withIdentifier: "AddCheckListViewController") as? AddCheckListViewController {
            self.navigationController?.pushViewController(addCheckListViewController, animated: true)
            
        }
    }
}
