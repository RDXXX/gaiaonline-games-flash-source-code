.class LCoronaProvider/ads/inmobi/LuaLoader$CoronaInMobiAdDelegate;
.super Ljava/lang/Object;
.source "LuaLoader.java"

# interfaces
.implements Lcom/inmobi/androidsdk/InMobiAdDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LCoronaProvider/ads/inmobi/LuaLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CoronaInMobiAdDelegate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LCoronaProvider/ads/inmobi/LuaLoader$CoronaInMobiAdDelegate$ChangeInMobiVisibilityOperation;
    }
.end annotation


# instance fields
.field private fApplicationId:Ljava/lang/String;

.field private fIsTestModeEnabled:Z

.field final synthetic this$0:LCoronaProvider/ads/inmobi/LuaLoader;


# direct methods
.method public constructor <init>(LCoronaProvider/ads/inmobi/LuaLoader;Ljava/lang/String;Z)V
    .locals 0
    .param p2, "applicationId"    # Ljava/lang/String;
    .param p3, "testModeEnabled"    # Z

    .prologue
    .line 238
    iput-object p1, p0, LCoronaProvider/ads/inmobi/LuaLoader$CoronaInMobiAdDelegate;->this$0:LCoronaProvider/ads/inmobi/LuaLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    iput-object p2, p0, LCoronaProvider/ads/inmobi/LuaLoader$CoronaInMobiAdDelegate;->fApplicationId:Ljava/lang/String;

    .line 240
    iput-boolean p3, p0, LCoronaProvider/ads/inmobi/LuaLoader$CoronaInMobiAdDelegate;->fIsTestModeEnabled:Z

    .line 241
    return-void
.end method

.method private raiseAdRequestEvent(Z)V
    .locals 3
    .param p1, "isError"    # Z

    .prologue
    .line 297
    iget-object v2, p0, LCoronaProvider/ads/inmobi/LuaLoader$CoronaInMobiAdDelegate;->this$0:LCoronaProvider/ads/inmobi/LuaLoader;

    invoke-static {v2}, LCoronaProvider/ads/inmobi/LuaLoader;->access$300(LCoronaProvider/ads/inmobi/LuaLoader;)Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object v0

    .line 301
    .local v0, "dispatcher":Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;
    new-instance v1, LCoronaProvider/ads/inmobi/LuaLoader$CoronaInMobiAdDelegate$1;

    invoke-direct {v1, p0, p1}, LCoronaProvider/ads/inmobi/LuaLoader$CoronaInMobiAdDelegate$1;-><init>(LCoronaProvider/ads/inmobi/LuaLoader$CoronaInMobiAdDelegate;Z)V

    .line 329
    .local v1, "task":Lcom/ansca/corona/CoronaRuntimeTask;
    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    .line 330
    return-void
.end method


# virtual methods
.method public adRequestCompleted(Lcom/inmobi/androidsdk/impl/InMobiAdView;)V
    .locals 3
    .param p1, "adView"    # Lcom/inmobi/androidsdk/impl/InMobiAdView;

    .prologue
    const/4 v2, 0x0

    .line 247
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {p1}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, LCoronaProvider/ads/inmobi/LuaLoader$CoronaInMobiAdDelegate$ChangeInMobiVisibilityOperation;

    invoke-direct {v1, p0, p1, v2}, LCoronaProvider/ads/inmobi/LuaLoader$CoronaInMobiAdDelegate$ChangeInMobiVisibilityOperation;-><init>(LCoronaProvider/ads/inmobi/LuaLoader$CoronaInMobiAdDelegate;Lcom/inmobi/androidsdk/impl/InMobiAdView;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 252
    :cond_0
    invoke-direct {p0, v2}, LCoronaProvider/ads/inmobi/LuaLoader$CoronaInMobiAdDelegate;->raiseAdRequestEvent(Z)V

    .line 253
    return-void
.end method

.method public adRequestFailed(Lcom/inmobi/androidsdk/impl/InMobiAdView;)V
    .locals 3
    .param p1, "adView"    # Lcom/inmobi/androidsdk/impl/InMobiAdView;

    .prologue
    .line 259
    const-string v0, "Corona"

    const-string v1, "InMobi ad request failed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {p1}, Lcom/inmobi/androidsdk/impl/InMobiAdView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, LCoronaProvider/ads/inmobi/LuaLoader$CoronaInMobiAdDelegate$ChangeInMobiVisibilityOperation;

    const/16 v2, 0x8

    invoke-direct {v1, p0, p1, v2}, LCoronaProvider/ads/inmobi/LuaLoader$CoronaInMobiAdDelegate$ChangeInMobiVisibilityOperation;-><init>(LCoronaProvider/ads/inmobi/LuaLoader$CoronaInMobiAdDelegate;Lcom/inmobi/androidsdk/impl/InMobiAdView;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 268
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, LCoronaProvider/ads/inmobi/LuaLoader$CoronaInMobiAdDelegate;->raiseAdRequestEvent(Z)V

    .line 269
    return-void
.end method

.method public age()I
    .locals 1

    .prologue
    .line 341
    const/4 v0, 0x0

    return v0
.end method

.method public areaCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 347
    const/4 v0, 0x0

    return-object v0
.end method

.method public currentLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 353
    const/4 v0, 0x0

    return-object v0
.end method

.method public dateOfBirth()Ljava/util/Date;
    .locals 1

    .prologue
    .line 359
    const/4 v0, 0x0

    return-object v0
.end method

.method public education()Lcom/inmobi/androidsdk/EducationType;
    .locals 1

    .prologue
    .line 365
    const/4 v0, 0x0

    return-object v0
.end method

.method public ethnicity()Lcom/inmobi/androidsdk/EthnicityType;
    .locals 1

    .prologue
    .line 371
    const/4 v0, 0x0

    return-object v0
.end method

.method public gender()Lcom/inmobi/androidsdk/GenderType;
    .locals 1

    .prologue
    .line 377
    const/4 v0, 0x0

    return-object v0
.end method

.method public income()I
    .locals 1

    .prologue
    .line 383
    const/4 v0, 0x0

    return v0
.end method

.method public interests()Ljava/lang/String;
    .locals 1

    .prologue
    .line 389
    const/4 v0, 0x0

    return-object v0
.end method

.method public isLocationInquiryAllowed()Z
    .locals 1

    .prologue
    .line 395
    const/4 v0, 0x0

    return v0
.end method

.method public isPublisherProvidingLocation()Z
    .locals 1

    .prologue
    .line 401
    const/4 v0, 0x0

    return v0
.end method

.method public keywords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 407
    const/4 v0, 0x0

    return-object v0
.end method

.method public postalCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 413
    const/4 v0, 0x0

    return-object v0
.end method

.method public searchString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 419
    const/4 v0, 0x0

    return-object v0
.end method

.method public siteId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, LCoronaProvider/ads/inmobi/LuaLoader$CoronaInMobiAdDelegate;->fApplicationId:Ljava/lang/String;

    return-object v0
.end method

.method public testMode()Z
    .locals 1

    .prologue
    .line 425
    iget-boolean v0, p0, LCoronaProvider/ads/inmobi/LuaLoader$CoronaInMobiAdDelegate;->fIsTestModeEnabled:Z

    return v0
.end method
