package hu.zzit.simpleserver;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@SpringBootApplication
@RestController
public class SimpleServer {

	public static void main(String[] args) {
		SpringApplication.run(SimpleServer.class, args);
	}

	@RequestMapping("/")
	public String index() {
		return "This is a simple server. Valid endpoint are /echo via POST and /env/{id} via GET.\n";
	}

	@PostMapping("/echo")
	public ResponseEntity<String> echo(@RequestBody String body) {
		return new ResponseEntity<>(body + "\n", HttpStatus.OK);
	}

	@GetMapping("/env/{id}")
	public ResponseEntity<String> env(@PathVariable String id) {
		return new ResponseEntity<>(System.getenv(id) + "\n", HttpStatus.OK);
	}
}
