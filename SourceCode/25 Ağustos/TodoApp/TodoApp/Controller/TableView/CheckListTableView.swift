//
//  CheckListTableView.swift
//  TodoApp
//
//  Created by Tolga TANER on 25.08.2019.
//  Copyright © 2019 Tolga TANER. All rights reserved.
//

import UIKit

class CheckListTableView: UITableView {
    
    //Init method like viewDidLoad().
    override func awakeFromNib() {
        super.awakeFromNib()
        //protocol tanımlama.
        delegate = self
        //protocol tanımlama.
        dataSource = self
        //listenin footer kısmını kapatmak için tanımladık.
        tableFooterView = UIView()
    }
   

}

//Clean code : Protocol extend etmek için.
extension CheckListTableView: UITableViewDataSource {
    
    //Listedeki satır sayısını gösterir.
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    //Listedeki indexe karşılık gelen satırı gösterir.
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}


//Clean code : Protocol extend etmek için.
extension CheckListTableView : UITableViewDelegate {
    
   
    
}
