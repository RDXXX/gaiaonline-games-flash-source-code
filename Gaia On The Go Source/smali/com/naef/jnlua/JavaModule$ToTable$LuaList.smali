.class Lcom/naef/jnlua/JavaModule$ToTable$LuaList;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/naef/jnlua/JavaReflector;
.implements Lcom/naef/jnlua/TypedJavaObject;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naef/jnlua/JavaModule$ToTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LuaList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/naef/jnlua/JavaModule$ToTable$LuaList$Length;,
        Lcom/naef/jnlua/JavaModule$ToTable$LuaList$NewIndex;,
        Lcom/naef/jnlua/JavaModule$ToTable$LuaList$Index;
    }
.end annotation


# static fields
.field private static final INDEX:Lcom/naef/jnlua/JavaFunction;

.field private static final LENGTH:Lcom/naef/jnlua/JavaFunction;

.field private static final NEW_INDEX:Lcom/naef/jnlua/JavaFunction;


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/naef/jnlua/JavaModule$ToTable$LuaList$Index;

    invoke-direct {v0, v1}, Lcom/naef/jnlua/JavaModule$ToTable$LuaList$Index;-><init>(Lcom/naef/jnlua/JavaModule$1;)V

    sput-object v0, Lcom/naef/jnlua/JavaModule$ToTable$LuaList;->INDEX:Lcom/naef/jnlua/JavaFunction;

    new-instance v0, Lcom/naef/jnlua/JavaModule$ToTable$LuaList$NewIndex;

    invoke-direct {v0, v1}, Lcom/naef/jnlua/JavaModule$ToTable$LuaList$NewIndex;-><init>(Lcom/naef/jnlua/JavaModule$1;)V

    sput-object v0, Lcom/naef/jnlua/JavaModule$ToTable$LuaList;->NEW_INDEX:Lcom/naef/jnlua/JavaFunction;

    new-instance v0, Lcom/naef/jnlua/JavaModule$ToTable$LuaList$Length;

    invoke-direct {v0, v1}, Lcom/naef/jnlua/JavaModule$ToTable$LuaList$Length;-><init>(Lcom/naef/jnlua/JavaModule$1;)V

    sput-object v0, Lcom/naef/jnlua/JavaModule$ToTable$LuaList;->LENGTH:Lcom/naef/jnlua/JavaFunction;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/naef/jnlua/JavaModule$ToTable$LuaList;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/naef/jnlua/JavaModule$ToTable$LuaList;->list:Ljava/util/List;

    return-object v0
.end method

.method public getMetamethod(Lcom/naef/jnlua/JavaReflector$Metamethod;)Lcom/naef/jnlua/JavaFunction;
    .locals 2

    sget-object v0, Lcom/naef/jnlua/JavaModule$1;->$SwitchMap$com$naef$jnlua$JavaReflector$Metamethod:[I

    invoke-virtual {p1}, Lcom/naef/jnlua/JavaReflector$Metamethod;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/naef/jnlua/JavaModule$ToTable$LuaList;->INDEX:Lcom/naef/jnlua/JavaFunction;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/naef/jnlua/JavaModule$ToTable$LuaList;->NEW_INDEX:Lcom/naef/jnlua/JavaFunction;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/naef/jnlua/JavaModule$ToTable$LuaList;->LENGTH:Lcom/naef/jnlua/JavaFunction;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/naef/jnlua/JavaModule$ToTable$LuaList;->list:Ljava/util/List;

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

    const-class v0, Ljava/util/List;

    return-object v0
.end method

.method public isStrong()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
