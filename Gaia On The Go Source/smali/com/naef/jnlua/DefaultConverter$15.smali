.class final Lcom/naef/jnlua/DefaultConverter$15;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/naef/jnlua/DefaultConverter$JavaObjectConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naef/jnlua/DefaultConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/naef/jnlua/DefaultConverter$JavaObjectConverter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/naef/jnlua/LuaState;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/naef/jnlua/DefaultConverter$15;->convert(Lcom/naef/jnlua/LuaState;Ljava/lang/String;)V

    return-void
.end method

.method public convert(Lcom/naef/jnlua/LuaState;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    return-void
.end method
