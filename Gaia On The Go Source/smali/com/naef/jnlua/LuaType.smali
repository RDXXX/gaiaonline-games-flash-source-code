.class public final enum Lcom/naef/jnlua/LuaType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/naef/jnlua/LuaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/naef/jnlua/LuaType;

.field public static final enum BOOLEAN:Lcom/naef/jnlua/LuaType;

.field public static final enum FUNCTION:Lcom/naef/jnlua/LuaType;

.field public static final enum LIGHTUSERDATA:Lcom/naef/jnlua/LuaType;

.field public static final enum NIL:Lcom/naef/jnlua/LuaType;

.field public static final enum NUMBER:Lcom/naef/jnlua/LuaType;

.field public static final enum STRING:Lcom/naef/jnlua/LuaType;

.field public static final enum TABLE:Lcom/naef/jnlua/LuaType;

.field public static final enum THREAD:Lcom/naef/jnlua/LuaType;

.field public static final enum USERDATA:Lcom/naef/jnlua/LuaType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/naef/jnlua/LuaType;

    const-string v1, "NIL"

    invoke-direct {v0, v1, v3}, Lcom/naef/jnlua/LuaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naef/jnlua/LuaType;->NIL:Lcom/naef/jnlua/LuaType;

    new-instance v0, Lcom/naef/jnlua/LuaType;

    const-string v1, "BOOLEAN"

    invoke-direct {v0, v1, v4}, Lcom/naef/jnlua/LuaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naef/jnlua/LuaType;->BOOLEAN:Lcom/naef/jnlua/LuaType;

    new-instance v0, Lcom/naef/jnlua/LuaType;

    const-string v1, "LIGHTUSERDATA"

    invoke-direct {v0, v1, v5}, Lcom/naef/jnlua/LuaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naef/jnlua/LuaType;->LIGHTUSERDATA:Lcom/naef/jnlua/LuaType;

    new-instance v0, Lcom/naef/jnlua/LuaType;

    const-string v1, "NUMBER"

    invoke-direct {v0, v1, v6}, Lcom/naef/jnlua/LuaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naef/jnlua/LuaType;->NUMBER:Lcom/naef/jnlua/LuaType;

    new-instance v0, Lcom/naef/jnlua/LuaType;

    const-string v1, "STRING"

    invoke-direct {v0, v1, v7}, Lcom/naef/jnlua/LuaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naef/jnlua/LuaType;->STRING:Lcom/naef/jnlua/LuaType;

    new-instance v0, Lcom/naef/jnlua/LuaType;

    const-string v1, "TABLE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/naef/jnlua/LuaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naef/jnlua/LuaType;->TABLE:Lcom/naef/jnlua/LuaType;

    new-instance v0, Lcom/naef/jnlua/LuaType;

    const-string v1, "FUNCTION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/naef/jnlua/LuaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naef/jnlua/LuaType;->FUNCTION:Lcom/naef/jnlua/LuaType;

    new-instance v0, Lcom/naef/jnlua/LuaType;

    const-string v1, "USERDATA"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/naef/jnlua/LuaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naef/jnlua/LuaType;->USERDATA:Lcom/naef/jnlua/LuaType;

    new-instance v0, Lcom/naef/jnlua/LuaType;

    const-string v1, "THREAD"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/naef/jnlua/LuaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naef/jnlua/LuaType;->THREAD:Lcom/naef/jnlua/LuaType;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/naef/jnlua/LuaType;

    sget-object v1, Lcom/naef/jnlua/LuaType;->NIL:Lcom/naef/jnlua/LuaType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/naef/jnlua/LuaType;->BOOLEAN:Lcom/naef/jnlua/LuaType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/naef/jnlua/LuaType;->LIGHTUSERDATA:Lcom/naef/jnlua/LuaType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/naef/jnlua/LuaType;->NUMBER:Lcom/naef/jnlua/LuaType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/naef/jnlua/LuaType;->STRING:Lcom/naef/jnlua/LuaType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/naef/jnlua/LuaType;->TABLE:Lcom/naef/jnlua/LuaType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/naef/jnlua/LuaType;->FUNCTION:Lcom/naef/jnlua/LuaType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/naef/jnlua/LuaType;->USERDATA:Lcom/naef/jnlua/LuaType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/naef/jnlua/LuaType;->THREAD:Lcom/naef/jnlua/LuaType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/naef/jnlua/LuaType;->$VALUES:[Lcom/naef/jnlua/LuaType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/naef/jnlua/LuaType;
    .locals 1

    const-class v0, Lcom/naef/jnlua/LuaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/naef/jnlua/LuaType;

    return-object v0
.end method

.method public static values()[Lcom/naef/jnlua/LuaType;
    .locals 1

    sget-object v0, Lcom/naef/jnlua/LuaType;->$VALUES:[Lcom/naef/jnlua/LuaType;

    invoke-virtual {v0}, [Lcom/naef/jnlua/LuaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/naef/jnlua/LuaType;

    return-object v0
.end method


# virtual methods
.method public displayText()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/naef/jnlua/LuaType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
