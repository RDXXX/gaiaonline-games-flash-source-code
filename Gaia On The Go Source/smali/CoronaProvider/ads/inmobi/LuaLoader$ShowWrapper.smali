.class LCoronaProvider/ads/inmobi/LuaLoader$ShowWrapper;
.super Ljava/lang/Object;
.source "LuaLoader.java"

# interfaces
.implements Lcom/naef/jnlua/NamedJavaFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LCoronaProvider/ads/inmobi/LuaLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShowWrapper"
.end annotation


# instance fields
.field final synthetic this$0:LCoronaProvider/ads/inmobi/LuaLoader;


# direct methods
.method private constructor <init>(LCoronaProvider/ads/inmobi/LuaLoader;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, LCoronaProvider/ads/inmobi/LuaLoader$ShowWrapper;->this$0:LCoronaProvider/ads/inmobi/LuaLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LCoronaProvider/ads/inmobi/LuaLoader;LCoronaProvider/ads/inmobi/LuaLoader$1;)V
    .locals 0
    .param p1, "x0"    # LCoronaProvider/ads/inmobi/LuaLoader;
    .param p2, "x1"    # LCoronaProvider/ads/inmobi/LuaLoader$1;

    .prologue
    .line 199
    invoke-direct {p0, p1}, LCoronaProvider/ads/inmobi/LuaLoader$ShowWrapper;-><init>(LCoronaProvider/ads/inmobi/LuaLoader;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    const-string v0, "show"

    return-object v0
.end method

.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 1
    .param p1, "L"    # Lcom/naef/jnlua/LuaState;

    .prologue
    .line 210
    iget-object v0, p0, LCoronaProvider/ads/inmobi/LuaLoader$ShowWrapper;->this$0:LCoronaProvider/ads/inmobi/LuaLoader;

    invoke-virtual {v0, p1}, LCoronaProvider/ads/inmobi/LuaLoader;->show(Lcom/naef/jnlua/LuaState;)I

    move-result v0

    return v0
.end method
