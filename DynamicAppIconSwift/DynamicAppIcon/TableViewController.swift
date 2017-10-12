//
//  TableViewController.swift
//  DynamicAppIcon
//
//  Created by WhatsXie on 2017/10/12.
//  Copyright © 2017年 WhatsXie. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        switch indexPath.row {
        case 0:
            dynamicAppIconWith(iconName: "IconBeta")
            break
        case 1:
            dynamicAppIconWith(iconName: "IconDebug")
            break
        default:
            dynamicAppIconWith(iconName: nil)
        }
    }

}
extension TableViewController {
    ///图标权限保护
    func safeJudge() {
        if UIApplication.shared.supportsAlternateIcons {
            print("you can change this app's icon")
        }else {
            print("you cannot change this app's icon")
            return
        }
    }
    ///使用备选图标
    func dynamicAppIconWith(iconName:String?) {
        safeJudge()
        UIApplication.shared.setAlternateIconName(iconName) { (err:Error?) in
            print("set icon error：\(String(describing: err))")
        }
    }
}

