.class public Lcom/ansca/corona/events/CreditsRequestEvent;
.super Lcom/ansca/corona/events/Event;
.source "CreditsRequestEvent.java"


# instance fields
.field private myNewPoints:I

.field private myTotalPoints:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .param p1, "newPoints"    # I
    .param p2, "totalPoints"    # I

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/ansca/corona/events/Event;-><init>()V

    .line 10
    iput p1, p0, Lcom/ansca/corona/events/CreditsRequestEvent;->myNewPoints:I

    .line 11
    iput p2, p0, Lcom/ansca/corona/events/CreditsRequestEvent;->myTotalPoints:I

    .line 12
    return-void
.end method


# virtual methods
.method public Send()V
    .locals 2

    .prologue
    .line 16
    iget v0, p0, Lcom/ansca/corona/events/CreditsRequestEvent;->myNewPoints:I

    iget v1, p0, Lcom/ansca/corona/events/CreditsRequestEvent;->myTotalPoints:I

    invoke-static {v0, v1}, Lcom/ansca/corona/JavaToNativeShim;->creditsRequestEvent(II)V

    .line 17
    return-void
.end method
