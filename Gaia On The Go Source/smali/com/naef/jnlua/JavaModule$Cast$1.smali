.class Lcom/naef/jnlua/JavaModule$Cast$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/naef/jnlua/TypedJavaObject;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naef/jnlua/JavaModule$Cast;->invoke(Lcom/naef/jnlua/LuaState;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/naef/jnlua/JavaModule$Cast;

.field final synthetic val$clazz:Ljava/lang/Class;

.field final synthetic val$object:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/naef/jnlua/JavaModule$Cast;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lcom/naef/jnlua/JavaModule$Cast$1;->this$0:Lcom/naef/jnlua/JavaModule$Cast;

    iput-object p2, p0, Lcom/naef/jnlua/JavaModule$Cast$1;->val$object:Ljava/lang/Object;

    iput-object p3, p0, Lcom/naef/jnlua/JavaModule$Cast$1;->val$clazz:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/naef/jnlua/JavaModule$Cast$1;->val$object:Ljava/lang/Object;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/naef/jnlua/JavaModule$Cast$1;->val$clazz:Ljava/lang/Class;

    return-object v0
.end method

.method public isStrong()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
