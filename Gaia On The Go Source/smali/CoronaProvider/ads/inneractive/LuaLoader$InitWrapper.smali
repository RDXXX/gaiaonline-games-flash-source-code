.class LCoronaProvider/ads/inneractive/LuaLoader$InitWrapper;
.super Ljava/lang/Object;
.source "LuaLoader.java"

# interfaces
.implements Lcom/naef/jnlua/NamedJavaFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LCoronaProvider/ads/inneractive/LuaLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitWrapper"
.end annotation


# instance fields
.field final synthetic this$0:LCoronaProvider/ads/inneractive/LuaLoader;


# direct methods
.method private constructor <init>(LCoronaProvider/ads/inneractive/LuaLoader;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, LCoronaProvider/ads/inneractive/LuaLoader$InitWrapper;->this$0:LCoronaProvider/ads/inneractive/LuaLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LCoronaProvider/ads/inneractive/LuaLoader;LCoronaProvider/ads/inneractive/LuaLoader$1;)V
    .locals 0
    .param p1, "x0"    # LCoronaProvider/ads/inneractive/LuaLoader;
    .param p2, "x1"    # LCoronaProvider/ads/inneractive/LuaLoader$1;

    .prologue
    .line 166
    invoke-direct {p0, p1}, LCoronaProvider/ads/inneractive/LuaLoader$InitWrapper;-><init>(LCoronaProvider/ads/inneractive/LuaLoader;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    const-string v0, "init"

    return-object v0
.end method

.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 1
    .param p1, "L"    # Lcom/naef/jnlua/LuaState;

    .prologue
    .line 177
    iget-object v0, p0, LCoronaProvider/ads/inneractive/LuaLoader$InitWrapper;->this$0:LCoronaProvider/ads/inneractive/LuaLoader;

    invoke-virtual {v0, p1}, LCoronaProvider/ads/inneractive/LuaLoader;->init(Lcom/naef/jnlua/LuaState;)I

    move-result v0

    return v0
.end method
