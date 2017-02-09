package com.share1024.netty;

import java.util.Date;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.Unpooled;
import io.netty.channel.ChannelFuture;
import io.netty.channel.ChannelFutureListener;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.ChannelInboundHandlerAdapter;
import io.netty.handler.codec.MessageAggregationException;

/**
 * 
 * @author small leaf Date: 2017年2月7日 下午4:38:01
 */
public class TimeClientHander extends ChannelInboundHandlerAdapter {

	private ByteBuf message;

	@Override
	public void channelRead(final ChannelHandlerContext ctx, Object msg)
			throws Exception {
		/*
		 * ByteBuf m = (ByteBuf) msg; try { long currentTimeMillis =
		 * (m.readUnsignedInt()-123123132L)*1000L; System.out.println(new
		 * Date(currentTimeMillis)); ctx.close(); } catch (Exception e) { //
		 * TODO: handle exception }finally{ m.release(); }
		 */
		ByteBuf buf = (ByteBuf)msg;
		 byte[] req = new byte[buf.readableBytes()];
		 String body = new String(req,"utf-8");
		 System.out.println("now is "+body);
	}

	@Override
	public void channelActive(ChannelHandlerContext ctx) throws Exception {
		byte[] req = "yesheng".getBytes();
		message = Unpooled.buffer(req.length);
		message.writeBytes(req);
	}

	@Override
	public void exceptionCaught(ChannelHandlerContext ctx, Throwable cause)
			throws Exception {
		cause.printStackTrace();
		ctx.close();
	}
}
