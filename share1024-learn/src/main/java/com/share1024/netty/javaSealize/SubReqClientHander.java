package com.share1024.netty.javaSealize;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.Unpooled;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.ChannelInboundHandlerAdapter;

import java.util.logging.Logger;

public class SubReqClientHander extends ChannelInboundHandlerAdapter {

	private static final Logger logger = Logger
			.getLogger(SubReqClientHander.class.getName());


	public SubReqClientHander() {
		req = ("yesheng"+ System.getProperty("line.separator")).getBytes();
	}
	private  byte[] req;

	@Override
	public void channelActive(ChannelHandlerContext ctx) throws Exception {
		//与服务端建立连接后
		for (int i = 0 ;i < 100 ;i++){
			ctx.writeAndFlush(subReq(i));
		}

	}

	private SubscribeReq subReq(int i){
		SubscribeReq req = new SubscribeReq();
		req.setId(i);
		req.setUsername("yesheng");
		req.setAddress("hjahahaha");
		req.setPhoneNumberName("======");
		return req;
	}

	@Override
	public void channelRead(ChannelHandlerContext ctx, Object msg)
			throws Exception {
		System.out.println("client channelRead..");
		//服务端返回消息后
		System.out.println("Now is :" + msg);
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