package tn.enicarthage.absencemanagement;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import tn.enicarthage.absencemanagement.etudiants.model.User;

@Service
public class AppUserDetailsService implements UserDetailsService {
    private final UserRepository userRepo;

    public AppUserDetailsService(UserRepository userRepo) {
        this.userRepo = userRepo;
    }

    @Override
    public UserDetails loadUserByUsername(String email) 
            throws UsernameNotFoundException {
        User user = userRepo.findByEmail(email)
            .orElseThrow(() ->
              new UsernameNotFoundException("Utilisateur non trouvé : " + email));
        // on transforme votre entité User en Spring UserDetails
        return org.springframework.security.core.userdetails.User.builder()
            .username(user.getEmail())
            .password(user.getMotdepass())
            .roles(detectRoles(user))   // par ex. ["ADMIN"] ou ["ETUDIANT"]
            .build();
    }

    private String[] detectRoles(User user) {
        if (user instanceof tn.enicarthage.absencemanagement.administration.model.Admin)
            return new String[] {"ADMIN"};
        if (user instanceof tn.enicarthage.absencemanagement.etudiants.model.Etudiant)
            return new String[] {"ETUDIANT"};
        if (user instanceof tn.enicarthage.absencemanagement.enseignants.model.Enseignant)
            return new String[] {"ENSEIGNANT"};
        return new String[] {"USER"};
    }
}
