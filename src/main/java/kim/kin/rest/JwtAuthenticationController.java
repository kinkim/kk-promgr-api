package kim.kin.rest;


import kim.kin.config.security.JwtTokenUtil;
import kim.kin.config.security.user.UserDetailsServiceImpl;
import kim.kin.kklog.LogKimAnnotation;
import kim.kin.model.MetaVO;
import kim.kin.model.UserInfoDTO;
import kim.kin.model.UserPermissionVO;
import kim.kin.service.UserInfoService;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.web.bind.annotation.*;

import java.util.*;

/**
 * @author choky
 */
@RestController
@CrossOrigin
public class JwtAuthenticationController {
    private final AuthenticationManager authenticationManager;
    private final JwtTokenUtil jwtTokenUtil;
    private final UserDetailsServiceImpl userDetailsService;
    private final UserInfoService userInfoService;

    public JwtAuthenticationController(AuthenticationManager authenticationManager, JwtTokenUtil jwtTokenUtil, UserDetailsServiceImpl userDetailsService, UserInfoService userInfoService) {
        this.authenticationManager = authenticationManager;
        this.jwtTokenUtil = jwtTokenUtil;
        this.userDetailsService = userDetailsService;
        this.userInfoService = userInfoService;
    }

    @RequestMapping(value = "/authenticate", method = RequestMethod.POST)
    @LogKimAnnotation
    public ResponseEntity<?> createAuthenticationToken(@RequestBody UserInfoDTO userInfoDTO) {
        String username = userInfoDTO.getUsername();
        String password = userInfoDTO.getPassword();
        authenticationManager.authenticate(new UsernamePasswordAuthenticationToken(username, password));
        User user = userDetailsService.loadUserByUsername(username);
        String token = jwtTokenUtil.generateToken(username, user.getAuthorities());
        Map<String, Object> authInfo = new HashMap<>(1) {{
            put("token", JwtTokenUtil.AUTH_KIM_TOKEN + token);
        }};
        return ResponseEntity.ok(authInfo);
    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    @LogKimAnnotation
    public ResponseEntity<?> saveUser(@RequestBody UserInfoDTO user) {
        return ResponseEntity.ok(userInfoService.save(user));
    }

    @RequestMapping(value = "/currentUser", method = RequestMethod.POST)
    public ResponseEntity<?> currentUser() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        Collection<? extends GrantedAuthority> authorities = authentication.getAuthorities();
        Object principal = authentication.getPrincipal();
        Object credentials = authentication.getCredentials();
        Object details = authentication.getDetails();
        System.out.println(authorities);
        System.out.println(principal);
        System.out.println(credentials);
        System.out.println(details);
        return ResponseEntity.ok(authentication);
    }

    @PostMapping(value = "/user/logout")
    @LogKimAnnotation
    public ResponseEntity<?> logout() {
        return ResponseEntity.ok("SUCCESS");
    }

    @PostMapping(value = "/getInfo")
    @LogKimAnnotation
    public ResponseEntity<?> getInfo() {
        UserInfoDTO us = new UserInfoDTO();
        us.setAvatar("https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif");
        us.setEnabled(true);
        us.setIntroduction("I am a super administrator");
        us.setUsername("admin");
        us.setPassword("pwd");
        us.setRoles("admin");
//        path: 'page',
//                component: 'views/permission/page',
//                name: 'PagePermission',
//                meta: {
//                  title: 'Page Permission',
//                    roles: ['admin']
//        }

        MetaVO metaVO1 = new MetaVO("Page Permission", "lock");
        MetaVO metaVO = new MetaVO("PermissionTitle", "lock");
        UserPermissionVO userPermissionVO1 = new UserPermissionVO("PagePermission", "page", "", "permission/page", false, metaVO1, null);
        UserPermissionVO userPermissionVO2 = new UserPermissionVO("RolePermission", "role", "", "permission/role", false, metaVO1, null);
        List<UserPermissionVO> userPermissionVOS = Arrays.asList(userPermissionVO1, userPermissionVO2);
//        UserPermissionVO userPermissionVO = new UserPermissionVO("permission", "/permission", "/permission/page", "Layout", false, metaVO, Collections.singletonList(userPermissionVO1));
        UserPermissionVO userPermissionVO = new UserPermissionVO("permissionName", "/permission", "", "Layout", true, metaVO, userPermissionVOS);
        us.setVo(Collections.singletonList(userPermissionVO));

//        return ResponseEntity.ok(jwtTokenUtil.getCurrentUser());
        return ResponseEntity.ok(us);
    }

}
