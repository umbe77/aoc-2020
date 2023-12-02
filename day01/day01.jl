
isTest = ARGS[1]
test = ""
if isTest == "1"
    test = "_test"
end


expenses = readlines("input_1$(test).txt")

function part1(exps)
    res = 0
    found = false

    for a in exps
        if found
            break
        end
        expense = parse(Int32, a)
        for b in expenses
            chkexp = parse(Int32, b)
            if expense + chkexp == 2020
                found = true
                res = expense * chkexp
            end
        end
    end

    print("Part 1: $(res)\n")

end

function part2(exps)
    res = 0
    found = false

    for a in exps
        if found
            break
        end
        expense = parse(Int32, a)
        for b in expenses
            if found
                break
            end
            chkexp = parse(Int32, b)
            for c in expenses
                chkexp2 = parse(Int32, c)
                if expense + chkexp + chkexp2 == 2020
                    found = true
                    res = expense * chkexp * chkexp2
                end
            end
        end
    end

    print("Part 2: $(res)\n")

end

part1(expenses)
part2(expenses)
