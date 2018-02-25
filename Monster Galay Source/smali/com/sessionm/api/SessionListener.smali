.class public interface abstract Lcom/sessionm/api/SessionListener;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static final INTERNAL_ERROR:I = 0x1

.field public static final NETWORK_ERROR:I = 0x0

.field public static final SESSION_REFUSED:I = 0x2

.field public static final USER_INELIGIBLE:I = 0x3


# virtual methods
.method public abstract onSessionFailed(Lcom/sessionm/api/SessionM;I)V
.end method

.method public abstract onSessionStarted(Lcom/sessionm/api/SessionM;)V
.end method

.method public abstract onUserChangedSubscriptionStatus(Lcom/sessionm/api/SessionM;Lcom/sessionm/api/SessionM$USER_SUBSCRIPTION_STATUS;)V
.end method

.method public abstract onUserUpdated(Lcom/sessionm/api/SessionM;Lcom/sessionm/api/User;)V
.end method
