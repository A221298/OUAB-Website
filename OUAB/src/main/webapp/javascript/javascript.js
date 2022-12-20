// (1) function used in onmousedown, onmouseup
function gradientBtn(btn, light, dark) {
      btn.style.background = "linear-gradient(to left, " + light + "," + dark + ")";
}

// (2) function used in onkeydown
function changeBr(field, clr) {
      field.style.borderColor = clr;
}

// (3) function used in onsubmit and onrest
function confirmation(option) {
	switch(option){
            case 1:
                  confirm("Are you sure you want to submit the form?");
                  break;
            case 2:
                  confirm("Are you sure you want to clear all fields?");
                  break;
      }
}

// (4) function used in onblur, onfocus
function hint(field, messageNum) {
      var hintArray = [ "hint: must choose between Male or Female", // hint 0
                        "hint: enter a unique username (only uppercase and lowercase letters allowed)", // hint 1
                        "hint: your email address should be in a format similar to: book@gmail.com", // hint 2
                        "hint: your password must have at least 8 characters (including a number and a letter uppercase or lowercase) without spaces", // hint 3
                        "hint: the re-entered password should match the password above", // hint 4
                        "hint: check this box to agree to our terms", // hint 5
                        "hint: click this button when you ready to register", // hint 6
                        "hint: click this button to clear the form", // hint 7
                        "" ]; // hint 8
      if (messageNum != 8) {
         field.style.background = "#f5f5f5";
         field.style.borderColor = "#eee";
      } else {
         field.style.background = "#fff";
         field.style.borderColor = "#fff";
      }
      field.innerHTML= hintArray[messageNum];
}
