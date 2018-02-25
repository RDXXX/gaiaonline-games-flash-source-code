.class public final Lcom/naef/jnlua/NativeSupport;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naef/jnlua/NativeSupport$1;,
        Lcom/naef/jnlua/NativeSupport$DefaultLoader;,
        Lcom/naef/jnlua/NativeSupport$Loader;
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/naef/jnlua/NativeSupport;


# instance fields
.field private loader:Lcom/naef/jnlua/NativeSupport$Loader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/naef/jnlua/NativeSupport;

    invoke-direct {v0}, Lcom/naef/jnlua/NativeSupport;-><init>()V

    sput-object v0, Lcom/naef/jnlua/NativeSupport;->INSTANCE:Lcom/naef/jnlua/NativeSupport;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/naef/jnlua/NativeSupport$DefaultLoader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/naef/jnlua/NativeSupport$DefaultLoader;-><init>(Lcom/naef/jnlua/NativeSupport;Lcom/naef/jnlua/NativeSupport$1;)V

    iput-object v0, p0, Lcom/naef/jnlua/NativeSupport;->loader:Lcom/naef/jnlua/NativeSupport$Loader;

    return-void
.end method

.method public static getInstance()Lcom/naef/jnlua/NativeSupport;
    .locals 1

    sget-object v0, Lcom/naef/jnlua/NativeSupport;->INSTANCE:Lcom/naef/jnlua/NativeSupport;

    return-object v0
.end method


# virtual methods
.method public getLoader()Lcom/naef/jnlua/NativeSupport$Loader;
    .locals 1

    iget-object v0, p0, Lcom/naef/jnlua/NativeSupport;->loader:Lcom/naef/jnlua/NativeSupport$Loader;

    return-object v0
.end method

.method public setLoader(Lcom/naef/jnlua/NativeSupport$Loader;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "loader must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/naef/jnlua/NativeSupport;->loader:Lcom/naef/jnlua/NativeSupport$Loader;

    return-void
.end method
