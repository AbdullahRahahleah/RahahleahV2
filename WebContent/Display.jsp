<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri= "http://java.sun.com/jsp/jstl/core" prefix= "c" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Abdullah Rahahleah</title>
</head>
<body>

<h2 >Hello ${Objects.getUserInfo().getUserId()} (${Objects.getUserInfo().getPersona().getPersonaType()} )
</h2>

<h5 align="right">Offers info are {
<c:forEach items="${Objects.getOfferInfo()}" var="entry">
   ${entry.key}=${entry.value} ,  
</c:forEach>
}
</h5>
<h3>Here we have some offers as following :</h3>

<c:forEach items="${Objects.getOffers().getHotel()}" var="Hotel">
<ul>
 <img src="${Hotel.getHotelInfo().getHotelImageUrl()}"/>
 <br>
Hotel Id=${Hotel.getHotelInfo().getHotelId()} <br>
Hotel Name=${Hotel.getHotelInfo().getHotelName()}

<li> <h4>Offer Date Ranges :From ${Hotel.getOfferDateRange().getTravelStartDate().toString()} TO ${Hotel.getOfferDateRange().getTravelEndDate().toString()} For ${Hotel.getOfferDateRange().getLengthOfStay()} Days </h4>  
<li> <h4>The destination information are :${Hotel.getDestination().getLongName()} (${Hotel.getDestination().getRegionID()}) , City :${Hotel.getDestination().getCity()} ,Country-Province(${Hotel.getDestination().getCountry()} -${Hotel.getDestination().getProvince()} )
<li> <h3> Hotel information :</h3>
<table style="border-collapse: collapse">
	<thead>
	    <tr>
	      <th>Score</th>
	      <th>Price</th>
	      <th>Urgency information</th>
	      <th> Hotel information<th>
	      <th> Hotel Links</th>
	    </tr>
	  </thead>
	<tbody>
	    <tr style="width:100%">
	      <td style="float:top">
	      <div>Raw Appeal Score=${Hotel.getHotelScores().getRawAppealScore()} <br> <br> Moving Average Score=${Hotel.getHotelScores().getMovingAverageScore()}</div>      
	      </td>
	      <td style="float:top">
		      <div>
	
				Average price: ${Hotel.getHotelPricingInfo().getAveragePriceValue()} <br>
				Total Price Value: ${Hotel.getHotelPricingInfo().getTotalPriceValue()} <br>
				Original Price Per Night: ${Hotel.getHotelPricingInfo().getOriginalPricePerNight()}<br>
				Hotel Total Base Rate: ${Hotel.getHotelPricingInfo().getHotelTotalBaseRate()}<br>
				Hotel Total Taxes And Fees: ${Hotel.getHotelPricingInfo().getHotelTotalTaxesAndFees()}<br>
				currency : ${Hotel.getHotelPricingInfo().getCurrency()}<br>
				Hotel Total Mandatory Taxes And Fees: ${Hotel.getHotelPricingInfo().getHotelTotalMandatoryTaxesAndFees()}<br>
				Percent Savings: ${Hotel.getHotelPricingInfo().getPercentSavings()}<br>
				Drr : ${Hotel.getHotelPricingInfo().getDrr()}<br>
			
			</div>
	      </td>
	      
	      <td style="float:top">
	      	<div>
				Air Attach Remaining Time=${Hotel.getHotelUrgencyInfo().getAirAttachEnabled()}<br>
				Number Of People Viewing=${Hotel.getHotelUrgencyInfo().getNumberOfPeopleViewing()}<br>
				Number Of People Booked=${Hotel.getHotelUrgencyInfo().getNumberOfPeopleBooked()}<br>
				Number Of Rooms Left=${Hotel.getHotelUrgencyInfo().getNumberOfRoomsLeft()}<br>
				Last Booked Time=${Hotel.getHotelUrgencyInfo().getLastBookedTime()}<br>
				Almost Sold Status=${Hotel.getHotelUrgencyInfo().getAlmostSoldStatus()}<br>
				Almost SoldOut Room Type Info Collection=${Hotel.getHotelUrgencyInfo().getAlmostSoldOutRoomTypeInfoCollection().toString()}
				Air Attach Enabled=${Hotel.getHotelUrgencyInfo().getAirAttachEnabled()}<br>
				Link= <a href=${Hotel.getHotelUrgencyInfo().getLink()}> ${Hotel.getHotelUrgencyInfo().getLink()} </a>
			</div>
	      </td>
		      <td style="float:top">					   
				<div id=${Hotel.getHotelInfo().getHotelId()} style="visibility:visile;">
				Hotel Destination=${Hotel.getHotelInfo().getHotelDestination()}<br>
				hotel Destination Region ID=${Hotel.getHotelInfo().getHotelDestinationRegionID()}<br>
				hotel Long Destination=${Hotel.getHotelInfo().getHotelLongDestination()}<br>
				hotel Street Address=${Hotel.getHotelInfo().getHotelStreetAddress()}<br>
				hotel City=${Hotel.getHotelInfo().getHotelCity()}<br>
				hotel Province=${Hotel.getHotelInfo().getHotelProvince()}<br>
				hotel Country Code=${Hotel.getHotelInfo().getHotelCountryCode()}<br>
				hotel Location=${Hotel.getHotelInfo().getHotelLocation()}<br>
				hotel Latitude=${Hotel.getHotelInfo().getHotelLatitude()}<br>
				hotel Longitude=${Hotel.getHotelInfo().getHotelLongitude()}<br>
				hotel Star Rating=${Hotel.getHotelInfo().getHotelStarRating()}<br>
				hotel Guest Review Rating=${Hotel.getHotelInfo().getHotelGuestReviewRating()}<br>
				travel StartDate=${Hotel.getHotelInfo().getTravelStartDate()}<br>
				travel EndDate=${Hotel.getHotelInfo().getTravelEndDate()}<br>
				description=${Hotel.getHotelInfo().getDescription()}<br>
				car Package Score=${Hotel.getHotelInfo().getCarPackageScore()}<br>
				distance From User=${Hotel.getHotelInfo().getDistanceFromUser()}<br>
				language=${Hotel.getHotelInfo().getLanguage()}<br>
				promotion Amount=${Hotel.getHotelInfo().getPromotionAmount()}<br>
				promotion Description=${Hotel.getHotelInfo().getPromotionDescription()}<br>
				promotion Tag=${Hotel.getHotelInfo().getPromotionTag()}<br>
				Relevance Score=${Hotel.getHotelInfo().getRelevanceScore()}<br>
				Status Code=${Hotel.getHotelInfo().getStatusCode()}<br>
				Status Description=${Hotel.getHotelInfo().getStatusDescription()}<br>
				Car Package=${Hotel.getHotelInfo().getCarPackage()}<br>
				All Inclusive=${Hotel.getHotelInfo().getAllInclusive()}<br>
				</div>
	      </td>
	      	 <td style="float:top">
	      	 	<ul>
	    	  	<li>
	    	  	<a href= ${Hotel.getHotelUrls().getHotelInfositeUrl()} > Hotel Info site Url</a>
	    	  	<br>
				<li>
				<a href= ${Hotel.getHotelUrls().getHotelSearchResultUrl()} > Hotel Search Result Url</a>		
	    	</td>
	      
	    </tr> 
	</table>
</ul>
</c:forEach>


</body>
</html>