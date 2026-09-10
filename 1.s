li a0, 5 #a
li a1, 2 #b
li a2, 0 #x

bge a1, a0, else
sub a2, a0, a1
j end
else:
sub a2, a1, a0
end: