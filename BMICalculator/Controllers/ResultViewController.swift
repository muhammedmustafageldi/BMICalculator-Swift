import UIKit

class ResultViewController: UIViewController {
    
    var bmi: BMI?

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let formattedValue = String(format: "%.1f", bmi?.value ?? 0.0)

        bmiLabel.text = formattedValue
        adviceLabel.text = bmi?.advice ?? "An error occurred."
        view.backgroundColor = bmi?.color ?? .black
        
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }

}
