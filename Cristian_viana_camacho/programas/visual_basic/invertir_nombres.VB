Sub nombre_invertido()
    Dim es As Integer
    es = InputBox("ingrese el numero de estudiantes")
    Dim i As Integer
    For i = 1 To es
        Name = InputBox("ingrese un nombre")
        Dim nu As Integer
        nu = Len(Name)
        Dim acu As String
        acu = " "
        Dim c As Integer
        For c = nu To 1 Step -1
            alr = Mid(Name, c, 1)
            acu = acu + alr
        Next c
        MsgBox "su nombre invertido es: " & acu
    Next i
        
End Sub
