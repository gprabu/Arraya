//
//  ViewController.swift
//  TableView
//
//  Created by Ganesh Prabu on 11/12/17.
//  Copyright © 2017 Ganesh Prabu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var emojis = ["😉","😎","😢","🤥","🎖","🎽"]
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count;
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let temp = UITableViewCell();
        temp.textLabel?.text = emojis[indexPath.row];
        
        return temp;
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "secondWindow", sender: emojis[indexPath.row])
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let emojiVC = segue.destination as! emojiViewController;
        emojiVC.emoji =  sender as! String
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

