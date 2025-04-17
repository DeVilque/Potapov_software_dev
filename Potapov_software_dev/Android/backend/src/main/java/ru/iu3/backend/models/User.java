package ru.iu3.backend.models;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonView;
import jakarta.persistence.*;
import ru.iu3.backend.controllers.LoginController;
import ru.iu3.backend.tools.View;

import java.time.LocalDateTime;
import java.util.HashSet;
import java.util.Set;


@Entity
@Table(name = "users")
@Access(AccessType.FIELD)
public class User {

    public User() { }
    public User(Long id) {
        this.id = id;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @JsonView({View.REST.class})
    @Column(name = "id", updatable = false, nullable = false)
    public long id;

    @JsonView({View.REST.class})
    @Column(name = "login")
    public String login;

    @JsonView({View.REST.class})
    @Column(name = "email")
    public String email;

    @JsonIgnore
    @Column(name = "password")
    public String password;

    @JsonIgnore
    @Column(name = "salt")
    public String salt;

//    @JsonIgnore
    @JsonView(View.LOGIN.class)
    @Column(name = "token")
    public String token;

    @JsonView({View.REST.class})
    @Column(name = "activity")
    public LocalDateTime activity;

    @JsonView({View.REST.class})
    @ManyToMany(mappedBy = "users")
    public Set<Museum> museums = new HashSet<>();

    public void addMuseum(Museum m) {
        this.museums.add(m);
        m.users.add(this);
    }

    public void removeMuseum(Museum m) {
        this.museums.remove(m);
        m.users.remove(this);
    }
}