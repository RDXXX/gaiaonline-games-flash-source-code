.class public final enum Lcom/naef/jnlua/LuaState$GcAction;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naef/jnlua/LuaState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GcAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/naef/jnlua/LuaState$GcAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/naef/jnlua/LuaState$GcAction;

.field public static final enum COLLECT:Lcom/naef/jnlua/LuaState$GcAction;

.field public static final enum COUNT:Lcom/naef/jnlua/LuaState$GcAction;

.field public static final enum COUNTB:Lcom/naef/jnlua/LuaState$GcAction;

.field public static final enum RESTART:Lcom/naef/jnlua/LuaState$GcAction;

.field public static final enum SETPAUSE:Lcom/naef/jnlua/LuaState$GcAction;

.field public static final enum SETSTEPMUL:Lcom/naef/jnlua/LuaState$GcAction;

.field public static final enum STEP:Lcom/naef/jnlua/LuaState$GcAction;

.field public static final enum STOP:Lcom/naef/jnlua/LuaState$GcAction;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/naef/jnlua/LuaState$GcAction;

    const-string v1, "STOP"

    invoke-direct {v0, v1, v3}, Lcom/naef/jnlua/LuaState$GcAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naef/jnlua/LuaState$GcAction;->STOP:Lcom/naef/jnlua/LuaState$GcAction;

    new-instance v0, Lcom/naef/jnlua/LuaState$GcAction;

    const-string v1, "RESTART"

    invoke-direct {v0, v1, v4}, Lcom/naef/jnlua/LuaState$GcAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naef/jnlua/LuaState$GcAction;->RESTART:Lcom/naef/jnlua/LuaState$GcAction;

    new-instance v0, Lcom/naef/jnlua/LuaState$GcAction;

    const-string v1, "COLLECT"

    invoke-direct {v0, v1, v5}, Lcom/naef/jnlua/LuaState$GcAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naef/jnlua/LuaState$GcAction;->COLLECT:Lcom/naef/jnlua/LuaState$GcAction;

    new-instance v0, Lcom/naef/jnlua/LuaState$GcAction;

    const-string v1, "COUNT"

    invoke-direct {v0, v1, v6}, Lcom/naef/jnlua/LuaState$GcAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naef/jnlua/LuaState$GcAction;->COUNT:Lcom/naef/jnlua/LuaState$GcAction;

    new-instance v0, Lcom/naef/jnlua/LuaState$GcAction;

    const-string v1, "COUNTB"

    invoke-direct {v0, v1, v7}, Lcom/naef/jnlua/LuaState$GcAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naef/jnlua/LuaState$GcAction;->COUNTB:Lcom/naef/jnlua/LuaState$GcAction;

    new-instance v0, Lcom/naef/jnlua/LuaState$GcAction;

    const-string v1, "STEP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/naef/jnlua/LuaState$GcAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naef/jnlua/LuaState$GcAction;->STEP:Lcom/naef/jnlua/LuaState$GcAction;

    new-instance v0, Lcom/naef/jnlua/LuaState$GcAction;

    const-string v1, "SETPAUSE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/naef/jnlua/LuaState$GcAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naef/jnlua/LuaState$GcAction;->SETPAUSE:Lcom/naef/jnlua/LuaState$GcAction;

    new-instance v0, Lcom/naef/jnlua/LuaState$GcAction;

    const-string v1, "SETSTEPMUL"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/naef/jnlua/LuaState$GcAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naef/jnlua/LuaState$GcAction;->SETSTEPMUL:Lcom/naef/jnlua/LuaState$GcAction;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/naef/jnlua/LuaState$GcAction;

    sget-object v1, Lcom/naef/jnlua/LuaState$GcAction;->STOP:Lcom/naef/jnlua/LuaState$GcAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/naef/jnlua/LuaState$GcAction;->RESTART:Lcom/naef/jnlua/LuaState$GcAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/naef/jnlua/LuaState$GcAction;->COLLECT:Lcom/naef/jnlua/LuaState$GcAction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/naef/jnlua/LuaState$GcAction;->COUNT:Lcom/naef/jnlua/LuaState$GcAction;

    aput-object v1, v0, v6

    sget-object v1, Lcom/naef/jnlua/LuaState$GcAction;->COUNTB:Lcom/naef/jnlua/LuaState$GcAction;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/naef/jnlua/LuaState$GcAction;->STEP:Lcom/naef/jnlua/LuaState$GcAction;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/naef/jnlua/LuaState$GcAction;->SETPAUSE:Lcom/naef/jnlua/LuaState$GcAction;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/naef/jnlua/LuaState$GcAction;->SETSTEPMUL:Lcom/naef/jnlua/LuaState$GcAction;

    aput-object v2, v0, v1

    sput-object v0, Lcom/naef/jnlua/LuaState$GcAction;->$VALUES:[Lcom/naef/jnlua/LuaState$GcAction;

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

.method public static valueOf(Ljava/lang/String;)Lcom/naef/jnlua/LuaState$GcAction;
    .locals 1

    const-class v0, Lcom/naef/jnlua/LuaState$GcAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/naef/jnlua/LuaState$GcAction;

    return-object v0
.end method

.method public static values()[Lcom/naef/jnlua/LuaState$GcAction;
    .locals 1

    sget-object v0, Lcom/naef/jnlua/LuaState$GcAction;->$VALUES:[Lcom/naef/jnlua/LuaState$GcAction;

    invoke-virtual {v0}, [Lcom/naef/jnlua/LuaState$GcAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/naef/jnlua/LuaState$GcAction;

    return-object v0
.end method
