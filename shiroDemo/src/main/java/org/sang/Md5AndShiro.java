package org.sang;

import org.apache.shiro.crypto.hash.Md5Hash;
import org.apache.shiro.crypto.hash.Sha512Hash;
import org.apache.shiro.crypto.hash.SimpleHash;

/**
 * Created by sang on 2018/5/26.
 */
public class Md5AndShiro {
    public static void main(String[] args) {
        Md5Hash md5Hash = new Md5Hash("123", null, 1024);
        System.out.println(md5Hash);
        Sha512Hash sha256Hash = new Sha512Hash("123", null, 1024);
        System.out.println(sha256Hash);

        SimpleHash md5 = new SimpleHash("md5", "123", null, 1024);
        SimpleHash sha256 = new SimpleHash("sha-512", "123", null, 1024);
        System.out.println(md5.equals(md5Hash));
        System.out.println(sha256.equals(sha256Hash));
    }
}
