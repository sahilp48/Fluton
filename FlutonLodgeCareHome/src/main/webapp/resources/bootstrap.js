


// var msg="";
// window.Parsley.addValidator('firstname', {
   
//     validateString: function(value) {
        
//        let status=true;
//       if(!/^[a-z-_]+$/.test(value)){
//         // return true == (/^[a-z-_]+$/.test(value));
//         status=false;
//         msg="only aplhabets allowed";
//       }
//       return true == status;
//     },
//     messages: {
//       en: msg
//     }
    
//   });


// window.Parsley.addValidator('firstname', {
//     validateString: function(value) {

        
//       return true == (/^[a-z-_]+$/.test(value));
//     },
//     messages: {
//       en: 'Only alphabetic letters allowed.'
//     }
    
//   });

//   window.Parsley.addValidator('firstname', {
//     validateString: function(value) {
//       return value.length>5;
//     },
//     messages: {
//       en: 'length should be greater'
//     }
//   });
  
 
  
// Add the following code if you want the name of the file appear on select
$(".custom-file-input").on("change", function () {
    var fileName = $(this).val().split("\\").pop();
    $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
});

//Show File name in Textbox
$(document).ready(function () {
    $('.custom-file-input input[type="file"]').change(function (e) {
        $(this).siblings('input[type="text"]').val(e.target.files[0].name);
    });
});
  

//date validation

var date = new Date();
var dd = date.getDate();
var mm = date.getMonth() + 1;
var yyyy = date.getFullYear();

if (dd < 10) {
    dd = '0' + dd;
}
if (mm < 10) {
    mm = '0' + mm;
}

date = yyyy + '-' + mm + '-' + dd;

document.getElementById("dateOfBirth").setAttribute("max", date);

function dateValidation() {
    var dob = document.getElementById("dateOfBirth").value;
    document.getElementById("dateOfDeath").setAttribute("min", dob);
    document.getElementById("dateOfDeath").setAttribute("max", date);
    var death = document.getElementById("dateOfDeath").value;
    document.getElementById("serviceStartDate").setAttribute("min", dob);
    document.getElementById("serviceStartDate").setAttribute("max", death);
    var serviceStart = document.getElementById("serviceStartDate").value;
    document.getElementById("serviceEndDate").setAttribute("min", serviceStart);
    document.getElementById("serviceEndDate").setAttribute("max", death);
}



 