.class public Lcom/ansca/corona/events/TapEvent;
.super Lcom/ansca/corona/events/Event;
.source "TapEvent.java"


# instance fields
.field private myCount:I

.field private myX:I

.field private myY:I


# direct methods
.method constructor <init>(III)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "count"    # I

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/ansca/corona/events/Event;-><init>()V

    .line 9
    iput p1, p0, Lcom/ansca/corona/events/TapEvent;->myX:I

    .line 10
    iput p2, p0, Lcom/ansca/corona/events/TapEvent;->myY:I

    .line 11
    iput p3, p0, Lcom/ansca/corona/events/TapEvent;->myCount:I

    .line 12
    return-void
.end method


# virtual methods
.method public Send()V
    .locals 3

    .prologue
    .line 16
    iget v0, p0, Lcom/ansca/corona/events/TapEvent;->myX:I

    iget v1, p0, Lcom/ansca/corona/events/TapEvent;->myY:I

    iget v2, p0, Lcom/ansca/corona/events/TapEvent;->myCount:I

    invoke-static {v0, v1, v2}, Lcom/ansca/corona/JavaToNativeShim;->tapEvent(III)V

    .line 17
    return-void
.end method
