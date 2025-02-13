import UIKit

struct CalculatorBrain {
    
    private var bmi: BMI?
    
    func getCalculatedBmi() -> BMI? {
        return bmi
    }
    
    mutating func calculateBmi(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        switch bmiValue {
            case ..<18.5:
                bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
            case 18.5...24.9:
                bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
            default:
                bmi = BMI(value: bmiValue, advice: "Eat less cake!", color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
        }
    }
    
}
