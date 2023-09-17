//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var stories = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let firstStory: Story = stories.getStoryById(id: 0)
        
        storyLabel.text = firstStory.title
        choice1Button.setTitle(firstStory.choice1, for: .normal)
        choice2Button.setTitle(firstStory.choice2, for: .normal)
        
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        
        stories.nextStory(userChoice: sender.tag)
        updateUI()
    }
    
    func updateUI() {
        let index = stories.getIndex()
        let story = stories.getStoryById(id: index)
        
        storyLabel.text = story.title
        choice1Button.setTitle(story.choice1, for: .normal)
        choice2Button.setTitle(story.choice2, for: .normal)
        
        choice1Button.tag = story.choice1Destination)
        choice2Button.tag = story.choice2Destination)
    }
    
}

