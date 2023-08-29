let levels = 10;
let freeLevels = 4;
let bonusLevels = 3;

for level in 1...levels{
    if level == bonusLevels{
        print("Skipped bonus level \(bonusLevels).")
        continue
    }
    print("Level has been played: \(level)")
    if level == freeLevels {
        print("You have reached the maximum \(freeLevels) levels")
        print("Buy premium the play other \(levels - freeLevels) level. ")
        break
    }
}
