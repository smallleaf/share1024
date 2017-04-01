package com.share1024.netty.udp;

import ch.qos.logback.core.net.SyslogOutputStream;
import io.netty.buffer.Unpooled;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.SimpleChannelInboundHandler;
import io.netty.channel.socket.DatagramPacket;
import io.netty.util.CharsetUtil;

/**
 * Created by yesheng on 2017/3/2.
 */
public class UdpServerHandler extends SimpleChannelInboundHandler<DatagramPacket> {

    @Override
    protected void channelRead0(ChannelHandlerContext ctx, DatagramPacket datagramPacket) throws Exception {

        String req = datagramPacket.content().toString(CharsetUtil.UTF_8);
        System.out.println(req);
        ctx.writeAndFlush(new DatagramPacket(Unpooled.copiedBuffer("这是一个奇怪的世界",CharsetUtil.UTF_8),datagramPacket.sender())).sync();
    }


    @Override
    public void exceptionCaught(ChannelHandlerContext ctx, Throwable cause) throws Exception {
        super.exceptionCaught(ctx, cause);
        ctx.close();
        cause.printStackTrace();
    }
}
