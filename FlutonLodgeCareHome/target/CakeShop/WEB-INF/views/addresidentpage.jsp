<!DOCTYPE html>
<html lang="en">

<head>
    <link rel="stylesheet" href="resources/bootstrap.css">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Myform</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/parsley.js/2.9.2/parsley.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
	
	<style>
	.errors{
	color: red;
	}
	</style>
</head>

<body>
    <div class="container-fluid head p-3">
        <label for="mainheadingLabel" id="mainheading">
            Fluton Lodge care Home
        </label>
    </div>
    <div class="container-fluid row my-3">
        <div class=" col-md-6 addresidentfont">
            <label for="addresidentlabel" id="residentlabel">
                &nbsp; &nbsp;&nbsp;Add Resident
            </label>
        </div>
        <div class="col-md-6 residentdashboard">
            <label for="dashboardLabel" id="dashboard">
                Resident Dashboard &emsp;
            </label>
        </div>
    </div>
    <div class="container-fluid greydiv">
    </div>
    <div class="errors">
    <div>${titleErrorMsg}</div>
            <div>${firstNameErrorMsg} </div>
            <div>${lastNameErrorMsg}</div>
            <div>${middleNameErrorMsg}</div>
            <div> ${maidenNameErrorMsg}</div>
            <div>${NamePreferenceErrorMsg}</div>
            <div>${residentStatusErrorMsg} </div>
            <div>${ResidentIdErrorMsg}</div>
            <div>${genderErrorMsg}</div>
            <div>${telephoneErrorMsg}</div>
            <div>${mobileErrorMsg}</div>
            <div>${address1ErrorMsg}</div>
            <div>${address2ErrorMsg}</div>
            <div> ${townErrorMsg}</div>
            <div>${postcodeErrorMsg}</div>
            <div>${countryErrorMsg}</div>
            <div>${nhsNumberErrorMsg}</div>


    </div>
    <div class="container-fluid">
        <label for="personaldetails" id="personaldetails">&ensp;Personal Details</label>
    </div>
   <!--  data-parsley-validate --> 
    <form id="demoform" action="viewdata"  modelAttribute="addresident" enctype="multipart/form-data">
        <div class="container-fluid row mb-4">
            <div class="col-md-4">
                <div class="form-group  row">
                    <div class="col-md-5 labelalignright">
                        <label for="" class="col-form-label "> Title <font class="star">*</font></label>
                    </div>
                    <div class="col-md-7">
                        <div class="input-group titleinput mb-1">
                            <select class="form-control"  data-parsley-errors-container="#titleerrormsg"
                                data-parsley-required-message="Please select a Title from the list" name="title"
                                id="titledropdown">
                                <option selected disabled value="">Select a Title</option>
                                <option value="Option 1">Option 1</option>
                                <option value="Option 2">Option 2</option>
                                <option value="Option 3">Option 3</option>
                            </select>
                            <label for="" class="col-form-label p-2"><i class="fa fa-info-circle"
                                    title="Select title"></i>
                            </label>
                        </div>
                        <div id="titleerrormsg">
                        </div>
                    </div>
                </div>

            </div>
            <div class="col-md-4 mb-1">
                <div class="form-group  row">
                    <div class="col-md-5 labelalignright">
                        <label for="" class="col-form-label"> First Name <font class="star">*</font></label>
                    </div>
                    <div class="col-md-7">
                        <div class="input-group mb-1">
                            <input type="text" data-parsley-errors-container="#firstnameerrormsg" data-parsley-required
                                data-parsley-required-message="Please provide first name" data-parsley-minlength="5" data-parsley-maxlength="20"
                                data-parsley-minlength-message="This Value is too short"
                                data-parsley-pattern="^[a-zA-Z]+$"
                                data-parsley-pattern-message="Only Aplhabets are allowed" class="form-control" name="firstName"
                                id="">
                            <label for="" class="col-form-label p-2"><i class="fa fa-info-circle"
                                    title="Enter First Name"></i>
                            </label>
                        </div>
                        <div id="firstnameerrormsg">

                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-1">
                <div class="form-group  row">
                    <div class="col-md-5 labelalignright">
                        <label for="" class="col-form-label"> Last Name <font class="star">*</font></label>
                    </div>
                    <div class="col-md-7">
                        <div class="input-group  mb-1">
                            <input type="text" data-parsley-errors-container="#lastnameerrormsg" data-parsley-required
                                data-parsley-required-message="Please provide last name" data-parsley-minlength="5"
                                data-parsley-minlength-message="This Value is too short"
                                data-parsley-pattern="^[a-zA-Z]+$"
                                data-parsley-pattern-message="Only Aplhabets are allowed" class="form-control" name="lastName">
                            <label for="" class="col-form-label p-2"><i class="fa fa-info-circle"
                                    title="Enter Last Name"></i>
                            </label>
                        </div>
                        <div id="lastnameerrormsg">

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid row mb-4">
            <div class="col-md-4 mb-1">
                <div class="form-group  row ">
                    <div class="col-md-5 labelalignright">
                        <label for="" class="col-form-label"> Middle Name </label>
                    </div>
                    <div class="col-md-7">
                        <div class="input-group ">
                            <input type="text" data-parsley-errors-container="#middlenameerrormsg"
                                data-parsley-minlength="5" data-parsley-minlength-message="This Value is too short"
                                data-parsley-pattern="^[a-zA-Z]+$"
                                data-parsley-pattern-message="Only Aplhabets are allowed" class="form-control" name="middleName"
                                id="" aria-describedby="helpId" placeholder="">
                            <label for="" class="col-form-label p-2"><i class="fa fa-info-circle"
                                    title="Enter Middle Name"></i>
                            </label>
                        </div>
                        <div id="middlenameerrormsg">

                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-1">
                <div class="form-group  row ">
                    <div class="col-md-5 labelalignright">
                        <label for="" class="col-form-label"> Maiden Name </label>
                    </div>
                    <div class="col-md-7">
                        <div class="input-group ">
                            <input type="text" class="form-control" data-parsley-errors-container="#maidennameerrormsg"
                                data-parsley-minlength="5" data-parsley-minlength-message="This Value is too short"
                                data-parsley-pattern="^[a-zA-Z]+$"
                                data-parsley-pattern-message="Only Aplhabets are allowed" name="maidenName" id=""
                                aria-describedby="helpId" placeholder="">
                            <label for="" class="col-form-label p-2"><i class="fa fa-info-circle"
                                    title="Enter Maiden Name"></i>
                            </label>
                        </div>
                        <div id="maidennameerrormsg">

                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group  row ">
                    <div class="col-md-5 labelalignright">
                        <label for="" class="col-form-label"> Name Preference</label>
                    </div>
                    <div class="col-md-7">
                        <div class="input-group ">
                            <input type="text" class="form-control"
                                data-parsley-errors-container="#namepreferenceerrormsg" data-parsley-minlength="5"
                                data-parsley-minlength-message="This Value is too short"
                                data-parsley-pattern="^[a-zA-Z]+$"
                                data-parsley-pattern-message="Only Aplhabets are allowed" name="namepreference" id="namepreference"
                                aria-describedby="helpId" placeholder="">
                            <label for="" class="col-form-label p-2"><i class="fa fa-info-circle text-light"
                                    title="Enter Name Preference"></i>
                            </label>
                        </div>
                        <div id="namepreferenceerrormsg">

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid row mb-4">
            <div class="col-md-6">
                <div class="form-group row ">
                    <div class="col-md-5 labelalignright">
                        <label for="" class="col-form-label"> Date Of Birth<font class="star">*</font></label>
                    </div>
                    <div class="col-md-7">
                        <div class="input-group birthddate">
                            <input type="date" data-parsley-errors-container="#dateofbirtherrormsg"
                                data-parsley-required data-parsley-required-message="Please provide valid date of birth"
                                class="form-control birth" name="dateOfBirth" id="dateOfBirth" onchange="dateValidation()" >
                        </div>
                        <div id="dateofbirtherrormsg">
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group row ">
                    <div class="col-md-5 labelalignright">
                        <label for="" class="col-form-label"> Picture</label>
                    </div>
                    <div class="col-md-7">
                        <div class="input-group custom-file-input picture">
                            <input type="file" name="picture">
                            <input type="text" class="form-group pictureinput"  id="pictureinput"
                                aria-describedby="helpId" placeholder="">
                            <label class="col-form-label cameraicondiv"><i
                                    class="fa fa-camera fg-lg cameraicon"></i></label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid row mb-4">
            <div class="col-md-6">
                <div class="form-group row ">
                    <div class="col-md-5 labelalignright">
                        <label for="" class="col-form-label ">Maritial Status </label>
                    </div>
                    <div class="col-md-7">
                        <select class="form-control " name="maritialStatus" id="maritialstatus">
                            <option selected disabled value="">Please Select a Maritial Status</option>
                            <option value="1">Option 1</option>
                            <option value="2">Option 2</option>
                            <option value="3">Option 3</option>
                        </select>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group row ">
                    <div class="col-md-5 labelalignright">
                        <label for="" class="col-form-label ">Resident Status <font class="star">*</font></label>
                    </div>
                    <div class="col-md-7">
                        <select class="form-control mb-1" 
                            data-parsley-errors-container="#residentstatuserrormsg"
                            data-parsley-required-message="Please select a resident status from the list" name="residentStatus"
                            id="residentstatus">
                            <option selected disabled value="">Please Select a Resident Status</option>
                            <option value="1">Option 1</option>
                            <option value="2">Option 2</option>
                            <option value="3">Option 3</option>
                        </select>
                        <div id="residentstatuserrormsg">

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid row mb-4">
            <div class="col-md-6">
                <div class="form-group row ">
                    <div class="col-md-5 labelalignright">
                        <label for="" class="col-form-label ">Resident ID </label>
                    </div>
                    <div class="col-md-7">
                        <input type="text" class="form-control" data-parsley-errors-container="#residentiduserrormsg"
                            data-parsley-type="digits" data-parsley-length="[6,6]"
                            data-parsley-length-message="Please provide 6 digit Resident ID" name="residentId" id=""
                            aria-describedby="helpId" placeholder="">
                        <div id="residentiduserrormsg">
                        </div>

                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group row ">
                    <div class="col-md-5 labelalignright">
                        <label for="" class="col-form-label ">Gender <font class="star">*</font></label>
                    </div>
                    <div class="col-md-7">
                        <select class="form-control "  data-parsley-errors-container="#gendererrormsg"
                            data-parsley-required-message="Please select a gender from the list" name="gender" id="gender">
                            <option selected disabled value="">Please Select a Gender</option>
                            <option value="1">Male</option>
                            <option value="2">Female</option>
                            <option value="3">Other</option>
                        </select>
                        <div id="gendererrormsg">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid row mb-4">
            <div class="col-md-6">
                <div class="form-group row ">
                    <div class="col-md-5 labelalignright">
                        <label for="" class="col-form-label ">Home Telephone </label>
                    </div>
                    <div class="col-md-7">
                        <input type="text" class="form-control" data-parsley-errors-container="#telephonenumbererrormsg"
                            data-parsley-type="digits" data-parsley-length="[10,10]"
                            data-parsley-length-message="Please provide 10 digit Telephone Number" name="telephone"
                            id="telephonenumber" aria-describedby="helpId" placeholder="">
                        <div id="telephonenumbererrormsg ">
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group row ">
                    <div class="col-md-5 labelalignright">
                        <label for="" class="col-form-label ">Mobile Telephone </label>
                    </div>
                    <div class="col-md-7">
                        <input type="text" class="form-control" data-parsley-errors-container="#mobilenumbererrormsg"
                            data-parsley-type="digits" data-parsley-length="[10,10]"
                            data-parsley-length-message="Please provide 10 digit Mobile Number" name="mobile" id=""
                            aria-describedby="helpId" placeholder="">
                        <div id="mobilenumbererrormsg ">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid row mb-4">
            <div class="col-md-6">
                <div class="form-group row ">
                    <div class="col-md-5 labelalignright">
                        <label for="" class="col-form-label ">Addressline1 </label>
                    </div>
                    <div class="col-md-7">
                        <input type="text" class="form-control" data-parsley-errors-container="#address1ererrormsg"
                            data-parsley-minlength="10" data-parsley-minlength-message="This Value is too short"
                            data-parsley-type="alphanum"
                            data-parsley-type-message="Only Aplha Numeric values are allowed" name="addressLine1" id="address1">
                        <div id="address1ererrormsg ">
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group row ">
                    <div class="col-md-5 labelalignright">
                        <label for="" class="col-form-label ">Addressline2 </label>
                    </div>
                    <div class="col-md-7">
                        <input type="text" class="form-control" data-parsley-errors-container="#address2ererrormsg"
                            data-parsley-minlength="10" data-parsley-minlength-message="This Value is too short"
                            data-parsley-type="alphanum"
                            data-parsley-type-message="Only Aplha Numeric values are allowed" name="addressLine2" id=""
                            aria-describedby="helpId" placeholder="">
                        <div id="address2ererrormsg ">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid row mb-4">
            <div class="col-md-6">
                <div class="form-group row ">
                    <div class="col-md-5 labelalignright">
                        <label for="" class="col-form-label ">Town </label>
                    </div>
                    <div class="col-md-7">
                        <input type="text" class="form-control" data-parsley-errors-container="#townererrormsg"
                            data-parsley-minlength="5" data-parsley-minlength-message="This Value is too short"
                            data-parsley-pattern="^[a-zA-Z]+$" data-parsley-pattern-message="Only Aplhabets are allowed"
                            name="town" id="town">
                        <div id="townererrormsg ">
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group row ">
                    <div class="col-md-5 labelalignright">
                        <label for="" class="col-form-label ">Postcode </label>
                    </div>
                    <div class="col-md-7">
                        <input data-parsley-errors-container="#postcodeerrormsg" data-parsley-type="digits"
                            data-parsley-length="[6,6]" data-parsley-length-message="Please provide 6 digit Postcode"
                            class="form-control" name="postcode" id="postcode">
                        <div id="postcodeerrormsg  ">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid row mb-4">
            <div class="col-md-6">
                <div class="form-group row ">
                    <div class="col-md-5 labelalignright">
                        <label for="" class="col-form-label ">Country </label>
                    </div>
                    <div class="col-md-7">
                        <input type="text" class="form-control" data-parsley-errors-container="#countryerrormsg"
                            data-parsley-minlength="5" data-parsley-minlength-message="This Value is too short"
                            data-parsley-pattern="^[a-zA-Z]+$" data-parsley-pattern-message="Only Aplhabets are allowed"
                            name="country" id="">
                        <div id="countryerrormsg ">
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group row ">
                    <div class="col-md-5 labelalignright">
                        <label for="" class="col-form-label ">NHS Number </label>
                    </div>
                    <div class="col-md-7">
                        <input type="text" class="form-control" data-parsley-errors-container="#postcodeerrormsg"
                            data-parsley-type="digits" data-parsley-length="[6,6]"
                            data-parsley-length-message="Please provide 6 digit NHS Number" name="nhsNumber" id="">
                        <div id="countryerrormsg ">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid row mb-4">
            <div class="col-md-6">
                <div class="form-group row ">
                    <div class="col-md-5 labelalignright">
                        <label for="" class="col-form-label"> Service Start Date</label>
                    </div>
                    <div class="col-md-7">
                        <div class="input-group ">
                            <input type="date" class="form-control startdate" name="serviceStartDate" id="serviceStartDate"
                                onchange="dateValidation()">
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group row ">
                    <div class="col-md-5 labelalignright">
                        <label for="" class="col-form-label"> Service End Date</label>
                    </div>
                    <div class="col-md-7">
                        <div class="input-group ">
                            <input type="date" class="form-control enddate" name="serviceEndDate" id="serviceEndDate" placeholder="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid row mb-4">
            <div class="col-md-6">
                <div class="form-group row ">
                    <div class="col-md-5 labelalignright">
                        <label for="" class="col-form-label ">Religion </label>
                    </div>
                    <div class="col-md-7">
                        <select class="form-control " name="religion" id="religion">
                            <option selected disabled value="">Please Select a Religion</option>
                            <option value="1">Option 1</option>
                            <option value="2">Option 2</option>
                            <option value="3">Option 3</option>
                        </select>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group row ">
                    <div class="col-md-5 labelalignright">
                        <label for="" class="col-form-label ">Ethinicity </label>
                    </div>
                    <div class="col-md-7">
                        <select class="form-control " name="ethinicity" id="ethinicity">
                            <option selected disabled value="">Please Select a Ethinicity</option>
                            <option value="1">Option 1</option>
                            <option value="2">Option 2</option>
                            <option value="3">Option 3</option>
                        </select>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid row mb-4">
            <div class="col-md-6">
                <div class="form-group row ">
                    <div class="col-md-5 labelalignright">
                        <label for="" class="col-form-label"> Date of Death</label>
                    </div>
                    <div class="col-md-7">
                        <div class="input-group ">
                            <input type="date" class="form-control deathdate" name="dateOfDeath" id="dateOfDeath"
                                onchange="dateValidation()">
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group row ">
                    <div class="col-md-5 labelalignright">
                        <label for="" class="col-form-label ">Funding Route </label>
                    </div>
                    <div class="col-md-7">
                        <select class="form-control " name="fundingRoute" id="fundingroute">
                            <option selected disabled value="">Please Select a Funding Route</option>
                            <option value="1">Option 1</option>
                            <option value="2">Option 2</option>
                            <option value="3">Option 3</option>
                        </select>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid mb-4 buttondiv">
            
            <button onClick="document.location.reload(true)" class="btn btn-outline-secondary"><i class="fa fa-close"></i> Close</button>
            <button type="submit" class="btn save"><i class="fa fa-check"></i> Save</button>
        </div>
    </form>

<!--     <script src="resources/bootstrap.js"></script> -->
</body>

</html>