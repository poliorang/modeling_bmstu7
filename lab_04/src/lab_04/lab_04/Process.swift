//
//  Process.swift
//  lab_04
//
//  Created by Polina Egorova on 26.11.2023.
//

class Process {
    var a = 0.0
    var b = 1.0
    let generator: EvenDistribution
    
    var mu = 4.0
    var sigma = 0.2
    let processor: NormalDistribution
    
    var total_tasks = 1000
    var repeat_percentage = 0
    var step = 0.01
    
    var answerStep = 0
    var answerEvent = 0
    init(a: Double, b: Double, mu: Double, sigma: Double, total_tasks: Int, repeat_percentage: Int, step: Double) {
        self.a = a
        self.b = b
        generator = EvenDistribution(a: a, b: b)
        
        self.mu = mu
        self.sigma = sigma
        processor = NormalDistribution(mu: mu, sigma: sigma)
        
        self.total_tasks = total_tasks
        self.repeat_percentage = repeat_percentage
        self.step = step
    }
    
    func getAnswers() -> (Int, Int) {
        answerEvent = eventModel(generator, processor, total_tasks, repeat_percentage)
        answerStep = stepModel(generator, processor, total_tasks, repeat_percentage, step)
        
        return (answerEvent, answerStep)
    }
}
