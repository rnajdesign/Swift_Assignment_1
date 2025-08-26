import UIKit

func celsiusToFahrenheit(celsius: Double) -> Double {
    return (celsius * 9/5) + 32
}
print(celsiusToFahrenheit(celsius: 0))

func categorizeTemperature(celsius: Double) -> String {
    if celsius < 0 {
        print("Warning: Freezing temperature!")
        return "Cold"
    } else if celsius < 5 {
            return "Cold"
    } else if celsius >= 5 && celsius <= 12 {
            return "Cool"
    } else if celsius >= 13 && celsius <= 24 {
            return "Warm"
    } else {
            print("Warning: Heatwave!")
            return "Hot"
    }
}

func analyzeTemperatures(samples: [Int]) {
    var sum = 0

    for temp in samples {
        let category = categorizeTemperature(celsius: Double(temp))
        print("\(temp)°C is \(celsiusToFahrenheit(celsius: Double(temp)))°F -> \(category)")
        sum += temp
    }
    let average = Double(sum) / Double(samples.count)
    print("Average temperature: \(average)°C / \(celsiusToFahrenheit(celsius: average))°F")
}
    let exampleTemps = [ -2, 0, 3, 6, 10, 13, 18, 22, 27, 32 ]
   
    
    analyzeTemperatures(samples: exampleTemps)

