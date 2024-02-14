//
//  FamilyMemberViewController.swift
//  IntroduceYourFamily
//
//  Created by Jordan Fraughton on 2/13/24.
//

import UIKit

class FamilyMemberViewController: UIViewController {

    var name = ""
    var image: UIImage? = nil
    var bio = ""

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var familyMemberImage: UIImageView!
    @IBOutlet var bioLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = name
        familyMemberImage.image = image
        bioLabel.text = bio
    }
}
