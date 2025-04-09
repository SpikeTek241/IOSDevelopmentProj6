///Users/kevinjerome/Documents/Documents - Kevin's MacBook Air (2)/Github Projects/VSC Education/Xcode:CodePath/ios101-project6-tumblr-starter/ios101-project6-tumblr/DetailViewController.swift
//  DetailViewController.swift
//  ios101-project6-tumblr
//
//  Created by Kevin Jerome on 4/7/25.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var captionTextView: UITextView!
    
    var post: Post!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        captionTextView.isEditable = false
        title = "Post Detail"
        
        print("Post caption: \(post.caption)")
        
        if let url = post.photoURL{
            Nuke.loadImage(with: url, into: photoImageView)
        }
        if let data = post.caption.data(using: String.Encoding.utf8) {
            let options: [NSAttributedString.DocumentReadingOptionKey: Any] = [
                .documentType: NSAttributedString.DocumentType.html,
                .characterEncoding: String.Encoding.utf8.rawValue
            ]

            do {
                let attributedString = try NSAttributedString(data: data, options: options, documentAttributes: nil)
                captionTextView.attributedText = attributedString
            } catch {
                print("❌ Failed to decode HTML: \(error)")
                captionTextView.text = post.caption // fallback
            }
        }

        // Do any additional setup after loading the view.
        captionTextView.attributedText = try? NSAttributedString(
            data: Data(post.caption.utf8),
            options: [.documentType: NSAttributedString.DocumentType.html],
            documentAttributes: nil
        )

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
