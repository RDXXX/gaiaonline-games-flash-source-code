.class Lcom/naef/jnlua/NativeSupport$DefaultLoader;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/naef/jnlua/NativeSupport$Loader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naef/jnlua/NativeSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultLoader"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/naef/jnlua/NativeSupport;


# direct methods
.method private constructor <init>(Lcom/naef/jnlua/NativeSupport;)V
    .locals 0

    iput-object p1, p0, Lcom/naef/jnlua/NativeSupport$DefaultLoader;->this$0:Lcom/naef/jnlua/NativeSupport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/naef/jnlua/NativeSupport;Lcom/naef/jnlua/NativeSupport$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/naef/jnlua/NativeSupport$DefaultLoader;-><init>(Lcom/naef/jnlua/NativeSupport;)V

    return-void
.end method


# virtual methods
.method public load()V
    .locals 1

    const-string v0, "jnlua5.1"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method
