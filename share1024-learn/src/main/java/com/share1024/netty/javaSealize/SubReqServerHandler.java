package com.share1024.netty.javaSealize;

import ch.qos.logback.core.net.SyslogOutputStream;
import io.netty.buffer.ByteBuf;
import io.netty.buffer.Unpooled;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.ChannelInboundHandlerAdapter;

public class SubReqServerHandler extends ChannelInboundHandlerAdapter {

	@Override
	public void channelRead(ChannelHandlerContext ctx, Object msg)
			throws Exception {
		SubscribeReq req = (SubscribeReq)msg;
		if("yesheng".equalsIgnoreCase(req.getUsername())){
			System.out .println("========"+req.toString());
			ctx.writeAndFlush(resp(req.getId()));
		}
	}


	private SubScribeResp resp(int subReqId){
		SubScribeResp resp = new SubScribeResp();
		resp.setCode(0);
		resp.setId(subReqId);
		resp.setDesc("hahahahahahahahh");
		return resp;
	}
//	@Override
//	public void channelReadComplete(ChannelHandlerContext ctx) throws Exception {
//		System.out.println("server channelReadComplete..");
//		ctx.flush();//刷新后才将数据发出到SocketChannel
//	}

	@Override
	public void exceptionCaught(ChannelHandlerContext ctx, Throwable cause)
			throws Exception {
		System.out.println("server exceptionCaught..");
		ctx.close();
	}

}