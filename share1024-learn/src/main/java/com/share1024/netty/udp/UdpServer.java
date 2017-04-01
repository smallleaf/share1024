package com.share1024.netty.udp;

import io.netty.bootstrap.Bootstrap;
import io.netty.channel.ChannelOption;
import io.netty.channel.EventLoopGroup;
import io.netty.channel.nio.NioEventLoopGroup;
import io.netty.channel.socket.nio.NioDatagramChannel;

/**
 * Created by yesheng on 2017/3/2.
 */
public class UdpServer {
    public void run(int port) throws InterruptedException {
        EventLoopGroup group = new NioEventLoopGroup();

        try {
            Bootstrap bootstrap = new Bootstrap();
            bootstrap.group(group).channel(NioDatagramChannel.class)
                        .option(ChannelOption.SO_BROADCAST,true)
                        .handler(new UdpServerHandler());
            bootstrap.bind(port).sync().channel().closeFuture().await();
        }finally {
            group.shutdownGracefully();
        }
    }

    public static void main(String[] args) {
        try {
            new UdpServer().run(8081);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }
}
