.class Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService$5;
.super Ljava/lang/Object;
.source "AndroidAdsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->doCacheInterstitials()V
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
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService$5;->this$0:Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 200
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;->values()[Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 203
    return-void

    .line 200
    :cond_0
    aget-object v0, v2, v1

    .line 201
    .local v0, "location":Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService$5;->this$0:Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;

    invoke-static {v4, v0}, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->access$6(Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;Lcom/gaiaonline/monstergalaxy/service/AdsService$Location;)V

    .line 200
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
