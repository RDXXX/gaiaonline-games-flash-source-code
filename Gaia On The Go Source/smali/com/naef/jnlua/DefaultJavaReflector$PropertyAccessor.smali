.class Lcom/naef/jnlua/DefaultJavaReflector$PropertyAccessor;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/naef/jnlua/DefaultJavaReflector$Accessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naef/jnlua/DefaultJavaReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PropertyAccessor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/naef/jnlua/DefaultJavaReflector;


# direct methods
.method private constructor <init>(Lcom/naef/jnlua/DefaultJavaReflector;)V
    .locals 0

    iput-object p1, p0, Lcom/naef/jnlua/DefaultJavaReflector$PropertyAccessor;->this$0:Lcom/naef/jnlua/DefaultJavaReflector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isNotStatic()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isStatic()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read(Lcom/naef/jnlua/LuaState;Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public write(Lcom/naef/jnlua/LuaState;Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
