.class Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$4;
.super Ljava/lang/Object;
.source "AndroidPlatformHelperImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->hideNativeProgressDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$4;->this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 165
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->access$2()Lcom/gaiaonline/monstergalaxy/platform/MogaProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 167
    :try_start_0
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->access$2()Lcom/gaiaonline/monstergalaxy/platform/MogaProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/platform/MogaProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_0
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->access$1(Lcom/gaiaonline/monstergalaxy/platform/MogaProgressDialog;)V

    .line 177
    :cond_0
    return-void

    .line 168
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "MonsterGalaxy"

    .line 172
    const-string v2, "AndroidPlatformHelperImpl: Failed to dismiss dialog"

    .line 171
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
