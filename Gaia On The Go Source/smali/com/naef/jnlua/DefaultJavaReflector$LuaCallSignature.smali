.class Lcom/naef/jnlua/DefaultJavaReflector$LuaCallSignature;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naef/jnlua/DefaultJavaReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LuaCallSignature"
.end annotation


# instance fields
.field private clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private hashCode:I

.field private invocableName:Ljava/lang/String;

.field private types:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const v3, 0x1003f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/naef/jnlua/DefaultJavaReflector$LuaCallSignature;->clazz:Ljava/lang/Class;

    iput-object p2, p0, Lcom/naef/jnlua/DefaultJavaReflector$LuaCallSignature;->invocableName:Ljava/lang/String;

    iput-object p3, p0, Lcom/naef/jnlua/DefaultJavaReflector$LuaCallSignature;->types:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/naef/jnlua/DefaultJavaReflector$LuaCallSignature;->hashCode:I

    iget v0, p0, Lcom/naef/jnlua/DefaultJavaReflector$LuaCallSignature;->hashCode:I

    mul-int/2addr v0, v3

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/naef/jnlua/DefaultJavaReflector$LuaCallSignature;->hashCode:I

    const/4 v0, 0x0

    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_0

    iget v1, p0, Lcom/naef/jnlua/DefaultJavaReflector$LuaCallSignature;->hashCode:I

    mul-int/2addr v1, v3

    aget-object v2, p3, v0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/naef/jnlua/DefaultJavaReflector$LuaCallSignature;->hashCode:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v0, p1, Lcom/naef/jnlua/DefaultJavaReflector$LuaCallSignature;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/naef/jnlua/DefaultJavaReflector$LuaCallSignature;

    iget-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector$LuaCallSignature;->clazz:Ljava/lang/Class;

    iget-object v3, p1, Lcom/naef/jnlua/DefaultJavaReflector$LuaCallSignature;->clazz:Ljava/lang/Class;

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector$LuaCallSignature;->invocableName:Ljava/lang/String;

    iget-object v3, p1, Lcom/naef/jnlua/DefaultJavaReflector$LuaCallSignature;->invocableName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/naef/jnlua/DefaultJavaReflector$LuaCallSignature;->types:[Ljava/lang/Object;

    array-length v0, v0

    iget-object v3, p1, Lcom/naef/jnlua/DefaultJavaReflector$LuaCallSignature;->types:[Ljava/lang/Object;

    array-length v3, v3

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/naef/jnlua/DefaultJavaReflector$LuaCallSignature;->types:[Ljava/lang/Object;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcom/naef/jnlua/DefaultJavaReflector$LuaCallSignature;->types:[Ljava/lang/Object;

    aget-object v3, v3, v0

    iget-object v4, p1, Lcom/naef/jnlua/DefaultJavaReflector$LuaCallSignature;->types:[Ljava/lang/Object;

    aget-object v4, v4, v0

    if-ne v3, v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/naef/jnlua/DefaultJavaReflector$LuaCallSignature;->hashCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/naef/jnlua/DefaultJavaReflector$LuaCallSignature;->clazz:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/naef/jnlua/DefaultJavaReflector$LuaCallSignature;->invocableName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/naef/jnlua/DefaultJavaReflector$LuaCallSignature;->types:[Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
