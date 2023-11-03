//
//  PostsTableViewController.swift
//  yearLongProject
//
//  Created by Ethan Archibald on 10/26/23.
//

import UIKit

class PostsTableViewController: UITableViewController {
    
    var arrayOfPosts = [
        PostInfo(title: "Favorite Food?", bodyText: "Most under rated Food is steak well done!", date: Date(), user: "Ste@kGuy", comments: "I would argue with you but you're still chewing"),
        PostInfo(title: "Lamp", bodyText: "Lamp Post", date: Date(), user: "Moth", comments: "Lamp"),
        PostInfo(title: "Favorite Sport?", bodyText: "Volley Ball ALL THE WAY!", date: Date(), user: "NotTenni$", comments: "Indeed a wise choice"),
        PostInfo(title: "Good songs!", bodyText: "I am looking to update my playlist, any Suggestions?", date: Date(), user: "Post Malone", comments: "Anything buy Juice WRLD or Eminem"),
        PostInfo(title: "I got a new Car!", bodyText: "Guess who just got a brand new Pourche 911!", date: Date(), user: "RealCarGuy", comments: "You can do many things with parents money"),
        PostInfo(title: "Looking for a job", bodyText: "I am looking for work somewhere, If you know anybody know were to go?", date: Date(), user: "Average John", comments: "Anyone looking for work should consider the fighters guild, I hear they are always looking for new recruits"),
        PostInfo(title: "Subway is Gross", bodyText: "I keep on going but every time I just don't like it", date: Date(), user: "FoodE", comments: "My brother in Christ you made the sandwich"),
        PostInfo(title: "Hey Batman", bodyText: "Look Batman! I bought Airforce 1s Batman! Look my toes! I crunched the front batman!", date: Date(), user: "TheRealJOker", comments: "NO JOKER! YOU'RE CREASING THEM!"),
        PostInfo(title: "Favorite Restaraunt?", bodyText: "I am curious what everyones favorite restaunt is?", date: Date(), user: "TheCuriousMan", comments: "It always depends on how much mony I am willing to spend"),
        PostInfo(title: "Last Post", bodyText: "Last one best one", date: Date(), user: "Quote", comments: "Never got the point of that one")
    ]
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfPosts.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "postIdentifier", for: indexPath) as! PostsTableViewCell
        
        let post = arrayOfPosts[indexPath.row]
        
        
        
        cell.BodyTextLabel.layer.borderColor = UIColor.gray.cgColor
        cell.BodyTextLabel.layer.borderWidth = 2.0
        
        
        cell.titleLabel.text = post.title
        cell.BodyTextLabel.text = post.bodyText
        cell.commentLabel.text = "\"\(post.comments)\""
        cell.dateLabel.text = post.date.formatted(date: .abbreviated, time: .omitted)
        cell.usernameLabel.text = post.user
        
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tvc = segue.destination as? addEditPostTableViewController else { return }
        
        tvc.delegate = self
    }
    
    @IBSegueAction func addPost(_ coder: NSCoder, sender: Any?) -> addEditPostTableViewController? {
        return addEditPostTableViewController(coder: coder, post: nil)
    }
    
    @IBSegueAction func editPost(_ coder: NSCoder, sender: Any?) -> addEditPostTableViewController? {
        guard let cell = sender as? UITableViewCell, let indexPath = tableView.indexPath(for: cell) else { return nil }
        
        let post = arrayOfPosts[indexPath.row]
        
        return addEditPostTableViewController(coder: coder, post: post)
    }
    
}

extension PostsTableViewController: AddPostDelegate {
    func newPost(userName: String, date: Date, title: String, body: String, comment: String) {
        if let selected = tableView.indexPathForSelectedRow {
            arrayOfPosts[selected.row] = PostInfo(title: title, bodyText: body, date: date, user: userName, comments: comment)
        } else {
            arrayOfPosts.insert(PostInfo(title: userName, bodyText: body, date: date, user: userName, comments: comment), at: arrayOfPosts.startIndex)
        }
        tableView.reloadData()
    }
}
