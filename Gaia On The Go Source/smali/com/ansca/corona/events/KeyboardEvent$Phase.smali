.class public final enum Lcom/ansca/corona/events/KeyboardEvent$Phase;
.super Ljava/lang/Enum;
.source "KeyboardEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/events/KeyboardEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Phase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ansca/corona/events/KeyboardEvent$Phase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ansca/corona/events/KeyboardEvent$Phase;

.field public static final enum DOWN:Lcom/ansca/corona/events/KeyboardEvent$Phase;

.field public static final enum UP:Lcom/ansca/corona/events/KeyboardEvent$Phase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 118
    new-instance v0, Lcom/ansca/corona/events/KeyboardEvent$Phase;

    const-string v1, "DOWN"

    invoke-direct {v0, v1, v2, v2}, Lcom/ansca/corona/events/KeyboardEvent$Phase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ansca/corona/events/KeyboardEvent$Phase;->DOWN:Lcom/ansca/corona/events/KeyboardEvent$Phase;

    .line 119
    new-instance v0, Lcom/ansca/corona/events/KeyboardEvent$Phase;

    const-string v1, "UP"

    invoke-direct {v0, v1, v3, v3}, Lcom/ansca/corona/events/KeyboardEvent$Phase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ansca/corona/events/KeyboardEvent$Phase;->UP:Lcom/ansca/corona/events/KeyboardEvent$Phase;

    .line 117
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/ansca/corona/events/KeyboardEvent$Phase;

    sget-object v1, Lcom/ansca/corona/events/KeyboardEvent$Phase;->DOWN:Lcom/ansca/corona/events/KeyboardEvent$Phase;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ansca/corona/events/KeyboardEvent$Phase;->UP:Lcom/ansca/corona/events/KeyboardEvent$Phase;

    aput-object v1, v0, v3

    sput-object v0, Lcom/ansca/corona/events/KeyboardEvent$Phase;->$VALUES:[Lcom/ansca/corona/events/KeyboardEvent$Phase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "v"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 124
    iput p3, p0, Lcom/ansca/corona/events/KeyboardEvent$Phase;->value:I

    .line 125
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ansca/corona/events/KeyboardEvent$Phase;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 117
    const-class v0, Lcom/ansca/corona/events/KeyboardEvent$Phase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/events/KeyboardEvent$Phase;

    return-object v0
.end method

.method public static values()[Lcom/ansca/corona/events/KeyboardEvent$Phase;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/ansca/corona/events/KeyboardEvent$Phase;->$VALUES:[Lcom/ansca/corona/events/KeyboardEvent$Phase;

    invoke-virtual {v0}, [Lcom/ansca/corona/events/KeyboardEvent$Phase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ansca/corona/events/KeyboardEvent$Phase;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/ansca/corona/events/KeyboardEvent$Phase;->value:I

    return v0
.end method
