.class public interface abstract Lcom/gaiaonline/monstergalaxy/service/FacebookService;
.super Ljava/lang/Object;
.source "FacebookService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gaiaonline/monstergalaxy/service/FacebookService$OnCompletedHandler;
    }
.end annotation


# virtual methods
.method public abstract authorize(Lcom/gaiaonline/monstergalaxy/service/FacebookService$OnCompletedHandler;)V
.end method

.method public abstract isSessionValid()Z
.end method

.method public abstract logout(Lcom/gaiaonline/monstergalaxy/service/FacebookService$OnCompletedHandler;)V
.end method

.method public abstract postMessage(Lcom/gaiaonline/monstergalaxy/service/FacebookService$OnCompletedHandler;Ljava/lang/String;)V
.end method
