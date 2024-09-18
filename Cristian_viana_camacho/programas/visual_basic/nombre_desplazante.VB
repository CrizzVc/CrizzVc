sub programa()
    nombrei = Cells(2,2)
    i = 1
    For j = 2 To 9
        i = i + 1
        Cells(j, j) = nombrei
        For k = 1 to 10000000
        next k
        Cells(j - 1, i - 1) = ""
    next j

    For c = 9 To 2 Step -1
        Cells(c, 9) = nombrei
        For k = 1 to 10000000
        next k
        Cells(c + 1, 9) = ""
    next c

    For n = 9 To 2 Step -1
        Cells(2, n) = nombrei
        For k = 1 to 10000000
        next k
        Cells(2, n + 1) = ""
    next 
    
end sub