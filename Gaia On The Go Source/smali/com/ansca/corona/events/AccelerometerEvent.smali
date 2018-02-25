.class public Lcom/ansca/corona/events/AccelerometerEvent;
.super Lcom/ansca/corona/events/Event;
.source "AccelerometerEvent.java"


# instance fields
.field private myDeltaTime:D

.field private myX:D

.field private myY:D

.field private myZ:D


# direct methods
.method constructor <init>(DDDD)V
    .locals 0
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D
    .param p7, "deltaTime"    # D

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/ansca/corona/events/Event;-><init>()V

    .line 9
    iput-wide p1, p0, Lcom/ansca/corona/events/AccelerometerEvent;->myX:D

    .line 10
    iput-wide p3, p0, Lcom/ansca/corona/events/AccelerometerEvent;->myY:D

    .line 11
    iput-wide p5, p0, Lcom/ansca/corona/events/AccelerometerEvent;->myZ:D

    .line 12
    iput-wide p7, p0, Lcom/ansca/corona/events/AccelerometerEvent;->myDeltaTime:D

    .line 13
    return-void
.end method


# virtual methods
.method public Send()V
    .locals 8

    .prologue
    .line 17
    iget-wide v0, p0, Lcom/ansca/corona/events/AccelerometerEvent;->myX:D

    iget-wide v2, p0, Lcom/ansca/corona/events/AccelerometerEvent;->myY:D

    iget-wide v4, p0, Lcom/ansca/corona/events/AccelerometerEvent;->myZ:D

    iget-wide v6, p0, Lcom/ansca/corona/events/AccelerometerEvent;->myDeltaTime:D

    invoke-static/range {v0 .. v7}, Lcom/ansca/corona/JavaToNativeShim;->accelerometerEvent(DDDD)V

    .line 18
    return-void
.end method
