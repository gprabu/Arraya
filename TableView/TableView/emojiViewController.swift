//
//  emojiViewController.swift
//  TableView
//
//  Created by Ganesh Prabu on 11/13/17.
//  Copyright © 2017 Ganesh Prabu. All rights reserved.
//

import UIKit

class emojiViewController: UIViewController {
    
    
    @IBOutlet weak var icon: UILabel!
    @IBOutlet weak var details: UILabel!
    @IBOutlet weak var desc: UILabel!
    @IBOutlet weak var info: UILabel!
    
    var emoji = "GP"
    override func viewDidLoad() {
        super.viewDidLoad()
        print(emoji);
        icon.text = emoji
        
        if (emoji == "🎽")
            {
                desc.text = "Hello"
        }
        else
            {
            desc.text="Not Sure"
        }
        
        info.text = "Info"
        details.text = "Detailed Info"
        
        // Do any additional setup after loading the view.
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
