.class public enum Lcom/naef/jnlua/LuaState$Library;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naef/jnlua/LuaState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "Library"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/naef/jnlua/LuaState$Library;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/naef/jnlua/LuaState$Library;

.field public static final enum BASE:Lcom/naef/jnlua/LuaState$Library;

.field public static final enum DEBUG:Lcom/naef/jnlua/LuaState$Library;

.field public static final enum IO:Lcom/naef/jnlua/LuaState$Library;

.field public static final enum JAVA:Lcom/naef/jnlua/LuaState$Library;

.field public static final enum MATH:Lcom/naef/jnlua/LuaState$Library;

.field public static final enum OS:Lcom/naef/jnlua/LuaState$Library;

.field public static final enum PACKAGE:Lcom/naef/jnlua/LuaState$Library;

.field public static final enum STRING:Lcom/naef/jnlua/LuaState$Library;

.field public static final enum TABLE:Lcom/naef/jnlua/LuaState$Library;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/naef/jnlua/LuaState$Library;

    const-string v1, "BASE"

    invoke-direct {v0, v1, v3}, Lcom/naef/jnlua/LuaState$Library;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naef/jnlua/LuaState$Library;->BASE:Lcom/naef/jnlua/LuaState$Library;

    new-instance v0, Lcom/naef/jnlua/LuaState$Library;

    const-string v1, "TABLE"

    invoke-direct {v0, v1, v4}, Lcom/naef/jnlua/LuaState$Library;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naef/jnlua/LuaState$Library;->TABLE:Lcom/naef/jnlua/LuaState$Library;

    new-instance v0, Lcom/naef/jnlua/LuaState$Library;

    const-string v1, "IO"

    invoke-direct {v0, v1, v5}, Lcom/naef/jnlua/LuaState$Library;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naef/jnlua/LuaState$Library;->IO:Lcom/naef/jnlua/LuaState$Library;

    new-instance v0, Lcom/naef/jnlua/LuaState$Library;

    const-string v1, "OS"

    invoke-direct {v0, v1, v6}, Lcom/naef/jnlua/LuaState$Library;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naef/jnlua/LuaState$Library;->OS:Lcom/naef/jnlua/LuaState$Library;

    new-instance v0, Lcom/naef/jnlua/LuaState$Library;

    const-string v1, "STRING"

    invoke-direct {v0, v1, v7}, Lcom/naef/jnlua/LuaState$Library;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naef/jnlua/LuaState$Library;->STRING:Lcom/naef/jnlua/LuaState$Library;

    new-instance v0, Lcom/naef/jnlua/LuaState$Library;

    const-string v1, "MATH"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/naef/jnlua/LuaState$Library;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naef/jnlua/LuaState$Library;->MATH:Lcom/naef/jnlua/LuaState$Library;

    new-instance v0, Lcom/naef/jnlua/LuaState$Library;

    const-string v1, "DEBUG"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/naef/jnlua/LuaState$Library;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naef/jnlua/LuaState$Library;->DEBUG:Lcom/naef/jnlua/LuaState$Library;

    new-instance v0, Lcom/naef/jnlua/LuaState$Library;

    const-string v1, "PACKAGE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/naef/jnlua/LuaState$Library;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naef/jnlua/LuaState$Library;->PACKAGE:Lcom/naef/jnlua/LuaState$Library;

    new-instance v0, Lcom/naef/jnlua/LuaState$Library$1;

    const-string v1, "JAVA"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/naef/jnlua/LuaState$Library$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naef/jnlua/LuaState$Library;->JAVA:Lcom/naef/jnlua/LuaState$Library;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/naef/jnlua/LuaState$Library;

    sget-object v1, Lcom/naef/jnlua/LuaState$Library;->BASE:Lcom/naef/jnlua/LuaState$Library;

    aput-object v1, v0, v3

    sget-object v1, Lcom/naef/jnlua/LuaState$Library;->TABLE:Lcom/naef/jnlua/LuaState$Library;

    aput-object v1, v0, v4

    sget-object v1, Lcom/naef/jnlua/LuaState$Library;->IO:Lcom/naef/jnlua/LuaState$Library;

    aput-object v1, v0, v5

    sget-object v1, Lcom/naef/jnlua/LuaState$Library;->OS:Lcom/naef/jnlua/LuaState$Library;

    aput-object v1, v0, v6

    sget-object v1, Lcom/naef/jnlua/LuaState$Library;->STRING:Lcom/naef/jnlua/LuaState$Library;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/naef/jnlua/LuaState$Library;->MATH:Lcom/naef/jnlua/LuaState$Library;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/naef/jnlua/LuaState$Library;->DEBUG:Lcom/naef/jnlua/LuaState$Library;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/naef/jnlua/LuaState$Library;->PACKAGE:Lcom/naef/jnlua/LuaState$Library;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/naef/jnlua/LuaState$Library;->JAVA:Lcom/naef/jnlua/LuaState$Library;

    aput-object v2, v0, v1

    sput-object v0, Lcom/naef/jnlua/LuaState$Library;->$VALUES:[Lcom/naef/jnlua/LuaState$Library;

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

.method synthetic constructor <init>(Ljava/lang/String;ILcom/naef/jnlua/LuaState$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/naef/jnlua/LuaState$Library;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/naef/jnlua/LuaState$Library;
    .locals 1

    const-class v0, Lcom/naef/jnlua/LuaState$Library;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/naef/jnlua/LuaState$Library;

    return-object v0
.end method

.method public static values()[Lcom/naef/jnlua/LuaState$Library;
    .locals 1

    sget-object v0, Lcom/naef/jnlua/LuaState$Library;->$VALUES:[Lcom/naef/jnlua/LuaState$Library;

    invoke-virtual {v0}, [Lcom/naef/jnlua/LuaState$Library;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/naef/jnlua/LuaState$Library;

    return-object v0
.end method


# virtual methods
.method open(Lcom/naef/jnlua/LuaState;)V
    .locals 1

    invoke-virtual {p0}, Lcom/naef/jnlua/LuaState$Library;->ordinal()I

    move-result v0

    invoke-static {p1, v0}, Lcom/naef/jnlua/LuaState;->access$200(Lcom/naef/jnlua/LuaState;I)V

    return-void
.end method
