.class Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$5;
.super Ljava/lang/Object;
.source "AndroidPlatformHelperImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->switchKeyboard(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

.field private final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$5;->this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    iput-boolean p2, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$5;->val$visible:Z

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$5;->this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    iget-boolean v1, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$5;->val$visible:Z

    invoke-static {v0, v1}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->access$3(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;Z)V

    .line 190
    return-void
.end method
