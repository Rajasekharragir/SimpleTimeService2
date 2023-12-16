package com.TimeService.sampleapplication;



import java.util.Date;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
@RestController
public class TimeService {
	
@GetMapping("/gettime/response")
public Response getResponse() {
	Response rs=new Response();
	rs.setIp("102.10.2.99");
	rs.setTimeStamp(new Date().toLocaleString());
	return rs;
}

}
