
enum Choice {
    case rock
    case paper
    case scissors
    
    var all: [Choice] {
        return [.rock, .paper, .scissors]
    }
    
    func generateSelection() -> Choice {
        guard let choice = all.randomElement() else {
            return .rock
        }
        return choice
    }
}

enum Outcome {
    case draw
    case win
    case lose
}

func playRockPaperScissors(choice: Choice) -> Outcome {
    let computerChoice = choice.generateSelection()
    switch (choice, computerChoice) {
    case (.paper, .rock),
        (.scissors, .paper),
        (.rock, .scissors):
        return .win
    case (.rock, .paper),
        (.paper, .scissors),
        (.scissors, .rock):
        return .lose
    default: return .draw
    }
}

let result = playRockPaperScissors(choice: .paper)
print(result)
