mov ecx, [some_array_size] ; Get the size of the array
mov edx, ecx ;Keep the size in edx for subtraction comparison
sub edx, 1 ; adjust size for 0 based indexing
cmp ecx, 0 ; Check for zero length array
je zero_length_array
cmp ecx, [array_index];Check array bounds
jl out_of_bounds ; jump if below 0
jg out_of_bounds; jump if greater than size
mov eax, [ebx+ecx*4] ; Access array element only if index is valid
jmp next_instruction
zero_length_array:
;handle zero length array condition
jmp next_instruction
out_of_bounds:
;handle out of bounds condition
next_instruction:
;continue execution