resource "null_resource" "example1" { 
  provisioner "local-exec" { 
     command = "find ." 
     interpreter = ["sh", "-c"]    
  } 
}
resource "null_resource" "example2" { 
  provisioner "local-exec" { 
     command = "ls" 
     interpreter = ["sh", "-c"]    
  } 
}
resource "null_resource" "example3" { 
  provisioner "local-exec" { 
     command = "df" 
     interpreter = ["sh", "-c"]    
  } 
}
resource "null_resource" "example4" { 
  provisioner "local-exec" { 
     command = "ls" 
     interpreter = ["sh", "-c"]    
  } 
}
resource "null_resource" "example5" { 
  provisioner "local-exec" { 
     command = "pwd" 
     interpreter = ["sh", "-c"]    
  } 
}
resource "null_resource" "example6" { 
  provisioner "local-exec" { 
     command = "ls" 
     interpreter = ["sh", "-c"]    
  } 
}
resource "null_resource" "example7" { 
  provisioner "local-exec" { 
     command = "find ." 
     interpreter = ["sh", "-c"]    
  } 
}
resource "null_resource" "example8" { 
  provisioner "local-exec" { 
     command = "ls -a" 
     interpreter = ["sh", "-c"]    
  } 
}
resource "null_resource" "example9" { 
  provisioner "local-exec" { 
     command = "df" 
     interpreter = ["sh", "-c"]    
  } 
}
resource "null_resource" "example10" { 
  provisioner "local-exec" { 
     command = "pwd" 
     interpreter = ["sh", "-c"]    
  } 
}
