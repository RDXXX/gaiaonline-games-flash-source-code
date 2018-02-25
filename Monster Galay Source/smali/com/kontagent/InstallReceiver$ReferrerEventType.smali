.class public final enum Lcom/kontagent/InstallReceiver$ReferrerEventType;
.super Ljava/lang/Enum;
.source "InstallReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kontagent/InstallReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "ReferrerEventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kontagent/InstallReceiver$ReferrerEventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kontagent/InstallReceiver$ReferrerEventType;

.field public static final enum Ad:Lcom/kontagent/InstallReceiver$ReferrerEventType;

.field public static final enum Partner:Lcom/kontagent/InstallReceiver$ReferrerEventType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/kontagent/InstallReceiver$ReferrerEventType;

    const-string v1, "Ad"

    invoke-direct {v0, v1, v2}, Lcom/kontagent/InstallReceiver$ReferrerEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kontagent/InstallReceiver$ReferrerEventType;->Ad:Lcom/kontagent/InstallReceiver$ReferrerEventType;

    new-instance v0, Lcom/kontagent/InstallReceiver$ReferrerEventType;

    const-string v1, "Partner"

    invoke-direct {v0, v1, v3}, Lcom/kontagent/InstallReceiver$ReferrerEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kontagent/InstallReceiver$ReferrerEventType;->Partner:Lcom/kontagent/InstallReceiver$ReferrerEventType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/kontagent/InstallReceiver$ReferrerEventType;

    sget-object v1, Lcom/kontagent/InstallReceiver$ReferrerEventType;->Ad:Lcom/kontagent/InstallReceiver$ReferrerEventType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kontagent/InstallReceiver$ReferrerEventType;->Partner:Lcom/kontagent/InstallReceiver$ReferrerEventType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/kontagent/InstallReceiver$ReferrerEventType;->$VALUES:[Lcom/kontagent/InstallReceiver$ReferrerEventType;

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kontagent/InstallReceiver$ReferrerEventType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v0, Lcom/kontagent/InstallReceiver$ReferrerEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kontagent/InstallReceiver$ReferrerEventType;

    return-object v0
.end method

.method public static values()[Lcom/kontagent/InstallReceiver$ReferrerEventType;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/kontagent/InstallReceiver$ReferrerEventType;->$VALUES:[Lcom/kontagent/InstallReceiver$ReferrerEventType;

    invoke-virtual {v0}, [Lcom/kontagent/InstallReceiver$ReferrerEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kontagent/InstallReceiver$ReferrerEventType;

    return-object v0
.end method
