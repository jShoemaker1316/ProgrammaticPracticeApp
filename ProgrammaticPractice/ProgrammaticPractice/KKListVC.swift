//
//  KKListVC.swift
//  ProgrammaticPractice
//
//  Created by Jonathan Shoemaker on 8/13/20.
//  Copyright © 2020 JonathanShoemaker. All rights reserved.
//

import UIKit

class KKListVC: UIViewController {
    
    var tableView = UITableView()
    var albums: [Album] = []
    
    struct Cells {
        static let albumCell = "AlbumCell"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Potential K.K. Songs"
        albums = fetchData()
        configureTableView()

        // Do any additional setup after loading the view.
    }
    
    func configureTableView() {
        view.addSubview(tableView)
        //set delegates
        setTableViewDelegates()
        //set row height
        tableView.rowHeight = 100
        //register cells
        tableView.register(AlbumCell.self, forCellReuseIdentifier: Cells.albumCell)
        //set constrainst
        tableView.pin(to: view)
    }
    
    func setTableViewDelegates() {
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension KKListVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return albums.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: Cells.albumCell) as! AlbumCell
        let album = albums[indexPath.row]
        cell.set(album: album)
        
        return cell
    }
}

extension KKListVC {
    
    func fetchData() -> [Album] {
        let record1 = Album(image: Images.artSliders, title: "Art Sliders")
        let record2 = Album(image: Images.famousMonsters, title: "Famous Monsters")
        let record3 = Album(image: Images.fromUnderTheBellTree, title: "From Under the Bell Tree")
        let record4 = Album(image: Images.guider, title: "Guider")
        let record5 = Album(image: Images.kRotica, title: "K-Rotica")
        let record6 = Album(image: Images.kk83, title: "K.K. 83")
        let record7 = Album(image: Images.kkCity, title: "K.K. City")
        let record8 = Album(image: Images.kkConformity, title: "K.K. Conformity")
        let record9 = Album(image: Images.kkDeon, title: "K.K. Deon")
        let record10 = Album(image: Images.kkGoesToCollege, title: "K.K. Goes To College")
        let record11 = Album(image: Images.kkMetal, title: "K.K. Metal")
        let record12 = Album(image: Images.kkOldTown, title: "K.K. Old Town")
        let record13 = Album(image: Images.kkSeason, title: "K.K. Season")
        let record14 = Album(image: Images.kkSlaiden, title: "K.K. Slaiden")
        let record15 = Album(image: Images.kkStripes, title: "K.K. Stripes")
        let record16 = Album(image: Images.kkTrippy, title: "K.K. Trippy")
        let record17 = Album(image: Images.kkZombie, title: "K.K. Zombie")
        let record18 = Album(image: Images.lionKK, title: "Lion K.K.")
        let record19 = Album(image: Images.makeRoom, title: "Make Room")
        let record20 = Album(image: Images.noStringsAttached, title: "No Strings Attached")
        let record21 = Album(image: Images.onlyADog, title: "Only a Dog")
        let record22 = Album(image: Images.prayForTheWicked, title: "Pray For the Wicked")
        let record23 = Album(image: Images.rhapsody, title: "Rhapsody")
        let record24 = Album(image: Images.saturation3, title: "Saturation 3")
        let record25 = Album(image: Images.sliders, title: "Sliders")
        let record26 = Album(image: Images.smokeAndMirrors, title: "Smoke and Mirrors")
        let record27 = Album(image: Images.surfingWithTheDog, title: "Surfing With the Dog")
        let record28 = Album(image: Images.teenageDreams, title: "Teenage Dream")
        
        return [record1, record2, record3, record4, record5, record6, record7, record8, record9, record10, record11, record12, record13, record14, record15, record16, record17, record18, record19, record20, record21, record22, record23, record24, record25, record26, record27, record28]
    }
}
