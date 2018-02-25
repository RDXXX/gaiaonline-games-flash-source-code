.class Lcom/naef/jnlua/LuaState$LuaValueProxyRef;
.super Ljava/lang/ref/PhantomReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naef/jnlua/LuaState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LuaValueProxyRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/PhantomReference",
        "<",
        "Lcom/naef/jnlua/LuaState$LuaValueProxyImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private reference:I


# direct methods
.method public constructor <init>(Lcom/naef/jnlua/LuaState$LuaValueProxyImpl;I)V
    .locals 1

    invoke-virtual {p1}, Lcom/naef/jnlua/LuaState$LuaValueProxyImpl;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v0

    invoke-static {v0}, Lcom/naef/jnlua/LuaState;->access$300(Lcom/naef/jnlua/LuaState;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput p2, p0, Lcom/naef/jnlua/LuaState$LuaValueProxyRef;->reference:I

    return-void
.end method


# virtual methods
.method public getReference()I
    .locals 1

    iget v0, p0, Lcom/naef/jnlua/LuaState$LuaValueProxyRef;->reference:I

    return v0
.end method
