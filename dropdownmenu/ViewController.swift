//
//  ViewController.swift
//  dropdownmenu
//
//  Created by SUMSKAR PC on 04/04/24.
//

import UIKit
import  DropDown
class ViewController: UIViewController {
    let menu:DropDown={
        
        let menu=DropDown()
        menu.dataSource=[
        "Item 1",
        "Item 2",
        "Item 3"
        ]
        let images=["bookmark","house","gear"]
        menu.cellNib=UINib(nibName: "DropDownCellsTableViewCell", bundle: nil)
        menu.customCellConfiguration = {index , title ,cell in
            guard let cell=cell as? DropDownCellsTableViewCell else{return}
            cell.myImageView.image=UIImage(systemName: images[index])
           
        }
        return menu
        
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
    
        let myView  = UIView(frame: navigationController?.navigationBar.frame ?? .zero)
        navigationController?.navigationBar.topItem?.titleView=myView
        guard let topView = navigationController?.navigationBar.topItem?.titleView else{return}
        myView.backgroundColor         = .systemBlue
        menu.anchorView                = topView
        let gesture=UITapGestureRecognizer(target: self, action: #selector(didTapItem))
        gesture.numberOfTapsRequired   = 1
        gesture.numberOfTouchesRequired=1
        topView.addGestureRecognizer(gesture)
        menu.selectionAction           = {index,title in
        print("index :\(index) title:\(title)")
        }
    }
    @objc func didTapItem(){
        menu.show()
    }
}

