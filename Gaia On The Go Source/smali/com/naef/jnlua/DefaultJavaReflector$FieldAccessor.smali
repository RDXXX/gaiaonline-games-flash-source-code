.class Lcom/naef/jnlua/DefaultJavaReflector$FieldAccessor;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/naef/jnlua/DefaultJavaReflector$Accessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naef/jnlua/DefaultJavaReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FieldAccessor"
.end annotation


# instance fields
.field private field:Ljava/lang/reflect/Field;

.field final synthetic this$0:Lcom/naef/jnlua/DefaultJavaReflector;


# direct methods
.method public constructor <init>(Lcom/naef/jnlua/DefaultJavaReflector;Ljava/lang/reflect/Field;)V
    .locals 0

    iput-object p1, p0, Lcom/naef/jnlua/DefaultJavaReflector$FieldAccessor;->this$0:Lcom/naef/jnlua/DefaultJavaReflector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/naef/jnlua/DefaultJavaReflector$FieldAccessor;->field:Ljava/lang/reflect/Field;

    return-void
.end method


# virtual methods
.method public isNotStatic()Z
    .locals 1

    iget-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector$FieldAccessor;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStatic()Z
    .locals 1

    iget-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector$FieldAccessor;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    return v0
.end method

.method public read(Lcom/naef/jnlua/LuaState;Ljava/lang/Object;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector$FieldAccessor;->this$0:Lcom/naef/jnlua/DefaultJavaReflector;

    invoke-static {v0, p2}, Lcom/naef/jnlua/DefaultJavaReflector;->access$700(Lcom/naef/jnlua/DefaultJavaReflector;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    if-ne v0, p2, :cond_0

    const/4 p2, 0x0

    :cond_0
    iget-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector$FieldAccessor;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/naef/jnlua/LuaState;->pushJavaObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public write(Lcom/naef/jnlua/LuaState;Ljava/lang/Object;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector$FieldAccessor;->this$0:Lcom/naef/jnlua/DefaultJavaReflector;

    invoke-static {v0, p2}, Lcom/naef/jnlua/DefaultJavaReflector;->access$700(Lcom/naef/jnlua/DefaultJavaReflector;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    if-ne v0, p2, :cond_0

    const/4 p2, 0x0

    :cond_0
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/naef/jnlua/DefaultJavaReflector$FieldAccessor;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/naef/jnlua/LuaState;->checkJavaObject(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/naef/jnlua/DefaultJavaReflector$FieldAccessor;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
