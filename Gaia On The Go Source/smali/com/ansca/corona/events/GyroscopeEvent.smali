.class public Lcom/ansca/corona/events/GyroscopeEvent;
.super Lcom/ansca/corona/events/Event;
.source "GyroscopeEvent.java"


# instance fields
.field private myDeltaTime:D

.field private myXRotation:D

.field private myYRotation:D

.field private myZRotation:D


# direct methods
.method constructor <init>(DDDD)V
    .locals 0
    .param p1, "xRotation"    # D
    .param p3, "yRotation"    # D
    .param p5, "zRotation"    # D
    .param p7, "deltaTime"    # D

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/ansca/corona/events/Event;-><init>()V

    .line 9
    iput-wide p1, p0, Lcom/ansca/corona/events/GyroscopeEvent;->myXRotation:D

    .line 10
    iput-wide p3, p0, Lcom/ansca/corona/events/GyroscopeEvent;->myYRotation:D

    .line 11
    iput-wide p5, p0, Lcom/ansca/corona/events/GyroscopeEvent;->myZRotation:D

    .line 12
    iput-wide p7, p0, Lcom/ansca/corona/events/GyroscopeEvent;->myDeltaTime:D

    .line 13
    return-void
.end method


# virtual methods
.method public Send()V
    .locals 8

    .prologue
    .line 17
    iget-wide v0, p0, Lcom/ansca/corona/events/GyroscopeEvent;->myXRotation:D

    iget-wide v2, p0, Lcom/ansca/corona/events/GyroscopeEvent;->myYRotation:D

    iget-wide v4, p0, Lcom/ansca/corona/events/GyroscopeEvent;->myZRotation:D

    iget-wide v6, p0, Lcom/ansca/corona/events/GyroscopeEvent;->myDeltaTime:D

    invoke-static/range {v0 .. v7}, Lcom/ansca/corona/JavaToNativeShim;->gyroscopeEvent(DDDD)V

    .line 18
    return-void
.end method
