package com.os7blue.blog7.erroractive;

import freemarker.core.Environment;
import freemarker.template.TemplateException;
import freemarker.template.TemplateExceptionHandler;
import lombok.SneakyThrows;

import java.io.Writer;

/**
 * 处理ftl模板异常
 */
public class FreemarkerExceptionHandler implements TemplateExceptionHandler {
    @SneakyThrows
    @Override
    public void handleTemplateException(TemplateException e, Environment environment, Writer writer) throws TemplateException {

        //抛出异常给统一异常处理
        throw  new Exception();
    }
}
