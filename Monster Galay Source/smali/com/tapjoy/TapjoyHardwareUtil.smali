.class public Lcom/tapjoy/TapjoyHardwareUtil;
.super Ljava/lang/Object;
.source "TapjoyHardwareUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method public getSerial()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    return-object v0
.end method
