#function details
def mutate_string(string, position, character):
    
    l=list(string)
    l[position]=character
    string=''.join(l)
    
    print(string)  

#read inputs
string="abracadabra"
position=5
character='k'

#execute the function
mutate_string(string, position, character)
