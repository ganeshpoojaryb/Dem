*** Test Cases ***
Looping
    @{str} =    create list    Ganesh
    @{lst} =    create list    10    20    30    40
    FOR    ${i}    IN     @{str}
        log    ${i}
#        exit for loop if    ${i} == 30
    END
#    log    ${i}
