.Timetables | .[] | select(.AcademicalYear >= "2022/2023").BelongingClass.Class |  if(.ClassYear >= 4 and .ClassCode == "C") then(.BelongsTo | .[] | .Name.cs) else (empty) end
