package com.lagou.edu.mvcframework.annotations;

import java.lang.annotation.*;

/**
 * @author dyq
 */
@Documented
@Target({ElementType.TYPE,ElementType.METHOD})
@Retention(RetentionPolicy.RUNTIME)
public @interface Security {
    String[] value() default {};
}
