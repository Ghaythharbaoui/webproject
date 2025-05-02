package tn.enicarthage.absencemanagement;

import java.util.List;
import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@CrossOrigin("*")
@RequestMapping("/api/auth")
public class AuthController {
  
  @GetMapping("/me")
  public ResponseEntity<Map<String,Object>> me(Authentication auth) {
    if (auth == null || !(auth.getPrincipal() instanceof UserDetails)) {
      return ResponseEntity.status(HttpStatus.UNAUTHORIZED).build();
    }
    UserDetails user = (UserDetails) auth.getPrincipal();
    List<String> roles = user.getAuthorities().stream()
                           .map(GrantedAuthority::getAuthority)
                           .toList();
    return ResponseEntity.ok(Map.of(
      "username", user.getUsername(),
      "roles", roles
    ));
  }
}

