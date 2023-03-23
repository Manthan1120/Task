//
//  ViewController.swift
//  Task
//
//  Created by R86 on 14/03/23.
//

import UIKit

class ViewController: UIViewController ,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{

    

    @IBOutlet weak var collectionView3: UICollectionView!
    @IBOutlet weak var collectionView2: UICollectionView!
    @IBOutlet weak var collectionView1: UICollectionView!
    
    var arrForCollectionView1 = [1,2,3,4,5,6,7,8,9]
    var arrForCollectionView2 = [10,11,12,13,14,15,16,17,18]
    var arrForCollectionView3 = [19,20,21,22,23,24,25,26,27]
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.collectionView1 {
            return arrForCollectionView1.count
        }
        else if collectionView == self.collectionView2 {
            return arrForCollectionView2.count
        }
        else {
            return arrForCollectionView3.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.collectionView1 {
            let cell1 = collectionView1.dequeueReusableCell(withReuseIdentifier: "cell1", for: indexPath) as! MyCollectionViewCell1
            cell1.image1.image = UIImage(named: "\(arrForCollectionView1[indexPath.row])")
            return cell1
        }
        else if collectionView == self.collectionView2{
            let cell2 = collectionView2.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath) as! MyCollectionViewCell2
            cell2.image2.image = UIImage(named: "\(arrForCollectionView2[indexPath.row])")
            return cell2
        }
        else {
            let cell3 = collectionView3.dequeueReusableCell(withReuseIdentifier: "cell3", for: indexPath) as! MyCollectionViewCell3
            
            cell3.image3.image = UIImage(named: "\(arrForCollectionView3[indexPath.row])")
            return cell3
        }
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 125, height: 150)
    }
}

