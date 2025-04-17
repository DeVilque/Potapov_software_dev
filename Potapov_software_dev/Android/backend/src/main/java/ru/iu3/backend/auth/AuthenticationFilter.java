package ru.iu3.backend.auth;

import org.apache.commons.lang3.StringUtils;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.AbstractAuthenticationProcessingFilter;
import org.springframework.security.web.util.matcher.RequestMatcher;

import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import static org.springframework.http.HttpHeaders.AUTHORIZATION;

public class AuthenticationFilter extends AbstractAuthenticationProcessingFilter {

    public AuthenticationFilter(RequestMatcher requiresAuth) {
        super(requiresAuth);
    }

    @Override
    public Authentication attemptAuthentication(
            HttpServletRequest request,
            HttpServletResponse response
    ) throws AuthenticationException, IOException {

        // Извлекаем токен из заголовка Authorization
        String token = request.getHeader(AUTHORIZATION);
        if (token == null) {
            throw new AuthenticationException("Authorization header is missing") {};
        }

        // Удаляем "Bearer " из токена (если есть)
        token = StringUtils.removeStart(token, "Bearer").trim();

        // Создаем объект аутентификации
        Authentication authRequest = new UsernamePasswordAuthenticationToken(
                token, // principal
                token  // credentials
        );

        // Пробуем аутентифицировать
        return this.getAuthenticationManager().authenticate(authRequest);
    }

    @Override
    protected void successfulAuthentication(
            HttpServletRequest request,
            HttpServletResponse response,
            FilterChain chain,
            Authentication authResult
    ) throws IOException, ServletException {

        // Устанавливаем аутентификацию в SecurityContext
        SecurityContextHolder.getContext().setAuthentication(authResult);

        // Продолжаем цепочку фильтров
        chain.doFilter(request, response);
    }
}