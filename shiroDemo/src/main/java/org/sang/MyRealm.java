package org.sang;

import org.apache.shiro.authc.*;
import org.apache.shiro.realm.AuthenticatingRealm;
import org.apache.shiro.util.ByteSource;

/**
 * Created by sang on 2018/5/25.
 */
public class MyRealm extends AuthenticatingRealm {
    public String getName() {
        return "MyRealm";
    }
    public boolean supports(AuthenticationToken token) {
        return token instanceof UsernamePasswordToken;
    }
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        String username = token.getPrincipal().toString();
        if (!"sang".equals(username)) {
            throw new UnknownAccountException("用户不存在");
        }
        String dbPassword = "a593ccad1351a26cf6d91d5f0f24234c6a4da5cb63208fae56fda809732dcd519129acd74046a1f9c5992db8903f50ebf3c1091b3aaf67a05c82b7ee470d9e58";
        return new SimpleAuthenticationInfo(username, dbPassword, ByteSource.Util.bytes(username), getName());
    }
}
