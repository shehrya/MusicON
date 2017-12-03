//
//  PlaySongVC.swift
//  PassingData
//
//  Created by Shehryar Khan on 26.05.17.
//  Copyright © 2017 Shehryar Khan. All rights reserved.
//

import UIKit

class PlaySongVC: UIViewController {

    private var _selectedSong:String!
    
    var selectedSong:String {
    
        get  {
         return _selectedSong  }
        set {
        _selectedSong = newValue
        }

    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

       SongTitleLbl.text = _selectedSong
    }

    @IBOutlet weak var SongTitleLbl: UILabel!
    @IBAction func Backbtnpressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
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
