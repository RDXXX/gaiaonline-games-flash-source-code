.class public Lnetwork/NetworkGetConnectionStatus;
.super Ljava/lang/Object;
.source "NetworkGetConnectionStatus.java"

# interfaces
.implements Lcom/naef/jnlua/NamedJavaFunction;


# instance fields
.field private fLoader:Lnetwork/LuaLoader;


# direct methods
.method public constructor <init>(Lnetwork/LuaLoader;)V
    .locals 0
    .param p1, "loader"    # Lnetwork/LuaLoader;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lnetwork/NetworkGetConnectionStatus;->fLoader:Lnetwork/LuaLoader;

    .line 27
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string v0, "getConnectionStatus"

    return-object v0
.end method

.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 12
    .param p1, "luaState"    # Lcom/naef/jnlua/LuaState;

    .prologue
    const/4 v11, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 50
    const/4 v3, 0x0

    .line 51
    .local v3, "isConnected":Z
    const/4 v4, 0x0

    .line 54
    .local v4, "isMobile":Z
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 57
    .local v2, "context":Landroid/content/Context;
    const-string v8, "android.permission.ACCESS_NETWORK_STATE"

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v8, "connectivity"

    invoke-virtual {v2, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 61
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 62
    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    .line 65
    if-eqz v3, :cond_0

    .line 67
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    if-eq v8, v6, :cond_1

    move v4, v6

    .line 70
    :cond_0
    :goto_0
    const-string v8, "Is connected: %b, is mobile: %b"

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {v8, v9}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    invoke-virtual {p1, v7, v11}, Lcom/naef/jnlua/LuaState;->newTable(II)V

    .line 74
    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState;->getTop()I

    move-result v5

    .line 75
    .local v5, "luaTableStackIndex":I
    invoke-virtual {p1, v3}, Lcom/naef/jnlua/LuaState;->pushBoolean(Z)V

    .line 76
    const-string v7, "isConnected"

    invoke-virtual {p1, v5, v7}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 77
    invoke-virtual {p1, v4}, Lcom/naef/jnlua/LuaState;->pushBoolean(Z)V

    .line 78
    const-string v7, "isMobile"

    invoke-virtual {p1, v5, v7}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 79
    return v6

    .end local v5    # "luaTableStackIndex":I
    :cond_1
    move v4, v7

    .line 67
    goto :goto_0
.end method
