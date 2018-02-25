.class public LCoronaProvider/ads/inmobi/LuaLoader;
.super Ljava/lang/Object;
.source "LuaLoader.java"

# interfaces
.implements Lcom/naef/jnlua/JavaFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LCoronaProvider/ads/inmobi/LuaLoader$CoronaInMobiAdDelegate;,
        LCoronaProvider/ads/inmobi/LuaLoader$HideWrapper;,
        LCoronaProvider/ads/inmobi/LuaLoader$ShowWrapper;,
        LCoronaProvider/ads/inmobi/LuaLoader$InitWrapper;
    }
.end annotation


# instance fields
.field private fAbsoluteLayout:Landroid/widget/AbsoluteLayout;

.field private fApplicationId:Ljava/lang/String;

.field private fDispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

.field private fInMobiBannerView:Lcom/inmobi/androidsdk/impl/InMobiAdView;

.field private fInMobiTimer:Ljava/util/Timer;

.field private fListener:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, LCoronaProvider/ads/inmobi/LuaLoader;->fDispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    .line 37
    const-string v0, ""

    iput-object v0, p0, LCoronaProvider/ads/inmobi/LuaLoader;->fApplicationId:Ljava/lang/String;

    .line 47
    const/4 v0, -0x1

    iput v0, p0, LCoronaProvider/ads/inmobi/LuaLoader;->fListener:I

    .line 53
    invoke-virtual {p0}, LCoronaProvider/ads/inmobi/LuaLoader;->initialize()V

    .line 54
    return-void
.end method

.method static synthetic access$300(LCoronaProvider/ads/inmobi/LuaLoader;)Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;
    .locals 1
    .param p0, "x0"    # LCoronaProvider/ads/inmobi/LuaLoader;

    .prologue
    .line 32
    iget-object v0, p0, LCoronaProvider/ads/inmobi/LuaLoader;->fDispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    return-object v0
.end method

.method static synthetic access$400(LCoronaProvider/ads/inmobi/LuaLoader;)I
    .locals 1
    .param p0, "x0"    # LCoronaProvider/ads/inmobi/LuaLoader;

    .prologue
    .line 32
    iget v0, p0, LCoronaProvider/ads/inmobi/LuaLoader;->fListener:I

    return v0
.end method

.method static synthetic access$500(LCoronaProvider/ads/inmobi/LuaLoader;)Landroid/widget/AbsoluteLayout;
    .locals 1
    .param p0, "x0"    # LCoronaProvider/ads/inmobi/LuaLoader;

    .prologue
    .line 32
    iget-object v0, p0, LCoronaProvider/ads/inmobi/LuaLoader;->fAbsoluteLayout:Landroid/widget/AbsoluteLayout;

    return-object v0
.end method

.method static synthetic access$502(LCoronaProvider/ads/inmobi/LuaLoader;Landroid/widget/AbsoluteLayout;)Landroid/widget/AbsoluteLayout;
    .locals 0
    .param p0, "x0"    # LCoronaProvider/ads/inmobi/LuaLoader;
    .param p1, "x1"    # Landroid/widget/AbsoluteLayout;

    .prologue
    .line 32
    iput-object p1, p0, LCoronaProvider/ads/inmobi/LuaLoader;->fAbsoluteLayout:Landroid/widget/AbsoluteLayout;

    return-object p1
.end method

.method static synthetic access$600(LCoronaProvider/ads/inmobi/LuaLoader;)Lcom/inmobi/androidsdk/impl/InMobiAdView;
    .locals 1
    .param p0, "x0"    # LCoronaProvider/ads/inmobi/LuaLoader;

    .prologue
    .line 32
    iget-object v0, p0, LCoronaProvider/ads/inmobi/LuaLoader;->fInMobiBannerView:Lcom/inmobi/androidsdk/impl/InMobiAdView;

    return-object v0
.end method

.method static synthetic access$602(LCoronaProvider/ads/inmobi/LuaLoader;Lcom/inmobi/androidsdk/impl/InMobiAdView;)Lcom/inmobi/androidsdk/impl/InMobiAdView;
    .locals 0
    .param p0, "x0"    # LCoronaProvider/ads/inmobi/LuaLoader;
    .param p1, "x1"    # Lcom/inmobi/androidsdk/impl/InMobiAdView;

    .prologue
    .line 32
    iput-object p1, p0, LCoronaProvider/ads/inmobi/LuaLoader;->fInMobiBannerView:Lcom/inmobi/androidsdk/impl/InMobiAdView;

    return-object p1
.end method

.method static synthetic access$700(LCoronaProvider/ads/inmobi/LuaLoader;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # LCoronaProvider/ads/inmobi/LuaLoader;

    .prologue
    .line 32
    iget-object v0, p0, LCoronaProvider/ads/inmobi/LuaLoader;->fInMobiTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$702(LCoronaProvider/ads/inmobi/LuaLoader;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .param p0, "x0"    # LCoronaProvider/ads/inmobi/LuaLoader;
    .param p1, "x1"    # Ljava/util/Timer;

    .prologue
    .line 32
    iput-object p1, p0, LCoronaProvider/ads/inmobi/LuaLoader;->fInMobiTimer:Ljava/util/Timer;

    return-object p1
.end method


# virtual methods
.method public hide(Lcom/naef/jnlua/LuaState;)I
    .locals 1
    .param p1, "L"    # Lcom/naef/jnlua/LuaState;

    .prologue
    .line 180
    invoke-virtual {p0}, LCoronaProvider/ads/inmobi/LuaLoader;->hideInMobiAd()V

    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public hideInMobiAd()V
    .locals 2

    .prologue
    .line 565
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    .line 566
    .local v0, "activity":Lcom/ansca/corona/CoronaActivity;
    if-nez v0, :cond_1

    .line 593
    :cond_0
    :goto_0
    return-void

    .line 571
    :cond_1
    iget-object v1, p0, LCoronaProvider/ads/inmobi/LuaLoader;->fInMobiBannerView:Lcom/inmobi/androidsdk/impl/InMobiAdView;

    if-eqz v1, :cond_0

    .line 576
    new-instance v1, LCoronaProvider/ads/inmobi/LuaLoader$2;

    invoke-direct {v1, p0}, LCoronaProvider/ads/inmobi/LuaLoader$2;-><init>(LCoronaProvider/ads/inmobi/LuaLoader;)V

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public init(Lcom/naef/jnlua/LuaState;)I
    .locals 6
    .param p1, "L"    # Lcom/naef/jnlua/LuaState;

    .prologue
    .line 91
    const/4 v2, 0x0

    .line 93
    .local v2, "success":Z
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "appId":Ljava/lang/String;
    const-string v3, ""

    iget-object v4, p0, LCoronaProvider/ads/inmobi/LuaLoader;->fApplicationId:Ljava/lang/String;

    if-ne v3, v4, :cond_2

    .line 95
    if-eqz v0, :cond_1

    .line 96
    iput-object v0, p0, LCoronaProvider/ads/inmobi/LuaLoader;->fApplicationId:Ljava/lang/String;

    .line 98
    const/4 v1, 0x3

    .line 99
    .local v1, "listenerIndex":I
    const-string v3, "adsRequest"

    invoke-static {p1, v1, v3}, Lcom/ansca/corona/CoronaLua;->isListener(Lcom/naef/jnlua/LuaState;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 100
    invoke-static {p1, v1}, Lcom/ansca/corona/CoronaLua;->newRef(Lcom/naef/jnlua/LuaState;I)I

    move-result v3

    iput v3, p0, LCoronaProvider/ads/inmobi/LuaLoader;->fListener:I

    .line 103
    :cond_0
    const/4 v2, 0x1

    .line 109
    .end local v1    # "listenerIndex":I
    :cond_1
    :goto_0
    invoke-virtual {p1, v2}, Lcom/naef/jnlua/LuaState;->pushBoolean(Z)V

    .line 111
    const/4 v3, 0x1

    return v3

    .line 106
    :cond_2
    const-string v3, "Corona"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WARNING: ads.init() should only be called once. The application id has already been set to :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, LCoronaProvider/ads/inmobi/LuaLoader;->fApplicationId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected initialize()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, LCoronaProvider/ads/inmobi/LuaLoader;->fDispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    .line 59
    const-string v0, ""

    iput-object v0, p0, LCoronaProvider/ads/inmobi/LuaLoader;->fApplicationId:Ljava/lang/String;

    .line 60
    const/4 v0, -0x1

    iput v0, p0, LCoronaProvider/ads/inmobi/LuaLoader;->fListener:I

    .line 61
    return-void
.end method

.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 7
    .param p1, "L"    # Lcom/naef/jnlua/LuaState;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 68
    invoke-virtual {p0}, LCoronaProvider/ads/inmobi/LuaLoader;->initialize()V

    .line 69
    new-instance v3, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    invoke-direct {v3, p1}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;-><init>(Lcom/naef/jnlua/LuaState;)V

    iput-object v3, p0, LCoronaProvider/ads/inmobi/LuaLoader;->fDispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    .line 72
    const/4 v3, 0x3

    new-array v1, v3, [Lcom/naef/jnlua/NamedJavaFunction;

    const/4 v3, 0x0

    new-instance v4, LCoronaProvider/ads/inmobi/LuaLoader$InitWrapper;

    invoke-direct {v4, p0, v6}, LCoronaProvider/ads/inmobi/LuaLoader$InitWrapper;-><init>(LCoronaProvider/ads/inmobi/LuaLoader;LCoronaProvider/ads/inmobi/LuaLoader$1;)V

    aput-object v4, v1, v3

    new-instance v3, LCoronaProvider/ads/inmobi/LuaLoader$ShowWrapper;

    invoke-direct {v3, p0, v6}, LCoronaProvider/ads/inmobi/LuaLoader$ShowWrapper;-><init>(LCoronaProvider/ads/inmobi/LuaLoader;LCoronaProvider/ads/inmobi/LuaLoader$1;)V

    aput-object v3, v1, v5

    const/4 v3, 0x2

    new-instance v4, LCoronaProvider/ads/inmobi/LuaLoader$HideWrapper;

    invoke-direct {v4, p0, v6}, LCoronaProvider/ads/inmobi/LuaLoader$HideWrapper;-><init>(LCoronaProvider/ads/inmobi/LuaLoader;LCoronaProvider/ads/inmobi/LuaLoader$1;)V

    aput-object v4, v1, v3

    .line 78
    .local v1, "luaFunctions":[Lcom/naef/jnlua/NamedJavaFunction;
    invoke-virtual {p1, v5}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "libName":Ljava/lang/String;
    invoke-virtual {p1, v0, v1}, Lcom/naef/jnlua/LuaState;->register(Ljava/lang/String;[Lcom/naef/jnlua/NamedJavaFunction;)V

    .line 82
    const-string v2, "4028cb962895efc50128fc99d4b7025b"

    .line 83
    .local v2, "testAppId":Ljava/lang/String;
    invoke-virtual {p1, v2}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    .line 84
    const/4 v3, -0x2

    const-string v4, "testAppId"

    invoke-virtual {p1, v3, v4}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 86
    return v5
.end method

.method public isInMobiAdShown()Z
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, LCoronaProvider/ads/inmobi/LuaLoader;->fInMobiBannerView:Lcom/inmobi/androidsdk/impl/InMobiAdView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public show(Lcom/naef/jnlua/LuaState;)I
    .locals 16
    .param p1, "L"    # Lcom/naef/jnlua/LuaState;

    .prologue
    .line 118
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v8

    .line 119
    .local v8, "activity":Lcom/ansca/corona/CoronaActivity;
    if-nez v8, :cond_0

    .line 120
    const/4 v1, 0x0

    .line 176
    :goto_0
    return v1

    .line 124
    :cond_0
    const-string v1, "android.permission.INTERNET"

    const/4 v3, 0x0

    invoke-virtual {v8, v1, v3}, Lcom/ansca/corona/CoronaActivity;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v3, 0x0

    invoke-virtual {v8, v1, v3}, Lcom/ansca/corona/CoronaActivity;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    const/4 v3, 0x0

    invoke-virtual {v8, v1, v3}, Lcom/ansca/corona/CoronaActivity;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const/4 v11, 0x1

    .line 130
    .local v11, "nextArg":I
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "nextArg":I
    .local v12, "nextArg":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/naef/jnlua/LuaState;->checkString(I)Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, "adUnitType":Ljava/lang/String;
    const/4 v14, 0x0

    .line 134
    .local v14, "x":I
    const/4 v15, 0x0

    .line 135
    .local v15, "y":I
    const/4 v7, 0x1

    .line 136
    .local v7, "testModeEnabled":Z
    const/16 v10, 0xa

    .line 137
    .local v10, "intervalInSeconds":I
    move v9, v12

    .line 138
    .local v9, "index":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/naef/jnlua/LuaState;->isTable(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 139
    const-string v1, "x"

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v1}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 140
    const/4 v1, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/naef/jnlua/LuaState;->isNumber(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    const/4 v1, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/naef/jnlua/LuaState;->toNumber(I)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v14, v3

    .line 144
    :cond_1
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 146
    const-string v1, "y"

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v1}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 147
    const/4 v1, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/naef/jnlua/LuaState;->isNumber(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 149
    const/4 v1, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/naef/jnlua/LuaState;->toNumber(I)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v15, v3

    .line 151
    :cond_2
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 153
    const-string v1, "testMode"

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v1}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 154
    const/4 v1, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/naef/jnlua/LuaState;->isBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 156
    const/4 v1, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/naef/jnlua/LuaState;->toBoolean(I)Z

    move-result v7

    .line 158
    :cond_3
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 160
    const-string v1, "interval"

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v1}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 161
    const/4 v1, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/naef/jnlua/LuaState;->isNumber(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 163
    const/4 v1, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/naef/jnlua/LuaState;->toNumber(I)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v10, v3

    .line 165
    :cond_4
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 168
    :cond_5
    invoke-virtual {v8, v14, v15}, Lcom/ansca/corona/CoronaActivity;->convertCoronaPointToAndroidPoint(II)Landroid/graphics/Point;

    move-result-object v13

    .line 169
    .local v13, "p":Landroid/graphics/Point;
    if-eqz v13, :cond_6

    .line 170
    iget v14, v13, Landroid/graphics/Point;->x:I

    .line 171
    iget v15, v13, Landroid/graphics/Point;->y:I

    .line 175
    :cond_6
    int-to-float v3, v14

    int-to-float v4, v15

    int-to-double v5, v10

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, LCoronaProvider/ads/inmobi/LuaLoader;->showInMobiAd(Ljava/lang/String;FFDZ)V

    .line 176
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public showInMobiAd(Ljava/lang/String;FFDZ)V
    .locals 10
    .param p1, "bannerTypeName"    # Ljava/lang/String;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "intervalInSeconds"    # D
    .param p6, "testModeEnabled"    # Z

    .prologue
    .line 443
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v9

    .line 444
    .local v9, "activity":Lcom/ansca/corona/CoronaActivity;
    if-nez v9, :cond_1

    .line 558
    :cond_0
    :goto_0
    return-void

    .line 449
    :cond_1
    iget-object v0, p0, LCoronaProvider/ads/inmobi/LuaLoader;->fApplicationId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, LCoronaProvider/ads/inmobi/LuaLoader;->fApplicationId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 455
    iget-object v3, p0, LCoronaProvider/ads/inmobi/LuaLoader;->fApplicationId:Ljava/lang/String;

    .line 458
    .local v3, "copyOfApplicationId":Ljava/lang/String;
    new-instance v0, LCoronaProvider/ads/inmobi/LuaLoader$1;

    move-object v1, p0

    move-object v2, p1

    move/from16 v4, p6

    move v5, p2

    move v6, p3

    move-wide v7, p4

    invoke-direct/range {v0 .. v8}, LCoronaProvider/ads/inmobi/LuaLoader$1;-><init>(LCoronaProvider/ads/inmobi/LuaLoader;Ljava/lang/String;Ljava/lang/String;ZFFD)V

    invoke-virtual {v9, v0}, Lcom/ansca/corona/CoronaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
