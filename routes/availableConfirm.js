const models            = require("../models"),
      express           = require('express');
    
      
var router = express.Router();
router.post('/', function(req, res, next) {
    
 const     available         = require('./available.js'),
           options           = available,
              passengerId       = options.passengerId,
              reservationId     = options.reservationId,
              origin_id         = options.origin_id,
              destination_id    = options.destination_id,
              reservationDate   = options.reservationMoment,
              timeday           = options.timeday,
              trip_price        = options.trip_price;
	        console.log(req.body.available);
        var trainId = req.body.available.number;
        var arrivalTime = req.body.available.arrival;
        //create trip
                         models.TRIP.create({
                                  TRAIN_ID:         trainId,
                                  RESERVATION_ID:   reservationId,
                                  PASSENGER_ID:     passengerId,
                                  ORIGIN:           origin_id,
                                  DESTINATION:      destination_id,
                                  TRIP_DATE:        reservationDate,
                                  TRIP_TIME:        arrivalTime,
                                  PRICE:            trip_price
                            }).then(trip => {
                                console.log(trip);
                            });
  
    setTimeout(() => {
        res.render('availableConfirm');  
    }, 1000);
          
        
});







module.exports = router;


