package com.share1024.netty.udp;

import io.netty.bootstrap.Bootstrap;
import io.netty.buffer.Unpooled;
import io.netty.channel.Channel;
import io.netty.channel.ChannelOption;
import io.netty.channel.EventLoopGroup;
import io.netty.channel.nio.NioEventLoopGroup;
import io.netty.channel.socket.DatagramPacket;
import io.netty.channel.socket.nio.NioDatagramChannel;
import io.netty.util.CharsetUtil;

import java.net.InetSocketAddress;

/**
 * Created by yesheng on 2017/3/2.
 */
public class UdpClient {

    public void run(int port) throws InterruptedException {
        EventLoopGroup group = new NioEventLoopGroup();
        try {

            Bootstrap bootstrap = new Bootstrap();
            bootstrap.group(group).channel(NioDatagramChannel.class)
                        .option(ChannelOption.SO_BROADCAST,true)
                        .handler(new UdpClientHandler());
            Channel channel = bootstrap.bind(0).sync().channel();
            channel.writeAndFlush(new DatagramPacket(Unpooled.copiedBuffer("哈哈哈哈", CharsetUtil.UTF_8)
                                ,new InetSocketAddress("127.0.0.1",port))).sync();

            if(!channel.closeFuture().await(15000)){
                System.out.println("查询超时");
            }
        }finally {
            group.shutdownGracefully();
        }
    }

    public static void main(String[] args) {
        try {
            new UdpClient().run(8081);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }
}
