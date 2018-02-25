.class Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService$3;
.super Ljava/lang/Object;
.source "AndroidAdsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->dismissInterstitial()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService$3;->this$0:Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService$3;->this$0:Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->access$2(Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 168
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService$3;->this$0:Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->access$0(Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;)V

    .line 169
    return-void
.end method
