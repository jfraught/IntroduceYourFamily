//
//  ViewController.swift
//  IntroduceYourFamily
//
//  Created by Jordan Fraughton on 2/8/24.
//

import UIKit

class FamilyViewController: UIViewController {

    @IBOutlet var juliButton: UIButton!
    @IBOutlet var williamButton: UIButton!
    @IBOutlet var allieButton: UIButton!
    @IBOutlet var jordanButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = false
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else { return }

        switch segue.identifier {
        case "ShowFamilyMember":
            guard let familyMemberVC = segue.destination as? FamilyMemberViewController else { return }
            var familyMember: FamilyMember? = nil

            switch sender {
            case juliButton:
                familyMember = .juli
                familyMemberVC.image = .julianna
            case williamButton:
                familyMember = .william
                familyMemberVC.image = .will
            case allieButton:
                familyMember = .allie
                familyMemberVC.image = .allie
            case jordanButton:
                familyMember = .jordan
                familyMemberVC.image = .jordan
            default:
                break
            }

            familyMemberVC.name = familyMember?.rawValue.capitalized ?? "No name found"
            familyMemberVC.bio = familyMember?.biography ?? "No biography found"
        default:
            break
        }
    }

    @IBAction func juliButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "ShowFamilyMember", sender: juliButton)
    }

    @IBAction func williamButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "ShowFamilyMember", sender: williamButton)
    }
    
    @IBAction func allieButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "ShowFamilyMember", sender: allieButton)
    }
    
    @IBAction func jordanButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "ShowFamilyMember", sender: jordanButton)
    }
}

