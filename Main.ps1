<#
1- Given a value 

2- return the sum.

#Bonus Elements
*Limit the length of the number to 10 digits.
*Include Verbose output to show the operation
*Write a variation on the function that writes an object to the pipeline 
 that shows the original number, the number of individual elements and the sum.


 **Advanced 
 functions that will return a unique, and ordered list of sums based
 on the array. The array should have no more than 
 9 elements and use values 1-9 im the array.
#Bonus Elements
*Add parameter validation on the array length
*Include Verbose output to show the operation

#>

#Variables 
$Tab = [System.Collections.ArrayList]::new()
[int]$Sum

<#
.SYNOPSIS
functions that will return a unique, and ordered list of sums based
 on the array.

.DESCRIPTION
The array should have no more than 
 9 elements and use values 1-9 im the array.

.PARAMETER myarray
int array

.EXAMPLE
An example

.NOTES
General notes
#>#
function ListOfSum {
    param (
        [System.Collections.ArrayList]$myarray
    )
    #Verification of the length
    if (IsValidArray($myarray)) {
        #TODO: find all the sums possible

    }



    #Show all the Sums
    foreach ($num in $myarray) {
        
    }

}
function GetTotalSum {
    
    Write-Host "Please insert a number : " -NoNewline
    $value = Read-Host

    #give the condition for respect the limitation
    if ( $value.Length -gt 10 ) {
        Write-Host "Please enter a number more than 1 digit and less than 10 digits included !"
        Start-Sleep -Seconds 1
        [int]$value = Read-Host
    } 

    #split the string in char array
            $value = $value -as [string]
            $Tab = $value.ToCharArray()

    # Convert to int array
            $c = foreach($number in $Tab) {
                    try {
                        [int]::parse($number)
                    }
                    catch {
                        Invoke-Expression -Command $number;
                    }
                } 

    # Return the sum of all the Digits.
        $Sum = 0
        for ($i = 0; $i -le $c.Count; $i++) {
            $Sum += $c[$i]
           
        }   
        Write-Host "The sum of all the digits : "$Sum
    
}

function IsValidArray {
    param (
        [System.Collections.ArrayList]$myarray
    )
    if ($myarray.Count -gt 9 -or $myarray.Count -lt 1) {
        return False
    }
    else {
        return True
    }
}

GetTotalSum
