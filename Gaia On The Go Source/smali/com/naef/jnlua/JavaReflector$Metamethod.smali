.class public final enum Lcom/naef/jnlua/JavaReflector$Metamethod;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/naef/jnlua/JavaReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Metamethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/naef/jnlua/JavaReflector$Metamethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/naef/jnlua/JavaReflector$Metamethod;

.field public static final enum ADD:Lcom/naef/jnlua/JavaReflector$Metamethod;

.field public static final enum CALL:Lcom/naef/jnlua/JavaReflector$Metamethod;

.field public static final enum CONCAT:Lcom/naef/jnlua/JavaReflector$Metamethod;

.field public static final enum DIV:Lcom/naef/jnlua/JavaReflector$Metamethod;

.field public static final enum EQ:Lcom/naef/jnlua/JavaReflector$Metamethod;

.field public static final enum INDEX:Lcom/naef/jnlua/JavaReflector$Metamethod;

.field public static final enum JAVAFIELDS:Lcom/naef/jnlua/JavaReflector$Metamethod;

.field public static final enum JAVAMETHODS:Lcom/naef/jnlua/JavaReflector$Metamethod;

.field public static final enum JAVAPROPERTIES:Lcom/naef/jnlua/JavaReflector$Metamethod;

.field public static final enum LE:Lcom/naef/jnlua/JavaReflector$Metamethod;

.field public static final enum LEN:Lcom/naef/jnlua/JavaReflector$Metamethod;

.field public static final enum LT:Lcom/naef/jnlua/JavaReflector$Metamethod;

.field public static final enum MOD:Lcom/naef/jnlua/JavaReflector$Metamethod;

.field public static final enum MUL:Lcom/naef/jnlua/JavaReflector$Metamethod;

.field public static final enum NEWINDEX:Lcom/naef/jnlua/JavaReflector$Metamethod;

.field public static final enum POW:Lcom/naef/jnlua/JavaReflector$Metamethod;

.field public static final enum SUB:Lcom/naef/jnlua/JavaReflector$Metamethod;

.field public static final enum TOSTRING:Lcom/naef/jnlua/JavaReflector$Metamethod;

.field public static final enum UNM:Lcom/naef/jnlua/JavaReflector$Metamethod;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/naef/jnlua/JavaReflector$Metamethod;

    const-string v1, "INDEX"

    invoke-direct {v0, v1, v3}, Lcom/naef/jnlua/JavaReflector$Metamethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naef/jnlua/JavaReflector$Metamethod;->INDEX:Lcom/naef/jnlua/JavaReflector$Metamethod;

    new-instance v0, Lcom/naef/jnlua/JavaReflector$Metamethod;

    const-string v1, "NEWINDEX"

    invoke-direct {v0, v1, v4}, Lcom/naef/jnlua/JavaReflector$Metamethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naef/jnlua/JavaReflector$Metamethod;->NEWINDEX:Lcom/naef/jnlua/JavaReflector$Metamethod;

    new-instance v0, Lcom/naef/jnlua/JavaReflector$Metamethod;

    const-string v1, "LEN"

    invoke-direct {v0, v1, v5}, Lcom/naef/jnlua/JavaReflector$Metamethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naef/jnlua/JavaReflector$Metamethod;->LEN:Lcom/naef/jnlua/JavaReflector$Metamethod;

    new-instance v0, Lcom/naef/jnlua/JavaReflector$Metamethod;

    const-string v1, "EQ"

    invoke-direct {v0, v1, v6}, Lcom/naef/jnlua/JavaReflector$Metamethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naef/jnlua/JavaReflector$Metamethod;->EQ:Lcom/naef/jnlua/JavaReflector$Metamethod;

    new-instance v0, Lcom/naef/jnlua/JavaReflector$Metamethod;

    const-string v1, "LT"

    invoke-direct {v0, v1, v7}, Lcom/naef/jnlua/JavaReflector$Metamethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naef/jnlua/JavaReflector$Metamethod;->LT:Lcom/naef/jnlua/JavaReflector$Metamethod;

    new-instance v0, Lcom/naef/jnlua/JavaReflector$Metamethod;

    const-string v1, "LE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/naef/jnlua/JavaReflector$Metamethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naef/jnlua/JavaReflector$Metamethod;->LE:Lcom/naef/jnlua/JavaReflector$Metamethod;

    new-instance v0, Lcom/naef/jnlua/JavaReflector$Metamethod;

    const-string v1, "UNM"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/naef/jnlua/JavaReflector$Metamethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naef/jnlua/JavaReflector$Metamethod;->UNM:Lcom/naef/jnlua/JavaReflector$Metamethod;

    new-instance v0, Lcom/naef/jnlua/JavaReflector$Metamethod;

    const-string v1, "ADD"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/naef/jnlua/JavaReflector$Metamethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naef/jnlua/JavaReflector$Metamethod;->ADD:Lcom/naef/jnlua/JavaReflector$Metamethod;

    new-instance v0, Lcom/naef/jnlua/JavaReflector$Metamethod;

    const-string v1, "SUB"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/naef/jnlua/JavaReflector$Metamethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naef/jnlua/JavaReflector$Metamethod;->SUB:Lcom/naef/jnlua/JavaReflector$Metamethod;

    new-instance v0, Lcom/naef/jnlua/JavaReflector$Metamethod;

    const-string v1, "MUL"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/naef/jnlua/JavaReflector$Metamethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naef/jnlua/JavaReflector$Metamethod;->MUL:Lcom/naef/jnlua/JavaReflector$Metamethod;

    new-instance v0, Lcom/naef/jnlua/JavaReflector$Metamethod;

    const-string v1, "DIV"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/naef/jnlua/JavaReflector$Metamethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naef/jnlua/JavaReflector$Metamethod;->DIV:Lcom/naef/jnlua/JavaReflector$Metamethod;

    new-instance v0, Lcom/naef/jnlua/JavaReflector$Metamethod;

    const-string v1, "MOD"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/naef/jnlua/JavaReflector$Metamethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naef/jnlua/JavaReflector$Metamethod;->MOD:Lcom/naef/jnlua/JavaReflector$Metamethod;

    new-instance v0, Lcom/naef/jnlua/JavaReflector$Metamethod;

    const-string v1, "POW"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/naef/jnlua/JavaReflector$Metamethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naef/jnlua/JavaReflector$Metamethod;->POW:Lcom/naef/jnlua/JavaReflector$Metamethod;

    new-instance v0, Lcom/naef/jnlua/JavaReflector$Metamethod;

    const-string v1, "CONCAT"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/naef/jnlua/JavaReflector$Metamethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naef/jnlua/JavaReflector$Metamethod;->CONCAT:Lcom/naef/jnlua/JavaReflector$Metamethod;

    new-instance v0, Lcom/naef/jnlua/JavaReflector$Metamethod;

    const-string v1, "CALL"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/naef/jnlua/JavaReflector$Metamethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naef/jnlua/JavaReflector$Metamethod;->CALL:Lcom/naef/jnlua/JavaReflector$Metamethod;

    new-instance v0, Lcom/naef/jnlua/JavaReflector$Metamethod;

    const-string v1, "TOSTRING"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/naef/jnlua/JavaReflector$Metamethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naef/jnlua/JavaReflector$Metamethod;->TOSTRING:Lcom/naef/jnlua/JavaReflector$Metamethod;

    new-instance v0, Lcom/naef/jnlua/JavaReflector$Metamethod;

    const-string v1, "JAVAFIELDS"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/naef/jnlua/JavaReflector$Metamethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naef/jnlua/JavaReflector$Metamethod;->JAVAFIELDS:Lcom/naef/jnlua/JavaReflector$Metamethod;

    new-instance v0, Lcom/naef/jnlua/JavaReflector$Metamethod;

    const-string v1, "JAVAMETHODS"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/naef/jnlua/JavaReflector$Metamethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naef/jnlua/JavaReflector$Metamethod;->JAVAMETHODS:Lcom/naef/jnlua/JavaReflector$Metamethod;

    new-instance v0, Lcom/naef/jnlua/JavaReflector$Metamethod;

    const-string v1, "JAVAPROPERTIES"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/naef/jnlua/JavaReflector$Metamethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/naef/jnlua/JavaReflector$Metamethod;->JAVAPROPERTIES:Lcom/naef/jnlua/JavaReflector$Metamethod;

    const/16 v0, 0x13

    new-array v0, v0, [Lcom/naef/jnlua/JavaReflector$Metamethod;

    sget-object v1, Lcom/naef/jnlua/JavaReflector$Metamethod;->INDEX:Lcom/naef/jnlua/JavaReflector$Metamethod;

    aput-object v1, v0, v3

    sget-object v1, Lcom/naef/jnlua/JavaReflector$Metamethod;->NEWINDEX:Lcom/naef/jnlua/JavaReflector$Metamethod;

    aput-object v1, v0, v4

    sget-object v1, Lcom/naef/jnlua/JavaReflector$Metamethod;->LEN:Lcom/naef/jnlua/JavaReflector$Metamethod;

    aput-object v1, v0, v5

    sget-object v1, Lcom/naef/jnlua/JavaReflector$Metamethod;->EQ:Lcom/naef/jnlua/JavaReflector$Metamethod;

    aput-object v1, v0, v6

    sget-object v1, Lcom/naef/jnlua/JavaReflector$Metamethod;->LT:Lcom/naef/jnlua/JavaReflector$Metamethod;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/naef/jnlua/JavaReflector$Metamethod;->LE:Lcom/naef/jnlua/JavaReflector$Metamethod;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/naef/jnlua/JavaReflector$Metamethod;->UNM:Lcom/naef/jnlua/JavaReflector$Metamethod;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/naef/jnlua/JavaReflector$Metamethod;->ADD:Lcom/naef/jnlua/JavaReflector$Metamethod;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/naef/jnlua/JavaReflector$Metamethod;->SUB:Lcom/naef/jnlua/JavaReflector$Metamethod;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/naef/jnlua/JavaReflector$Metamethod;->MUL:Lcom/naef/jnlua/JavaReflector$Metamethod;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/naef/jnlua/JavaReflector$Metamethod;->DIV:Lcom/naef/jnlua/JavaReflector$Metamethod;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/naef/jnlua/JavaReflector$Metamethod;->MOD:Lcom/naef/jnlua/JavaReflector$Metamethod;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/naef/jnlua/JavaReflector$Metamethod;->POW:Lcom/naef/jnlua/JavaReflector$Metamethod;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/naef/jnlua/JavaReflector$Metamethod;->CONCAT:Lcom/naef/jnlua/JavaReflector$Metamethod;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/naef/jnlua/JavaReflector$Metamethod;->CALL:Lcom/naef/jnlua/JavaReflector$Metamethod;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/naef/jnlua/JavaReflector$Metamethod;->TOSTRING:Lcom/naef/jnlua/JavaReflector$Metamethod;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/naef/jnlua/JavaReflector$Metamethod;->JAVAFIELDS:Lcom/naef/jnlua/JavaReflector$Metamethod;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/naef/jnlua/JavaReflector$Metamethod;->JAVAMETHODS:Lcom/naef/jnlua/JavaReflector$Metamethod;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/naef/jnlua/JavaReflector$Metamethod;->JAVAPROPERTIES:Lcom/naef/jnlua/JavaReflector$Metamethod;

    aput-object v2, v0, v1

    sput-object v0, Lcom/naef/jnlua/JavaReflector$Metamethod;->$VALUES:[Lcom/naef/jnlua/JavaReflector$Metamethod;

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

.method public static valueOf(Ljava/lang/String;)Lcom/naef/jnlua/JavaReflector$Metamethod;
    .locals 1

    const-class v0, Lcom/naef/jnlua/JavaReflector$Metamethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/naef/jnlua/JavaReflector$Metamethod;

    return-object v0
.end method

.method public static values()[Lcom/naef/jnlua/JavaReflector$Metamethod;
    .locals 1

    sget-object v0, Lcom/naef/jnlua/JavaReflector$Metamethod;->$VALUES:[Lcom/naef/jnlua/JavaReflector$Metamethod;

    invoke-virtual {v0}, [Lcom/naef/jnlua/JavaReflector$Metamethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/naef/jnlua/JavaReflector$Metamethod;

    return-object v0
.end method


# virtual methods
.method public getMetamethodName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "__"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/naef/jnlua/JavaReflector$Metamethod;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
