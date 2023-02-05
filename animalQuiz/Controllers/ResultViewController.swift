import UIKit

class ResultViewController: UIViewController {
    @IBOutlet var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        updateLabel()
    }
    private func updateLabel() {
        
    }
}

