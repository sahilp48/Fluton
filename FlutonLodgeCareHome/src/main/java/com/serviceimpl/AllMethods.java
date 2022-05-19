package com.serviceimpl;

import org.springframework.ui.Model;

import com.exceptions.InvalidField;
import com.model.Addresident;

public class AllMethods {
	public int numberValidation(String Fieldinput, Model model, int count, String name, String attribute) {
		try {
			
				if (Fieldinput.length() !=10 && Fieldinput.length()>0) {
					count++;
					throw new InvalidField("Please provide 10 Digit "+name);
				}
				else if(!Fieldinput.matches( "^[0-9]{10}$")&& Fieldinput.length()>0){
					throw new InvalidField(name+" should contain only digits");
				}
				
		} catch (InvalidField e) {
			model.addAttribute(attribute, e.getMessage());
		}
		return count;

	}

	public int nameNotRequiredValidation(String Fieldinput, Model model, int count, String name, String attribute) {
		try {
			
			if (Fieldinput.matches(".*[0-9].*")) {
				count++;
				throw new InvalidField(name + " should contain only aplhabets");
			}
			if (Fieldinput.length() < 10 && Fieldinput.length()>0) {
				count++;
				throw new InvalidField(name + " length should be greater than 10");
			}

		} catch (InvalidField e) {
			model.addAttribute(attribute, e.getMessage());
		}
		return count;
	}

	public int requiredValidation(String Fieldinput, Model model, int count, String name, String attribute) {

		try {
			if (Fieldinput == null) {
				count++;
				throw new InvalidField("Please Provide" + name);
			}
		} catch (InvalidField e) {
			model.addAttribute(attribute, e.getMessage());
		}
		return count;
	}

	public int nameValidation(String Fieldinput, Model model, int count, String name, String attribute) {
		try {
			if (Fieldinput.length() == 0) {
				count++;
				throw new InvalidField("Please Provide" + name);
			} else if (Fieldinput.length() < 5) {
				System.out.println(Fieldinput);
				System.out.println(Fieldinput.length());
				count++;
				throw new InvalidField(name + " length should be greater than 5");
			}
		} catch (InvalidField e) {
			model.addAttribute(attribute, e.getMessage());
		}
		return count;
	}
	
	
	public String validation(Addresident addresident, Model model, int count) {
		try {
			
				count = requiredValidation(addresident.getTitle(), model, count, " Title in the list", "titleErrorMsg");
				count = nameValidation(addresident.getFirstName(), model, count, " First name", "firstNameErrorMsg");
				count = nameValidation(addresident.getLastName(), model, count, " Last name", "lastNameErrorMsg");
				count = nameNotRequiredValidation(addresident.getMiddleName(), model, count, " Middle name","middleNameErrorMsg");
				count = nameNotRequiredValidation(addresident.getMaidenName(), model, count, " Maiden name","maidenNameErrorMsg");
				count = nameNotRequiredValidation(addresident.getNamepreference(), model, count, " Name preference","NamePreferenceErrorMsg");
				count = requiredValidation(addresident.getResidentStatus(), model, count, " Resident status in the list", "residentStatusErrorMsg");
				count = numberValidation(addresident.getResidentId(), model, count, " Resident Id", "ResidentIdErrorMsg");
				count = requiredValidation(addresident.getGender(), model, count, " Gender in the list", "genderErrorMsg");
				count = numberValidation(addresident.getTelephone(), model, count, " Telephone Number", "telephoneErrorMsg");
				count = numberValidation(addresident.getMobile(), model, count, " Mobile Number", "mobileErrorMsg");
				count = nameNotRequiredValidation(addresident.getAddressLine1(), model, count, " AddressLine1","address1ErrorMsg");
				count = nameNotRequiredValidation(addresident.getAddressLine2(), model, count, " AddressLine2","address2ErrorMsg");
				count = nameNotRequiredValidation(addresident.getTown(), model, count, " Town","townErrorMsg");
				count = numberValidation(addresident.getPostcode(), model, count, " Postcode", "postcodeErrorMsg");
				count = nameNotRequiredValidation(addresident.getCountry(), model, count, " Country","countryErrorMsg");
				count = numberValidation(addresident.getNhsNumber(), model, count, " nhsNumber", "nhsNumberErrorMsg");
				if (count != 0) {
					return "addresidentpage";
				}
				} catch (Exception e) {
			System.out.println("Invalid type");
				}

		return "viewformdata";
	}
}
