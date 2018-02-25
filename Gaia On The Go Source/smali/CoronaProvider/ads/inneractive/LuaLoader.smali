.class public LCoronaProvider/ads/inneractive/LuaLoader;
.super Ljava/lang/Object;
.source "LuaLoader.java"

# interfaces
.implements Lcom/naef/jnlua/JavaFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LCoronaProvider/ads/inneractive/LuaLoader$CoronaInneractiveFullscreenAdListener;,
        LCoronaProvider/ads/inneractive/LuaLoader$CoronaInneractiveAdListener;,
        LCoronaProvider/ads/inneractive/LuaLoader$HideWrapper;,
        LCoronaProvider/ads/inneractive/LuaLoader$ShowWrapper;,
        LCoronaProvider/ads/inneractive/LuaLoader$InitWrapper;
    }
.end annotation


# instance fields
.field private fAbsoluteLayout:Landroid/widget/AbsoluteLayout;

.field private fAdViewGroup:Landroid/view/ViewGroup;

.field private fApplicationId:Ljava/lang/String;

.field private fDispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

.field private fListener:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p0}, LCoronaProvider/ads/inneractive/LuaLoader;->initialize()V

    .line 42
    return-void
.end method

.method static synthetic access$300(LCoronaProvider/ads/inneractive/LuaLoader;)Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;
    .locals 1
    .param p0, "x0"    # LCoronaProvider/ads/inneractive/LuaLoader;

    .prologue
    .line 24
    iget-object v0, p0, LCoronaProvider/ads/inneractive/LuaLoader;->fDispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    return-object v0
.end method

.method static synthetic access$400(LCoronaProvider/ads/inneractive/LuaLoader;)I
    .locals 1
    .param p0, "x0"    # LCoronaProvider/ads/inneractive/LuaLoader;

    .prologue
    .line 24
    iget v0, p0, LCoronaProvider/ads/inneractive/LuaLoader;->fListener:I

    return v0
.end method

.method static synthetic access$600(LCoronaProvider/ads/inneractive/LuaLoader;)Landroid/widget/AbsoluteLayout;
    .locals 1
    .param p0, "x0"    # LCoronaProvider/ads/inneractive/LuaLoader;

    .prologue
    .line 24
    iget-object v0, p0, LCoronaProvider/ads/inneractive/LuaLoader;->fAbsoluteLayout:Landroid/widget/AbsoluteLayout;

    return-object v0
.end method

.method static synthetic access$602(LCoronaProvider/ads/inneractive/LuaLoader;Landroid/widget/AbsoluteLayout;)Landroid/widget/AbsoluteLayout;
    .locals 0
    .param p0, "x0"    # LCoronaProvider/ads/inneractive/LuaLoader;
    .param p1, "x1"    # Landroid/widget/AbsoluteLayout;

    .prologue
    .line 24
    iput-object p1, p0, LCoronaProvider/ads/inneractive/LuaLoader;->fAbsoluteLayout:Landroid/widget/AbsoluteLayout;

    return-object p1
.end method

.method static synthetic access$700(LCoronaProvider/ads/inneractive/LuaLoader;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # LCoronaProvider/ads/inneractive/LuaLoader;

    .prologue
    .line 24
    iget-object v0, p0, LCoronaProvider/ads/inneractive/LuaLoader;->fAdViewGroup:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$702(LCoronaProvider/ads/inneractive/LuaLoader;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0
    .param p0, "x0"    # LCoronaProvider/ads/inneractive/LuaLoader;
    .param p1, "x1"    # Landroid/view/ViewGroup;

    .prologue
    .line 24
    iput-object p1, p0, LCoronaProvider/ads/inneractive/LuaLoader;->fAdViewGroup:Landroid/view/ViewGroup;

    return-object p1
.end method


# virtual methods
.method public getInneractiveApplicationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, LCoronaProvider/ads/inneractive/LuaLoader;->fApplicationId:Ljava/lang/String;

    return-object v0
.end method

.method public hide(Lcom/naef/jnlua/LuaState;)I
    .locals 1
    .param p1, "L"    # Lcom/naef/jnlua/LuaState;

    .prologue
    .line 162
    invoke-virtual {p0}, LCoronaProvider/ads/inneractive/LuaLoader;->hideInneractiveAd()V

    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public hideInneractiveAd()V
    .locals 2

    .prologue
    .line 524
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    .line 525
    .local v0, "activity":Lcom/ansca/corona/CoronaActivity;
    if-nez v0, :cond_1

    .line 547
    :cond_0
    :goto_0
    return-void

    .line 530
    :cond_1
    iget-object v1, p0, LCoronaProvider/ads/inneractive/LuaLoader;->fAdViewGroup:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 535
    new-instance v1, LCoronaProvider/ads/inneractive/LuaLoader$2;

    invoke-direct {v1, p0}, LCoronaProvider/ads/inneractive/LuaLoader$2;-><init>(LCoronaProvider/ads/inneractive/LuaLoader;)V

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public init(Lcom/naef/jnlua/LuaState;)I
    .locals 6
    .param p1, "L"    # Lcom/naef/jnlua/LuaState;

    .prologue
    .line 81
    const/4 v2, 0x0

    .line 83
    .local v2, "success":Z
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "appId":Ljava/lang/String;
    const-string v3, ""

    iget-object v4, p0, LCoronaProvider/ads/inneractive/LuaLoader;->fApplicationId:Ljava/lang/String;

    if-ne v3, v4, :cond_2

    .line 85
    if-eqz v0, :cond_1

    .line 86
    iput-object v0, p0, LCoronaProvider/ads/inneractive/LuaLoader;->fApplicationId:Ljava/lang/String;

    .line 88
    const/4 v1, 0x3

    .line 89
    .local v1, "listenerIndex":I
    const-string v3, "adsRequest"

    invoke-static {p1, v1, v3}, Lcom/ansca/corona/CoronaLua;->isListener(Lcom/naef/jnlua/LuaState;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 90
    invoke-static {p1, v1}, Lcom/ansca/corona/CoronaLua;->newRef(Lcom/naef/jnlua/LuaState;I)I

    move-result v3

    iput v3, p0, LCoronaProvider/ads/inneractive/LuaLoader;->fListener:I

    .line 93
    :cond_0
    const/4 v2, 0x1

    .line 99
    .end local v1    # "listenerIndex":I
    :cond_1
    :goto_0
    invoke-virtual {p1, v2}, Lcom/naef/jnlua/LuaState;->pushBoolean(Z)V

    .line 101
    const/4 v3, 0x1

    return v3

    .line 96
    :cond_2
    const-string v3, "Corona"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WARNING: ads.init() should only be called once. The application id has already been set to :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, LCoronaProvider/ads/inneractive/LuaLoader;->fApplicationId:Ljava/lang/String;

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
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    iput-object v1, p0, LCoronaProvider/ads/inneractive/LuaLoader;->fDispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    .line 47
    const-string v0, ""

    iput-object v0, p0, LCoronaProvider/ads/inneractive/LuaLoader;->fApplicationId:Ljava/lang/String;

    .line 48
    iput-object v1, p0, LCoronaProvider/ads/inneractive/LuaLoader;->fAdViewGroup:Landroid/view/ViewGroup;

    .line 49
    iput-object v1, p0, LCoronaProvider/ads/inneractive/LuaLoader;->fAbsoluteLayout:Landroid/widget/AbsoluteLayout;

    .line 50
    const/4 v0, -0x1

    iput v0, p0, LCoronaProvider/ads/inneractive/LuaLoader;->fListener:I

    .line 51
    return-void
.end method

.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 7
    .param p1, "L"    # Lcom/naef/jnlua/LuaState;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 58
    invoke-virtual {p0}, LCoronaProvider/ads/inneractive/LuaLoader;->initialize()V

    .line 59
    new-instance v3, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    invoke-direct {v3, p1}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;-><init>(Lcom/naef/jnlua/LuaState;)V

    iput-object v3, p0, LCoronaProvider/ads/inneractive/LuaLoader;->fDispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    .line 62
    const/4 v3, 0x3

    new-array v1, v3, [Lcom/naef/jnlua/NamedJavaFunction;

    const/4 v3, 0x0

    new-instance v4, LCoronaProvider/ads/inneractive/LuaLoader$InitWrapper;

    invoke-direct {v4, p0, v6}, LCoronaProvider/ads/inneractive/LuaLoader$InitWrapper;-><init>(LCoronaProvider/ads/inneractive/LuaLoader;LCoronaProvider/ads/inneractive/LuaLoader$1;)V

    aput-object v4, v1, v3

    new-instance v3, LCoronaProvider/ads/inneractive/LuaLoader$ShowWrapper;

    invoke-direct {v3, p0, v6}, LCoronaProvider/ads/inneractive/LuaLoader$ShowWrapper;-><init>(LCoronaProvider/ads/inneractive/LuaLoader;LCoronaProvider/ads/inneractive/LuaLoader$1;)V

    aput-object v3, v1, v5

    const/4 v3, 0x2

    new-instance v4, LCoronaProvider/ads/inneractive/LuaLoader$HideWrapper;

    invoke-direct {v4, p0, v6}, LCoronaProvider/ads/inneractive/LuaLoader$HideWrapper;-><init>(LCoronaProvider/ads/inneractive/LuaLoader;LCoronaProvider/ads/inneractive/LuaLoader$1;)V

    aput-object v4, v1, v3

    .line 68
    .local v1, "luaFunctions":[Lcom/naef/jnlua/NamedJavaFunction;
    invoke-virtual {p1, v5}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "libName":Ljava/lang/String;
    invoke-virtual {p1, v0, v1}, Lcom/naef/jnlua/LuaState;->register(Ljava/lang/String;[Lcom/naef/jnlua/NamedJavaFunction;)V

    .line 72
    const-string v2, "IA_GameTest"

    .line 73
    .local v2, "testAppId":Ljava/lang/String;
    invoke-virtual {p1, v2}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    .line 74
    const/4 v3, -0x2

    const-string v4, "testAppId"

    invoke-virtual {p1, v3, v4}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 76
    return v5
.end method

.method public isInneractiveAdShown()Z
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, LCoronaProvider/ads/inneractive/LuaLoader;->fAdViewGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setInneractiveApplicationId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 355
    if-eqz p1, :cond_0

    .end local p1    # "id":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, LCoronaProvider/ads/inneractive/LuaLoader;->fApplicationId:Ljava/lang/String;

    .line 356
    return-void

    .line 355
    .restart local p1    # "id":Ljava/lang/String;
    :cond_0
    const-string p1, ""

    goto :goto_0
.end method

.method public show(Lcom/naef/jnlua/LuaState;)I
    .locals 14
    .param p1, "L"    # Lcom/naef/jnlua/LuaState;

    .prologue
    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x1

    const/4 v11, -0x1

    .line 108
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    .line 109
    .local v0, "activity":Lcom/ansca/corona/CoronaActivity;
    if-nez v0, :cond_0

    .line 158
    :goto_0
    return v13

    .line 114
    :cond_0
    const-string v9, "android.permission.INTERNET"

    invoke-virtual {v0, v9, v10}, Lcom/ansca/corona/CoronaActivity;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v9, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v9, v10}, Lcom/ansca/corona/CoronaActivity;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v9, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v9, v10}, Lcom/ansca/corona/CoronaActivity;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const/4 v4, 0x1

    .line 120
    .local v4, "nextArg":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "nextArg":I
    .local v5, "nextArg":I
    invoke-virtual {p1, v4}, Lcom/naef/jnlua/LuaState;->checkString(I)Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "adUnitType":Ljava/lang/String;
    const/4 v7, 0x0

    .line 124
    .local v7, "x":I
    const/4 v8, 0x0

    .line 125
    .local v8, "y":I
    const/16 v3, 0x1e

    .line 126
    .local v3, "intervalInSeconds":I
    move v2, v5

    .line 127
    .local v2, "index":I
    invoke-virtual {p1, v2}, Lcom/naef/jnlua/LuaState;->isTable(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 128
    const-string v9, "x"

    invoke-virtual {p1, v2, v9}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 129
    invoke-virtual {p1, v11}, Lcom/naef/jnlua/LuaState;->isNumber(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 131
    invoke-virtual {p1, v11}, Lcom/naef/jnlua/LuaState;->toNumber(I)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    long-to-int v7, v9

    .line 133
    :cond_1
    invoke-virtual {p1, v12}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 135
    const-string v9, "y"

    invoke-virtual {p1, v2, v9}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 136
    invoke-virtual {p1, v11}, Lcom/naef/jnlua/LuaState;->isNumber(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 138
    invoke-virtual {p1, v11}, Lcom/naef/jnlua/LuaState;->toNumber(I)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    long-to-int v8, v9

    .line 140
    :cond_2
    invoke-virtual {p1, v12}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 142
    const-string v9, "interval"

    invoke-virtual {p1, v2, v9}, Lcom/naef/jnlua/LuaState;->getField(ILjava/lang/String;)V

    .line 143
    invoke-virtual {p1, v11}, Lcom/naef/jnlua/LuaState;->isNumber(I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 145
    invoke-virtual {p1, v11}, Lcom/naef/jnlua/LuaState;->toNumber(I)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    long-to-int v3, v9

    .line 147
    :cond_3
    invoke-virtual {p1, v12}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 150
    :cond_4
    invoke-virtual {v0, v7, v8}, Lcom/ansca/corona/CoronaActivity;->convertCoronaPointToAndroidPoint(II)Landroid/graphics/Point;

    move-result-object v6

    .line 151
    .local v6, "p":Landroid/graphics/Point;
    if-eqz v6, :cond_5

    .line 152
    iget v7, v6, Landroid/graphics/Point;->x:I

    .line 153
    iget v8, v6, Landroid/graphics/Point;->y:I

    .line 157
    :cond_5
    invoke-virtual {p0, v1, v7, v8, v3}, LCoronaProvider/ads/inneractive/LuaLoader;->showInneractiveAd(Ljava/lang/String;III)V

    goto :goto_0
.end method

.method public showInneractiveAd(Ljava/lang/String;III)V
    .locals 13
    .param p1, "adTypeName"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "intervalInSeconds"    # I

    .prologue
    .line 378
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v10

    .line 379
    .local v10, "activity":Lcom/ansca/corona/CoronaActivity;
    if-nez v10, :cond_1

    .line 517
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    iget-object v1, p0, LCoronaProvider/ads/inneractive/LuaLoader;->fApplicationId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 390
    iget-object v3, p0, LCoronaProvider/ads/inneractive/LuaLoader;->fApplicationId:Ljava/lang/String;

    .line 394
    .local v3, "copyOfApplicationId":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    .line 395
    .local v12, "lowerCaseAdTypeName":Ljava/lang/String;
    const-string v1, "banner"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 396
    const/4 v11, 0x0

    .line 409
    .local v11, "integerId":B
    :goto_1
    move v4, v11

    .line 412
    .local v4, "adTypeId":B
    const/16 v9, 0x1e

    .line 413
    .local v9, "MIN_INTERVAL_IN_SECONDS":I
    const/16 v8, 0x12c

    .line 414
    .local v8, "MAX_INTERVAL_IN_SECONDS":I
    const/16 v1, 0x1e

    move/from16 v0, p4

    if-ge v0, v1, :cond_6

    .line 415
    const/16 p4, 0x1e

    .line 416
    const-string v1, "Corona"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Inneractive ads cannot be set up with an interval less than "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v6, 0x1e

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " seconds. Changing the interval to the minimum allowed value."

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_2
    :goto_2
    move/from16 v5, p4

    .line 429
    .local v5, "finalIntervalInSeconds":I
    new-instance v1, LCoronaProvider/ads/inneractive/LuaLoader$1;

    move-object v2, p0

    move v6, p2

    move/from16 v7, p3

    invoke-direct/range {v1 .. v7}, LCoronaProvider/ads/inneractive/LuaLoader$1;-><init>(LCoronaProvider/ads/inneractive/LuaLoader;Ljava/lang/String;BIII)V

    invoke-virtual {v10, v1}, Lcom/ansca/corona/CoronaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 398
    .end local v4    # "adTypeId":B
    .end local v5    # "finalIntervalInSeconds":I
    .end local v8    # "MAX_INTERVAL_IN_SECONDS":I
    .end local v9    # "MIN_INTERVAL_IN_SECONDS":I
    .end local v11    # "integerId":B
    :cond_3
    const-string v1, "text"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 399
    const/4 v11, 0x1

    .restart local v11    # "integerId":B
    goto :goto_1

    .line 401
    .end local v11    # "integerId":B
    :cond_4
    const-string v1, "fullscreen"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 402
    const/4 v11, 0x2

    .restart local v11    # "integerId":B
    goto :goto_1

    .line 405
    .end local v11    # "integerId":B
    :cond_5
    const-string v1, "Corona"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Inneractive does not support ad name \'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\' given to ads.show() function."

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 420
    .restart local v4    # "adTypeId":B
    .restart local v8    # "MAX_INTERVAL_IN_SECONDS":I
    .restart local v9    # "MIN_INTERVAL_IN_SECONDS":I
    .restart local v11    # "integerId":B
    :cond_6
    const/16 v1, 0x12c

    move/from16 v0, p4

    if-le v0, v1, :cond_2

    .line 421
    const/16 p4, 0x12c

    .line 422
    const-string v1, "Corona"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Inneractive ads cannot be set up with an interval greater than "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v6, 0x12c

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " seconds. Changing the interval to the maximum allowed value."

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
