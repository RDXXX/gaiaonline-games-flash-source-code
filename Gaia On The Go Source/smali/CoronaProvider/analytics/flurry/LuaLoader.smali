.class public LCoronaProvider/analytics/flurry/LuaLoader;
.super Ljava/lang/Object;
.source "LuaLoader.java"

# interfaces
.implements Lcom/naef/jnlua/JavaFunction;
.implements Lcom/ansca/corona/CoronaRuntimeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LCoronaProvider/analytics/flurry/LuaLoader$1;,
        LCoronaProvider/analytics/flurry/LuaLoader$LogEventWrapper;,
        LCoronaProvider/analytics/flurry/LuaLoader$InitWrapper;
    }
.end annotation


# instance fields
.field private fApplicationId:Ljava/lang/String;

.field private fSessionStarted:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, LCoronaProvider/analytics/flurry/LuaLoader;->fApplicationId:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, LCoronaProvider/analytics/flurry/LuaLoader;->fSessionStarted:Z

    .line 32
    invoke-virtual {p0}, LCoronaProvider/analytics/flurry/LuaLoader;->initialize()V

    .line 33
    return-void
.end method

.method static ToString(Lcom/naef/jnlua/LuaState;I)Ljava/lang/String;
    .locals 4
    .param p0, "L"    # Lcom/naef/jnlua/LuaState;
    .param p1, "index"    # I

    .prologue
    .line 119
    const/4 v0, 0x0

    .line 121
    .local v0, "result":Ljava/lang/String;
    const/4 v2, -0x2

    invoke-virtual {p0, v2}, Lcom/naef/jnlua/LuaState;->type(I)Lcom/naef/jnlua/LuaType;

    move-result-object v1

    .line 122
    .local v1, "t":Lcom/naef/jnlua/LuaType;
    sget-object v2, LCoronaProvider/analytics/flurry/LuaLoader$1;->$SwitchMap$com$naef$jnlua$LuaType:[I

    invoke-virtual {v1}, Lcom/naef/jnlua/LuaType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 128
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 132
    :goto_0
    return-object v0

    .line 125
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/naef/jnlua/LuaState;->toNumber(I)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    .line 126
    goto :goto_0

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public init(Lcom/naef/jnlua/LuaState;)I
    .locals 6
    .param p1, "L"    # Lcom/naef/jnlua/LuaState;

    .prologue
    const/4 v5, 0x1

    .line 94
    const/4 v2, 0x0

    .line 97
    .local v2, "success":Z
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    .line 100
    .local v0, "activity":Lcom/ansca/corona/CoronaActivity;
    iget-boolean v3, p0, LCoronaProvider/analytics/flurry/LuaLoader;->fSessionStarted:Z

    if-nez v3, :cond_0

    iget-object v3, p0, LCoronaProvider/analytics/flurry/LuaLoader;->fApplicationId:Ljava/lang/String;

    if-nez v3, :cond_0

    if-eqz v0, :cond_0

    .line 101
    const-string v3, "android.permission.INTERNET"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/ansca/corona/CoronaActivity;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "appId":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 104
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, LCoronaProvider/analytics/flurry/LuaLoader;->fApplicationId:Ljava/lang/String;

    .line 105
    iput-boolean v5, p0, LCoronaProvider/analytics/flurry/LuaLoader;->fSessionStarted:Z

    .line 106
    invoke-static {v0, v1}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 107
    const/4 v2, 0x1

    .line 112
    .end local v1    # "appId":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1, v2}, Lcom/naef/jnlua/LuaState;->pushBoolean(Z)V

    .line 113
    return v5
.end method

.method protected initialize()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, LCoronaProvider/analytics/flurry/LuaLoader;->fApplicationId:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, LCoronaProvider/analytics/flurry/LuaLoader;->fSessionStarted:Z

    .line 39
    return-void
.end method

.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 6
    .param p1, "L"    # Lcom/naef/jnlua/LuaState;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 46
    invoke-virtual {p0}, LCoronaProvider/analytics/flurry/LuaLoader;->initialize()V

    .line 48
    const/4 v2, 0x2

    new-array v1, v2, [Lcom/naef/jnlua/NamedJavaFunction;

    const/4 v2, 0x0

    new-instance v3, LCoronaProvider/analytics/flurry/LuaLoader$InitWrapper;

    invoke-direct {v3, p0, v5}, LCoronaProvider/analytics/flurry/LuaLoader$InitWrapper;-><init>(LCoronaProvider/analytics/flurry/LuaLoader;LCoronaProvider/analytics/flurry/LuaLoader$1;)V

    aput-object v3, v1, v2

    new-instance v2, LCoronaProvider/analytics/flurry/LuaLoader$LogEventWrapper;

    invoke-direct {v2, p0, v5}, LCoronaProvider/analytics/flurry/LuaLoader$LogEventWrapper;-><init>(LCoronaProvider/analytics/flurry/LuaLoader;LCoronaProvider/analytics/flurry/LuaLoader$1;)V

    aput-object v2, v1, v4

    .line 53
    .local v1, "luaFunctions":[Lcom/naef/jnlua/NamedJavaFunction;
    invoke-virtual {p1, v4}, Lcom/naef/jnlua/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "libName":Ljava/lang/String;
    invoke-virtual {p1, v0, v1}, Lcom/naef/jnlua/LuaState;->register(Ljava/lang/String;[Lcom/naef/jnlua/NamedJavaFunction;)V

    .line 56
    return v4
.end method

.method public logEvent(Lcom/naef/jnlua/LuaState;)I
    .locals 10
    .param p1, "L"    # Lcom/naef/jnlua/LuaState;

    .prologue
    const/16 v9, 0xa

    const/4 v8, 0x1

    .line 138
    iget-boolean v7, p0, LCoronaProvider/analytics/flurry/LuaLoader;->fSessionStarted:Z

    if-eqz v7, :cond_3

    .line 139
    invoke-virtual {p1, v8}, Lcom/naef/jnlua/LuaState;->checkString(I)Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "eventId":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 143
    const/4 v5, 0x2

    .line 145
    .local v5, "paramsIndex":I
    const/16 v2, 0xa

    .line 146
    .local v2, "kMaxParams":I
    invoke-virtual {p1, v5}, Lcom/naef/jnlua/LuaState;->isTable(I)Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v9}, Ljava/util/HashMap;-><init>(I)V

    .line 149
    .local v4, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    if-eqz v4, :cond_4

    .line 152
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->pushNil()V

    .line 153
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v9, :cond_2

    invoke-virtual {p1, v5}, Lcom/naef/jnlua/LuaState;->next(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 154
    const/4 v7, -0x2

    invoke-static {p1, v7}, LCoronaProvider/analytics/flurry/LuaLoader;->ToString(Lcom/naef/jnlua/LuaState;I)Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, "key":Ljava/lang/String;
    const/4 v7, -0x1

    invoke-static {p1, v7}, LCoronaProvider/analytics/flurry/LuaLoader;->ToString(Lcom/naef/jnlua/LuaState;I)Ljava/lang/String;

    move-result-object v6

    .line 157
    .local v6, "value":Ljava/lang/String;
    if-eqz v3, :cond_0

    if-eqz v6, :cond_0

    .line 159
    invoke-virtual {v4, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :cond_0
    invoke-virtual {p1, v8}, Lcom/naef/jnlua/LuaState;->pop(I)V

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 146
    .end local v1    # "i":I
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "value":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 165
    .restart local v1    # "i":I
    .restart local v4    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    invoke-static {v0, v4}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 174
    .end local v0    # "eventId":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "kMaxParams":I
    .end local v4    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "paramsIndex":I
    :cond_3
    :goto_2
    const/4 v7, 0x0

    return v7

    .line 168
    .restart local v0    # "eventId":Ljava/lang/String;
    .restart local v2    # "kMaxParams":I
    .restart local v4    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "paramsIndex":I
    :cond_4
    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onExiting(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 0
    .param p1, "runtime"    # Lcom/ansca/corona/CoronaRuntime;

    .prologue
    .line 90
    return-void
.end method

.method public onLoaded(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 0
    .param p1, "runtime"    # Lcom/ansca/corona/CoronaRuntime;

    .prologue
    .line 62
    return-void
.end method

.method public onResumed(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 2
    .param p1, "runtime"    # Lcom/ansca/corona/CoronaRuntime;

    .prologue
    .line 81
    iget-object v0, p0, LCoronaProvider/analytics/flurry/LuaLoader;->fApplicationId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, LCoronaProvider/analytics/flurry/LuaLoader;->fSessionStarted:Z

    .line 83
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    iget-object v1, p0, LCoronaProvider/analytics/flurry/LuaLoader;->fApplicationId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 85
    :cond_0
    return-void
.end method

.method public onStarted(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 0
    .param p1, "runtime"    # Lcom/ansca/corona/CoronaRuntime;

    .prologue
    .line 67
    return-void
.end method

.method public onSuspended(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 1
    .param p1, "runtime"    # Lcom/ansca/corona/CoronaRuntime;

    .prologue
    .line 72
    iget-object v0, p0, LCoronaProvider/analytics/flurry/LuaLoader;->fApplicationId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, LCoronaProvider/analytics/flurry/LuaLoader;->fSessionStarted:Z

    .line 74
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 76
    :cond_0
    return-void
.end method
