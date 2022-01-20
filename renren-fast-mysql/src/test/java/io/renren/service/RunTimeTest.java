package io.renren.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.omg.SendingContext.RunTime;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.io.File;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.stream.Stream;

@RunWith(SpringRunner.class)
@SpringBootTest
public class RunTimeTest {

    @Test
    public void run() {
        final Runtime runtime = Runtime.getRuntime();
        System.out.println(String.format("当前计算机的核数: %s",
                runtime.availableProcessors()));
        System.out.println(String.format("当前计算机的可用内存: %s",
                runtime.freeMemory()));
        System.out.println(String.format("当前计算机的总内存: %s",
                runtime.totalMemory()));
        double freeMemory = runtime.freeMemory();
        double totalMemory = runtime.totalMemory();
        long mem = (long) (freeMemory / totalMemory) * 100;
        System.out.println(String.format("当前计算机的可用内存: %s",
                mem + "%"));
    }
}
