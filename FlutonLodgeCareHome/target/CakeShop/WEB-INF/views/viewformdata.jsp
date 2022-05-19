<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View</title>
</head>
<body>
    <div class="main">
        <h1>Fulton Lodge Care Home</h1>
        <a href="/fulton">Home</a>
        <hr>
        <label for="title">Title -> </label>
        <span>${addresident.title}</span>
        <br>
        <br>
        <label for="fname">First Name -> </label>
        <span>${addresident.firstName}</span>
        <br>
        <br>
        <label for="lname">Last Name -> </label>
        <span>${addresident.lastName}</span>
        <br>
        <br>
        <label for="middleName">Middle Name -> </label>
        <span>${addresident.middleName}</span>
        <br>
        <br>
        <label for="maidenName">Maiden Name -> </label>
        <span>${addresident.maidenName}</span>
        <br>
        <br>
        <label for="namepreference">Name Preference -> </label>
        <span>${addresident.namepreference}</span>
        <br>
        <br>
        <label for="birthDate">Birth Date -> </label>
        <span>${addresident.dateOfBirth}</span>
        <br>
        <br>
        <label for="picture">Picture -> </label>
        <span><img width="100px" src="<c:url value="resources/${addresident.picture.originalFilename}" />" /></span>
        <br>
        <br>
        <label for="martialStatus">Martial Status -> </label>
        <span>${addresident.maritialStatus}</span>
        <br>
        <br>
        <label for="residentStatus">Resident Status -> </label>
        <span>${addresident.residentStatus}</span>
        <br>
        <br>
        <label for="residentId">Resident Id -> </label>
        <span>${addresident.residentId}</span>
        <br>
        <br>
        <label for="gender">Gender -> </label>
        <span>${addresident.gender}</span>
        <br>
        <br>
        <label for="homeTelephone">Home Telephones -> </label>
        <span>${addresident.telephone}</span>
        <br>
        <br>
        <label for="mobileTelephone">Mobile Telephones -> </label>
        <span>${addresident.mobile}</span>
        <br>
        <br>
        <label for="addressLine1">Address -> </label>
        <span>${addresident.addressLine1}, ${addresident.addressLine2}, ${addresident.town}, ${addresident.postcode}</span>
        <br>
        <br>
        <label for="country">Country -> </label>
        <span>${addresident.country}</span>
        <br>
        <br>
        <label for="nhsNumber">NHS Number -> </label>
        <span>${addresident.nhsNumber}</span>
        <br>
        <br>
        <label for="serviceStartDate">Service Start Date -> </label>
        <span>${addresident.serviceStartDate}</span>
        <br>
        <br>
        <label for="serviceEndDate">Service End Date -> </label>
        <span>${addresident.serviceEndDate}</span>
        <br>
        <br>
        <label for="religion">Religion -> </label>
        <span>${addresident.religion}</span>
        <br>
        <br>
        <label for="ethnicity">Ethnicity -> </label>
        <span>${addresident.ethinicity}</span>
        <br>
        <br>
        <label for="deathDate">Death Date -> </label>
        <span>${addresident.dateOfDeath}</span>
        <br>
        <br>
        <label for="fundingRoute">Funding Route -> </label>
        <span>${addresident.fundingRoute}</span> 
    </div>
    <hr>
</body>
</html>