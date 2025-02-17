mov ecx, [some_size_var] ; Get size of the array
;Check if ecx is 0 to prevent division by 0 error
 cmp ecx, 0
je zero_size_handling

; Check that ecx is within the array bounds
cmp ecx, array_size 
jge out_of_bounds_handling

mov eax, [ebx+ecx*4] ; Access the array element

;... rest of code ...

zero_size_handling:
; Handle zero size array
jmp end_of_function

out_of_bounds_handling:
; Handle out of bounds access
jmp end_of_function
end_of_function: