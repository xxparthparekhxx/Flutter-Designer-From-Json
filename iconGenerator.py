with open("icons.txt","r")as f:
    
    lines = f.readlines();
    

with open("icon_parser.dart","a") as f: 
    f.write("switch(nav){\n")
    for ele in lines:
        ele = ele.strip()
        if ele.startswith("static"):
            f.write("case '"+ ele.split(" ")[3]+"':\n")
            f.write("return const Icon(Icons."+ele.split(" ")[3]+");\n")

