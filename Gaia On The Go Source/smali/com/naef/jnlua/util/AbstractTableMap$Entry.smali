.class Lcom/naef/jnlua/util/AbstractTableMap$Entry;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naef/jnlua/util/AbstractTableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<TK;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/naef/jnlua/util/AbstractTableMap;


# direct methods
.method public constructor <init>(Lcom/naef/jnlua/util/AbstractTableMap;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/naef/jnlua/util/AbstractTableMap$Entry;->this$0:Lcom/naef/jnlua/util/AbstractTableMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/naef/jnlua/util/AbstractTableMap$Entry;->key:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$200(Lcom/naef/jnlua/util/AbstractTableMap$Entry;)Lcom/naef/jnlua/LuaState;
    .locals 1

    invoke-direct {p0}, Lcom/naef/jnlua/util/AbstractTableMap$Entry;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/naef/jnlua/util/AbstractTableMap$Entry;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/naef/jnlua/util/AbstractTableMap$Entry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method private getLuaState()Lcom/naef/jnlua/LuaState;
    .locals 1

    iget-object v0, p0, Lcom/naef/jnlua/util/AbstractTableMap$Entry;->this$0:Lcom/naef/jnlua/util/AbstractTableMap;

    invoke-virtual {v0}, Lcom/naef/jnlua/util/AbstractTableMap;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/naef/jnlua/util/AbstractTableMap$Entry;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/naef/jnlua/util/AbstractTableMap$Entry;

    invoke-direct {p0}, Lcom/naef/jnlua/util/AbstractTableMap$Entry;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v1

    invoke-direct {p1}, Lcom/naef/jnlua/util/AbstractTableMap$Entry;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/naef/jnlua/util/AbstractTableMap$Entry;->key:Ljava/lang/Object;

    iget-object v2, p1, Lcom/naef/jnlua/util/AbstractTableMap$Entry;->key:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/naef/jnlua/util/AbstractTableMap$Entry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/naef/jnlua/util/AbstractTableMap$Entry;->this$0:Lcom/naef/jnlua/util/AbstractTableMap;

    iget-object v1, p0, Lcom/naef/jnlua/util/AbstractTableMap$Entry;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/naef/jnlua/util/AbstractTableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-direct {p0}, Lcom/naef/jnlua/util/AbstractTableMap$Entry;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0x1003f

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/naef/jnlua/util/AbstractTableMap$Entry;->key:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/naef/jnlua/util/AbstractTableMap$Entry;->this$0:Lcom/naef/jnlua/util/AbstractTableMap;

    iget-object v1, p0, Lcom/naef/jnlua/util/AbstractTableMap$Entry;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/naef/jnlua/util/AbstractTableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/naef/jnlua/util/AbstractTableMap$Entry;->key:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
