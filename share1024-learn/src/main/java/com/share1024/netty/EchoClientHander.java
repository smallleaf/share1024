package com.share1024.netty;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.Unpooled;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.ChannelInboundHandlerAdapter;

import java.util.logging.Logger;

public class EchoClientHander extends ChannelInboundHandlerAdapter {

	private static final Logger logger = Logger
			.getLogger(EchoClientHander.class.getName());


	public EchoClientHander() {
		req = "yesheng.$_".getBytes();
	}
	private  byte[] req;

	@Override
	public void channelActive(ChannelHandlerContext ctx) throws Exception {
		//与服务端建立连接后
		ByteBuf firstMessage = null;
		for (int i=0;i<150;i++){
			firstMessage = Unpooled.buffer(req.length);
			firstMessage.writeBytes(req);
			ctx.writeAndFlush(firstMessage);
		}

	}

	@Override
	public void channelRead(ChannelHandlerContext ctx, Object msg)
			throws Exception {
		System.out.println("client channelRead..");
		//服务端返回消息后
		String body = (String) msg;
		System.out.println("Now is :" + body);
	}

	@Override
	public void exceptionCaught(ChannelHandlerContext ctx, Throwable cause)
			throws Exception {
		System.out.println("client exceptionCaught..");
		// 释放资源
		logger.warning("Unexpected exception from downstream:"
				+ cause.getMessage());
		ctx.close();
	}

}