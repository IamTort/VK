//
//  FriendsViewController.swift
//  Pozolotina_VK
//
//  Created by angelina on 21.04.2022.
//

import UIKit

var friends = [
    User(image: UIImage(named: "ava")!, name: "Nikita"),
    User(image: UIImage(named: "ava")!, name: "Stepan"),
    User(image: UIImage(named: "ava")!, name: "Anna"),
    User(image: UIImage(named: "ava")!, name: "Angelina")
]

var sortedFriends = [Character: [User]]()

extension FriendsViewController: UITableViewDelegate {
    // провоцирует двойной переход
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        performSegue(withIdentifier: "checkPhoto", sender: indexPath)
//    }
}

extension FriendsViewController: UITableViewDataSource {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sortedFriends = sort(friends: friends)
       
   }
  
   private func sort(friends: [User]) -> [Character: [User]] {
       
       var friendsDict = [Character: [User]]()
       
       friends.forEach() { friend in
           
           guard let firstChar = friend.name.first else {return}
           
           if var thisCharFriend = friendsDict[firstChar] {
               thisCharFriend.append(friend)
               friendsDict[firstChar] = thisCharFriend
           } else {
               friendsDict[firstChar] = [friend]
           }
       }
    return friendsDict
}
   

    func numberOfSections(in tableView: UITableView) -> Int {
       // #warning Incomplete implementation, return the number of sections
       return sortedFriends.keys.count
   }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
       let keysSorted = sortedFriends.keys.sorted()
       let friends = sortedFriends[keysSorted[section]]?.count ?? 0
       
       return friends
   }

   //выводит инфу на экран
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

       guard let cell = tableView.dequeueReusableCell(withIdentifier: "FriendsCell", for: indexPath) as? FriendsCell else {
           preconditionFailure("Error")
       }

       let firstChar = sortedFriends.keys.sorted()[indexPath.section]
       let friends = sortedFriends[firstChar]!
       
       let friend: User = friends[indexPath.row]
       
       cell.friendsName.text = friend.name
       cell.friendsImageView.image =  friend.image

       return cell
   }
   
    //функция добавляет переход через код, а не с помощью сториборда, без него не работает переход
//     func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        performSegue(withIdentifier: "checkPhoto", sender: indexPath)
//    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "checkPhoto",
            let destination = segue.destination as? PhotoController,
            let indexPath = tableView.indexPathForSelectedRow {

            //destination.friendsName = friends[indexPath.row].name
            destination.friends.append(friends[indexPath.row])
        }
    }
   
    func tableView(_: UITableView, titleForHeaderInSection section: Int) -> String? {
       String(sortedFriends.keys.sorted()[section])
    }

}

class FriendsViewController: UIViewController {

    @IBOutlet weak var words: WeekDayPicker!
    @IBOutlet weak var tableView: UITableView!
    
}
