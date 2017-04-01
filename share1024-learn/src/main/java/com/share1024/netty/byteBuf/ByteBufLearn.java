package com.share1024.netty.byteBuf;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.Unpooled;
import org.junit.Test;

/**
 * Created by yesheng on 2017/3/14.
 */
public class ByteBufLearn {


    @Test
    public void test(){

        ByteBuf buf = Unpooled.buffer(100);
        buf.writeBytes("t3st".getBytes());

    }
}
