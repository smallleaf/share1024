package com.share1024.netty;

import io.netty.buffer.ByteBuf;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.ChannelInboundHandlerAdapter;

/**
 * 
 * @author small leaf
 * Date:   2017年2月7日 下午4:10:37
 */
public class DiscardServerHandler extends ChannelInboundHandlerAdapter{
	
	 @Override
	 public void channelRead(ChannelHandlerContext ctx, Object msg) throws Exception {
		 ((ByteBuf)msg).release();
	 }
	 
	 @Override
	 public void exceptionCaught(ChannelHandlerContext ctx, Throwable cause)
            throws Exception {
		 cause.printStackTrace();
		 ctx.close();
	 }
}
