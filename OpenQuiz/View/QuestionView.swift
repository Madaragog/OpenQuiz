//
//  QuestionView.swift
//  OpenQuiz
//
//  Created by Cedric on 04/06/2019.
//  Copyright © 2019 Cedric. All rights reserved.
//

import UIKit

class QuestionView: UIView {
    
    @IBOutlet private var label: UILabel!
    @IBOutlet private var icon: UIImageView!
    
    enum Style {
        case correct, incorrect, standard
    }
    
    var style: Style = .standard {
        didSet {
            setStyle(style)
        }
    }
    
    private func setStyle(_ style: Style) {
        switch style {
        case .correct:
            backgroundColor = UIColor(displayP3Red: 200/255.0, green: 236/255.0, blue: 160/255.0, alpha: 1)
            icon.image = UIImage(named: "Icon Correct")
            icon.isHidden = false
        case .incorrect:
            backgroundColor = #colorLiteral(red: 0.9526148438, green: 0.5315337777, blue: 0.5782644153, alpha: 1)
            icon.image = UIImage(named: "Icon Error")
            icon.isHidden = false
        case .standard:
            backgroundColor = #colorLiteral(red: 0.7496449351, green: 0.7689861059, blue: 0.7860563397, alpha: 1)
            icon.isHidden = true
        }
    }
    
    var title = "" {
        didSet {
            label.text = title
        }
    }
}
