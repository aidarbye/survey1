import UIKit

class ResultViewController: UIViewController {
    @IBOutlet var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        updateLabel()
    }
    private func updateLabel() {
        var answer: [AnimalType: Int] = [:]
        let animals = answerChosen.map { $0.type }
        animals.forEach {
            if let answerCount = answer[$0] {
                answer.updateValue(answerCount + 1, forKey: $0)
            } else {
                answer[$0] = 1
            }
        }
        let sorted = answer.sorted {$0.value > $1.value}
        guard let most = sorted.first?.key else { return }
        resultLabel.text = "Вы \(most.rawValue)!"
    }
}

