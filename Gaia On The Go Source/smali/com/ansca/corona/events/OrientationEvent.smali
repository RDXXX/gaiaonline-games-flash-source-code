.class public Lcom/ansca/corona/events/OrientationEvent;
.super Lcom/ansca/corona/events/Event;
.source "OrientationEvent.java"


# instance fields
.field myNewOrientation:I

.field myOldOrientation:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .param p1, "newOrientation"    # I
    .param p2, "oldOrientation"    # I

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/ansca/corona/events/Event;-><init>()V

    .line 8
    iput p1, p0, Lcom/ansca/corona/events/OrientationEvent;->myNewOrientation:I

    .line 9
    iput p2, p0, Lcom/ansca/corona/events/OrientationEvent;->myOldOrientation:I

    .line 10
    return-void
.end method


# virtual methods
.method public Send()V
    .locals 2

    .prologue
    .line 14
    iget v0, p0, Lcom/ansca/corona/events/OrientationEvent;->myNewOrientation:I

    iget v1, p0, Lcom/ansca/corona/events/OrientationEvent;->myOldOrientation:I

    invoke-static {v0, v1}, Lcom/ansca/corona/JavaToNativeShim;->orientationChanged(II)V

    .line 15
    return-void
.end method
