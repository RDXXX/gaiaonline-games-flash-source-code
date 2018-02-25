.class final enum Lcom/ansca/corona/events/MediaEvent$Event;
.super Ljava/lang/Enum;
.source "MediaEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/events/MediaEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ansca/corona/events/MediaEvent$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ansca/corona/events/MediaEvent$Event;

.field public static final enum LoadSound:Lcom/ansca/corona/events/MediaEvent$Event;

.field public static final enum PauseSound:Lcom/ansca/corona/events/MediaEvent$Event;

.field public static final enum PlaySound:Lcom/ansca/corona/events/MediaEvent$Event;

.field public static final enum PlayVideo:Lcom/ansca/corona/events/MediaEvent$Event;

.field public static final enum ResumeSound:Lcom/ansca/corona/events/MediaEvent$Event;

.field public static final enum SoundEnded:Lcom/ansca/corona/events/MediaEvent$Event;

.field public static final enum StopSound:Lcom/ansca/corona/events/MediaEvent$Event;

.field public static final enum VideoEnded:Lcom/ansca/corona/events/MediaEvent$Event;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12
    new-instance v0, Lcom/ansca/corona/events/MediaEvent$Event;

    const-string v1, "LoadSound"

    invoke-direct {v0, v1, v3}, Lcom/ansca/corona/events/MediaEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ansca/corona/events/MediaEvent$Event;->LoadSound:Lcom/ansca/corona/events/MediaEvent$Event;

    .line 13
    new-instance v0, Lcom/ansca/corona/events/MediaEvent$Event;

    const-string v1, "PlaySound"

    invoke-direct {v0, v1, v4}, Lcom/ansca/corona/events/MediaEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ansca/corona/events/MediaEvent$Event;->PlaySound:Lcom/ansca/corona/events/MediaEvent$Event;

    .line 14
    new-instance v0, Lcom/ansca/corona/events/MediaEvent$Event;

    const-string v1, "StopSound"

    invoke-direct {v0, v1, v5}, Lcom/ansca/corona/events/MediaEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ansca/corona/events/MediaEvent$Event;->StopSound:Lcom/ansca/corona/events/MediaEvent$Event;

    .line 15
    new-instance v0, Lcom/ansca/corona/events/MediaEvent$Event;

    const-string v1, "PauseSound"

    invoke-direct {v0, v1, v6}, Lcom/ansca/corona/events/MediaEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ansca/corona/events/MediaEvent$Event;->PauseSound:Lcom/ansca/corona/events/MediaEvent$Event;

    .line 16
    new-instance v0, Lcom/ansca/corona/events/MediaEvent$Event;

    const-string v1, "ResumeSound"

    invoke-direct {v0, v1, v7}, Lcom/ansca/corona/events/MediaEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ansca/corona/events/MediaEvent$Event;->ResumeSound:Lcom/ansca/corona/events/MediaEvent$Event;

    .line 17
    new-instance v0, Lcom/ansca/corona/events/MediaEvent$Event;

    const-string v1, "PlayVideo"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/ansca/corona/events/MediaEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ansca/corona/events/MediaEvent$Event;->PlayVideo:Lcom/ansca/corona/events/MediaEvent$Event;

    .line 18
    new-instance v0, Lcom/ansca/corona/events/MediaEvent$Event;

    const-string v1, "SoundEnded"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/ansca/corona/events/MediaEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ansca/corona/events/MediaEvent$Event;->SoundEnded:Lcom/ansca/corona/events/MediaEvent$Event;

    .line 19
    new-instance v0, Lcom/ansca/corona/events/MediaEvent$Event;

    const-string v1, "VideoEnded"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/ansca/corona/events/MediaEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ansca/corona/events/MediaEvent$Event;->VideoEnded:Lcom/ansca/corona/events/MediaEvent$Event;

    .line 11
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/ansca/corona/events/MediaEvent$Event;

    sget-object v1, Lcom/ansca/corona/events/MediaEvent$Event;->LoadSound:Lcom/ansca/corona/events/MediaEvent$Event;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ansca/corona/events/MediaEvent$Event;->PlaySound:Lcom/ansca/corona/events/MediaEvent$Event;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ansca/corona/events/MediaEvent$Event;->StopSound:Lcom/ansca/corona/events/MediaEvent$Event;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ansca/corona/events/MediaEvent$Event;->PauseSound:Lcom/ansca/corona/events/MediaEvent$Event;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ansca/corona/events/MediaEvent$Event;->ResumeSound:Lcom/ansca/corona/events/MediaEvent$Event;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/ansca/corona/events/MediaEvent$Event;->PlayVideo:Lcom/ansca/corona/events/MediaEvent$Event;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/ansca/corona/events/MediaEvent$Event;->SoundEnded:Lcom/ansca/corona/events/MediaEvent$Event;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/ansca/corona/events/MediaEvent$Event;->VideoEnded:Lcom/ansca/corona/events/MediaEvent$Event;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ansca/corona/events/MediaEvent$Event;->$VALUES:[Lcom/ansca/corona/events/MediaEvent$Event;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ansca/corona/events/MediaEvent$Event;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lcom/ansca/corona/events/MediaEvent$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/events/MediaEvent$Event;

    return-object v0
.end method

.method public static values()[Lcom/ansca/corona/events/MediaEvent$Event;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/ansca/corona/events/MediaEvent$Event;->$VALUES:[Lcom/ansca/corona/events/MediaEvent$Event;

    invoke-virtual {v0}, [Lcom/ansca/corona/events/MediaEvent$Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ansca/corona/events/MediaEvent$Event;

    return-object v0
.end method
