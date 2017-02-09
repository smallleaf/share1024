package com.share1024.netty;

import java.util.Date;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.Unpooled;
import io.netty.channel.ChannelFuture;
import io.netty.channel.ChannelFutureListener;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.ChannelInboundHandlerAdapter;

/**
 * 
 * @author small leaf
 * Date:   2017年2月7日 下午4:10:37
 */
public class TimeServerHandler extends ChannelInboundHandlerAdapter{
	
	 @Override
	 public void channelRead(final ChannelHandlerContext ctx, Object msg) throws Exception {
		/* ByteBuf time = ctx.alloc().buffer(4);
		 time.writeInt((int)(System.currentTimeMillis()/1000L+123123132L));
		 final ChannelFuture cf = ctx.writeAndFlush(time);
		 cf.addListener(new ChannelFutureListener() {
			
			@Override
			public void operationComplete(ChannelFuture future) throws Exception {
				// TODO Auto-generated method stub
				assert cf == future;
				ctx.close();
			}
		});*/
		 
		 ByteBuf buf = (ByteBuf)msg;
		 byte[] req = new byte[buf.readableBytes()];
		 String body = new String(req,"utf-8");
		 System.out.println("the time server receive order "+body);
		 String currentTime = "yesheng".equalsIgnoreCase(body)?new Date(System.currentTimeMillis()).toString():" no no no";
		 ByteBuf resp = Unpooled.copiedBuffer(currentTime.getBytes());
		 ctx.write(resp);
	 }
	 
	 @Override
	 public void exceptionCaught(ChannelHandlerContext ctx, Throwable cause)
            throws Exception {
		 cause.printStackTrace();
		 ctx.close();
	 }
	 
	 @Override
    public void channelReadComplete(ChannelHandlerContext ctx) throws Exception {
        ctx.flush();
    }
}
