.class public interface abstract Lcom/gaiaonline/monstergalaxy/analytics/Analytics;
.super Ljava/lang/Object;
.source "Analytics.java"


# static fields
.field public static final CAPTURE_MOGA_SESSIONM_EVENT:Ljava/lang/String; = "Capture Moga"

.field public static final PERFECT_ATTAKS_SESSIONM_EVENT:Ljava/lang/String; = "Perfect Attack"


# virtual methods
.method public abstract sessionMLogEvent(Ljava/lang/String;)V
.end method

.method public abstract sessionMPauseActivity()V
.end method

.method public abstract sessionMPresentActivity()V
.end method

.method public abstract sessionMPresentPortal()V
.end method

.method public abstract sessionMResumeActivity()V
.end method

.method public abstract sessionMStartActivity()V
.end method

.method public abstract sessionMStopActivity()V
.end method

.method public abstract trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract trackRevenue(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract uploadPurchaseEvent(Ljava/lang/String;D)V
.end method

.method public abstract uploadRegistrationEvent(Ljava/lang/String;)V
.end method
