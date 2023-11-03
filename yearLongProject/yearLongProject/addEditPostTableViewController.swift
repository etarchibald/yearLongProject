//
//  addEditPostTableViewController.swift
//  yearLongProject
//
//  Created by Ethan Archibald on 11/3/23.
//

import UIKit

protocol AddPostDelegate {
    func newPost(userName: String, date: Date, title: String, body: String, comment: String)
}

class addEditPostTableViewController: UITableViewController {

    @IBOutlet weak var UserNameTextField: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var bodyTextView: UITextView!
    @IBOutlet weak var commentTextField: UITextField!
    
    var delegate: AddPostDelegate?
    
    var post: PostInfo?
    
    required init?(coder: NSCoder, post: PostInfo?) {
        super.init(coder: coder)
        self.post = post
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
    }
    
    func updateView() {
        guard let post = post else { return }
        
        UserNameTextField.text = post.user
        datePicker.date = post.date
        titleTextField.text = post.title
        bodyTextView.text = post.bodyText
        commentTextField.text = post.comments
    }
    
    
    @IBAction func saveButtonTapped(_ sender: UIBarButtonItem) {
        guard let userName = UserNameTextField.text,
              let date = datePicker?.date,
              let title = titleTextField.text,
              let body = bodyTextView.text,
              let comment = commentTextField.text else { return }
        
        delegate?.newPost(userName: userName, date: date, title: title, body: body, comment: comment)
        
        self.navigationController?.popViewController(animated: true)
        
    }
    
}
