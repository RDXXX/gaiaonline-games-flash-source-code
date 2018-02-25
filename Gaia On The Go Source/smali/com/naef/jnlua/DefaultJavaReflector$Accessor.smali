.class interface abstract Lcom/naef/jnlua/DefaultJavaReflector$Accessor;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naef/jnlua/DefaultJavaReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "Accessor"
.end annotation


# virtual methods
.method public abstract isNotStatic()Z
.end method

.method public abstract isStatic()Z
.end method

.method public abstract read(Lcom/naef/jnlua/LuaState;Ljava/lang/Object;)V
.end method

.method public abstract write(Lcom/naef/jnlua/LuaState;Ljava/lang/Object;)V
.end method
