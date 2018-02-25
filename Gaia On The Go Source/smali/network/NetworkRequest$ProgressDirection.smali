.class final enum Lnetwork/NetworkRequest$ProgressDirection;
.super Ljava/lang/Enum;
.source "NetworkRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnetwork/NetworkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ProgressDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnetwork/NetworkRequest$ProgressDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnetwork/NetworkRequest$ProgressDirection;

.field public static final enum DOWNLOAD:Lnetwork/NetworkRequest$ProgressDirection;

.field public static final enum NONE:Lnetwork/NetworkRequest$ProgressDirection;

.field public static final enum UPLOAD:Lnetwork/NetworkRequest$ProgressDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 234
    new-instance v0, Lnetwork/NetworkRequest$ProgressDirection;

    const-string v1, "UPLOAD"

    invoke-direct {v0, v1, v2}, Lnetwork/NetworkRequest$ProgressDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnetwork/NetworkRequest$ProgressDirection;->UPLOAD:Lnetwork/NetworkRequest$ProgressDirection;

    new-instance v0, Lnetwork/NetworkRequest$ProgressDirection;

    const-string v1, "DOWNLOAD"

    invoke-direct {v0, v1, v3}, Lnetwork/NetworkRequest$ProgressDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnetwork/NetworkRequest$ProgressDirection;->DOWNLOAD:Lnetwork/NetworkRequest$ProgressDirection;

    new-instance v0, Lnetwork/NetworkRequest$ProgressDirection;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4}, Lnetwork/NetworkRequest$ProgressDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnetwork/NetworkRequest$ProgressDirection;->NONE:Lnetwork/NetworkRequest$ProgressDirection;

    .line 232
    const/4 v0, 0x3

    new-array v0, v0, [Lnetwork/NetworkRequest$ProgressDirection;

    sget-object v1, Lnetwork/NetworkRequest$ProgressDirection;->UPLOAD:Lnetwork/NetworkRequest$ProgressDirection;

    aput-object v1, v0, v2

    sget-object v1, Lnetwork/NetworkRequest$ProgressDirection;->DOWNLOAD:Lnetwork/NetworkRequest$ProgressDirection;

    aput-object v1, v0, v3

    sget-object v1, Lnetwork/NetworkRequest$ProgressDirection;->NONE:Lnetwork/NetworkRequest$ProgressDirection;

    aput-object v1, v0, v4

    sput-object v0, Lnetwork/NetworkRequest$ProgressDirection;->$VALUES:[Lnetwork/NetworkRequest$ProgressDirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 232
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lnetwork/NetworkRequest$ProgressDirection;
    .locals 2
    .param p0, "progress"    # Ljava/lang/String;

    .prologue
    .line 238
    const/4 v0, 0x0

    .line 240
    .local v0, "direction":Lnetwork/NetworkRequest$ProgressDirection;
    if-eqz p0, :cond_2

    .line 242
    const-string v1, "upload"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 244
    sget-object v0, Lnetwork/NetworkRequest$ProgressDirection;->UPLOAD:Lnetwork/NetworkRequest$ProgressDirection;

    .line 255
    :cond_0
    :goto_0
    return-object v0

    .line 246
    :cond_1
    const-string v1, "download"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    sget-object v0, Lnetwork/NetworkRequest$ProgressDirection;->DOWNLOAD:Lnetwork/NetworkRequest$ProgressDirection;

    goto :goto_0

    .line 253
    :cond_2
    sget-object v0, Lnetwork/NetworkRequest$ProgressDirection;->NONE:Lnetwork/NetworkRequest$ProgressDirection;

    goto :goto_0
.end method

.method public static toString(Lnetwork/NetworkRequest$ProgressDirection;)Ljava/lang/String;
    .locals 3
    .param p0, "progress"    # Lnetwork/NetworkRequest$ProgressDirection;

    .prologue
    .line 260
    const/4 v0, 0x0

    .line 262
    .local v0, "direction":Ljava/lang/String;
    sget-object v1, Lnetwork/NetworkRequest$1;->$SwitchMap$network$NetworkRequest$ProgressDirection:[I

    invoke-virtual {p0}, Lnetwork/NetworkRequest$ProgressDirection;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 271
    const-string v0, "none"

    .line 275
    :goto_0
    return-object v0

    .line 265
    :pswitch_0
    const-string v0, "upload"

    .line 266
    goto :goto_0

    .line 268
    :pswitch_1
    const-string v0, "download"

    .line 269
    goto :goto_0

    .line 262
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lnetwork/NetworkRequest$ProgressDirection;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 232
    const-class v0, Lnetwork/NetworkRequest$ProgressDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnetwork/NetworkRequest$ProgressDirection;

    return-object v0
.end method

.method public static values()[Lnetwork/NetworkRequest$ProgressDirection;
    .locals 1

    .prologue
    .line 232
    sget-object v0, Lnetwork/NetworkRequest$ProgressDirection;->$VALUES:[Lnetwork/NetworkRequest$ProgressDirection;

    invoke-virtual {v0}, [Lnetwork/NetworkRequest$ProgressDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnetwork/NetworkRequest$ProgressDirection;

    return-object v0
.end method
