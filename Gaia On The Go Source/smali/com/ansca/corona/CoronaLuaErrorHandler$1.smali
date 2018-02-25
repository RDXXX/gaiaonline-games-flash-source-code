.class Lcom/ansca/corona/CoronaLuaErrorHandler$1;
.super Ljava/lang/Object;
.source "CoronaLuaErrorHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/CoronaLuaErrorHandler;->invoke(Lcom/naef/jnlua/LuaState;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/CoronaLuaErrorHandler;


# direct methods
.method constructor <init>(Lcom/ansca/corona/CoronaLuaErrorHandler;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/ansca/corona/CoronaLuaErrorHandler$1;->this$0:Lcom/ansca/corona/CoronaLuaErrorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 100
    invoke-static {}, Lcom/ansca/corona/Controller;->getController()Lcom/ansca/corona/Controller;

    move-result-object v0

    .line 101
    .local v0, "controller":Lcom/ansca/corona/Controller;
    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0}, Lcom/ansca/corona/Controller;->stop()V

    .line 104
    :cond_0
    return-void
.end method
