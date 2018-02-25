.class public Lcom/fiksu/asotracking/FiksuIntegrationError;
.super Ljava/lang/RuntimeException;
.source "FiksuIntegrationError.java"


# static fields
.field private static final serialVersionUID:J = 0x2241903462b2445fL


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 18
    return-void
.end method
