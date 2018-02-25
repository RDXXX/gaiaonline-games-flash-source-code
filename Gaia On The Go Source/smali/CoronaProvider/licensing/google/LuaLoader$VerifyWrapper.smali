.class LCoronaProvider/licensing/google/LuaLoader$VerifyWrapper;
.super Ljava/lang/Object;
.source "LuaLoader.java"

# interfaces
.implements Lcom/naef/jnlua/NamedJavaFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LCoronaProvider/licensing/google/LuaLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VerifyWrapper"
.end annotation


# instance fields
.field final synthetic this$0:LCoronaProvider/licensing/google/LuaLoader;


# direct methods
.method private constructor <init>(LCoronaProvider/licensing/google/LuaLoader;)V
    .locals 0

    .prologue
    .line 362
    iput-object p1, p0, LCoronaProvider/licensing/google/LuaLoader$VerifyWrapper;->this$0:LCoronaProvider/licensing/google/LuaLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LCoronaProvider/licensing/google/LuaLoader;LCoronaProvider/licensing/google/LuaLoader$1;)V
    .locals 0
    .param p1, "x0"    # LCoronaProvider/licensing/google/LuaLoader;
    .param p2, "x1"    # LCoronaProvider/licensing/google/LuaLoader$1;

    .prologue
    .line 362
    invoke-direct {p0, p1}, LCoronaProvider/licensing/google/LuaLoader$VerifyWrapper;-><init>(LCoronaProvider/licensing/google/LuaLoader;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 367
    const-string v0, "verify"

    return-object v0
.end method

.method public invoke(Lcom/naef/jnlua/LuaState;)I
    .locals 1
    .param p1, "L"    # Lcom/naef/jnlua/LuaState;

    .prologue
    .line 375
    iget-object v0, p0, LCoronaProvider/licensing/google/LuaLoader$VerifyWrapper;->this$0:LCoronaProvider/licensing/google/LuaLoader;

    invoke-virtual {v0, p1}, LCoronaProvider/licensing/google/LuaLoader;->verify(Lcom/naef/jnlua/LuaState;)I

    move-result v0

    return v0
.end method
