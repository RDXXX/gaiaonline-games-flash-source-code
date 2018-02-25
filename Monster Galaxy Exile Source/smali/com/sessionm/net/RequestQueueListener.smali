.class public interface abstract Lcom/sessionm/net/RequestQueueListener;
.super Ljava/lang/Object;
.source "ProGuard"


# virtual methods
.method public abstract onQueueConnected(Lcom/sessionm/net/RequestQueue;)V
.end method

.method public abstract onQueueDisconnected(Lcom/sessionm/net/RequestQueue;)V
.end method

.method public abstract onQueueStarted(Lcom/sessionm/net/RequestQueue;)V
.end method

.method public abstract onQueueStopped(Lcom/sessionm/net/RequestQueue;)V
.end method

.method public abstract onReplyReceived(Lcom/sessionm/net/RequestQueue;Lcom/sessionm/net/Request;)V
.end method

.method public abstract onRequestSent(Lcom/sessionm/net/RequestQueue;Lcom/sessionm/net/Request;)V
.end method
