//
//  PhotoController.swift
//  Pozolotina_VK
//
//  Created by angelina on 16.04.2022.
//

import UIKit

    private let reuseIdentifier = "Cell"
class PhotoController: UICollectionViewController {
    var friends = [PFriends]()
    var friendsName: String?
    var friendsImageView : UIImage?
    override func viewDidLoad() {
    
        super.viewDidLoad()
        // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = false
        
        // Register cell classes
       self.collectionView!.register(UICollectionViewCell.self,  forCellWithReuseIdentifier: "checkPhoto")

        // Do any additional setup after loading the view.
    }
    

//    @IBAction func checkPhoto(segue: UIStoryboardSegue) {
//        // Проверяем идентификатор, чтобы убедиться, что это нужный переход
//        if segue.identifier == "checkPhoto" {
//        // Получаем ссылку на контроллер, с которого осуществлен переход
//           if let friendsController = segue.source as? FriendsController,
//                // Получаем индекс выделенной ячейки
//            let indexPath = friendsController.tableView.indexPathForSelectedRow {
//               // Получаем город по индексу
//               let group = friendsController.friends[indexPath.row]
//                    // Проверяем, что такого города нет в списке
//
//                // Добавляем город в список выбранных городов
//                   friends.append(group)
//                print(friends)
//                // Обновляем таблицу
//                   collectionView.reloadData()
//
//            }
//        }
//    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return friends.count
    }
    
    

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PhotoCell", for: indexPath) as? PhotoCell else {
            preconditionFailure("Error")
        }
        
        //print(friends)
        // Configure the cell
        cell.photoImageView.image = friends[indexPath.row].image
        

        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}

