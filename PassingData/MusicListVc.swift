//
//  MusicListVc.swift
//  PassingData
//
//  Created by Shehryar Khan on 26.05.17.
//  Copyright © 2017 Shehryar Khan. All rights reserved.
//

import UIKit

class MusicListVc: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func BackBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func PlaySongPressed(_ sender: Any) {
        let SongTitle = "Some time we are together"
        performSegue(withIdentifier: "PlaySongVC", sender: SongTitle)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? PlaySongVC {
            
            if let song = sender as? String {
                destination.selectedSong = song }
        
        }
    }

}
