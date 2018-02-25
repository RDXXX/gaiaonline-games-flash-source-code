.class final enum Lcom/ansca/corona/Controller$RuntimeState;
.super Ljava/lang/Enum;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "RuntimeState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ansca/corona/Controller$RuntimeState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ansca/corona/Controller$RuntimeState;

.field public static final enum Running:Lcom/ansca/corona/Controller$RuntimeState;

.field public static final enum Starting:Lcom/ansca/corona/Controller$RuntimeState;

.field public static final enum Stopped:Lcom/ansca/corona/Controller$RuntimeState;

.field public static final enum Stopping:Lcom/ansca/corona/Controller$RuntimeState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 90
    new-instance v0, Lcom/ansca/corona/Controller$RuntimeState;

    const-string v1, "Starting"

    invoke-direct {v0, v1, v2}, Lcom/ansca/corona/Controller$RuntimeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ansca/corona/Controller$RuntimeState;->Starting:Lcom/ansca/corona/Controller$RuntimeState;

    .line 91
    new-instance v0, Lcom/ansca/corona/Controller$RuntimeState;

    const-string v1, "Running"

    invoke-direct {v0, v1, v3}, Lcom/ansca/corona/Controller$RuntimeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ansca/corona/Controller$RuntimeState;->Running:Lcom/ansca/corona/Controller$RuntimeState;

    .line 92
    new-instance v0, Lcom/ansca/corona/Controller$RuntimeState;

    const-string v1, "Stopping"

    invoke-direct {v0, v1, v4}, Lcom/ansca/corona/Controller$RuntimeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ansca/corona/Controller$RuntimeState;->Stopping:Lcom/ansca/corona/Controller$RuntimeState;

    .line 93
    new-instance v0, Lcom/ansca/corona/Controller$RuntimeState;

    const-string v1, "Stopped"

    invoke-direct {v0, v1, v5}, Lcom/ansca/corona/Controller$RuntimeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ansca/corona/Controller$RuntimeState;->Stopped:Lcom/ansca/corona/Controller$RuntimeState;

    .line 89
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ansca/corona/Controller$RuntimeState;

    sget-object v1, Lcom/ansca/corona/Controller$RuntimeState;->Starting:Lcom/ansca/corona/Controller$RuntimeState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ansca/corona/Controller$RuntimeState;->Running:Lcom/ansca/corona/Controller$RuntimeState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ansca/corona/Controller$RuntimeState;->Stopping:Lcom/ansca/corona/Controller$RuntimeState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ansca/corona/Controller$RuntimeState;->Stopped:Lcom/ansca/corona/Controller$RuntimeState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/ansca/corona/Controller$RuntimeState;->$VALUES:[Lcom/ansca/corona/Controller$RuntimeState;

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
    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ansca/corona/Controller$RuntimeState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 89
    const-class v0, Lcom/ansca/corona/Controller$RuntimeState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/Controller$RuntimeState;

    return-object v0
.end method

.method public static values()[Lcom/ansca/corona/Controller$RuntimeState;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/ansca/corona/Controller$RuntimeState;->$VALUES:[Lcom/ansca/corona/Controller$RuntimeState;

    invoke-virtual {v0}, [Lcom/ansca/corona/Controller$RuntimeState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ansca/corona/Controller$RuntimeState;

    return-object v0
.end method
