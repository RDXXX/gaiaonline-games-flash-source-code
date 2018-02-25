.class public Lcom/ansca/corona/events/LocationEvent;
.super Lcom/ansca/corona/events/Event;
.source "LocationEvent.java"


# instance fields
.field private myAccuracy:D

.field private myAltitude:D

.field private myBearing:D

.field private myLatitude:D

.field private myLongitude:D

.field private mySpeed:D

.field private myTime:D


# direct methods
.method constructor <init>(DDDDDDD)V
    .locals 0
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "altitude"    # D
    .param p7, "accuracy"    # D
    .param p9, "speed"    # D
    .param p11, "bearing"    # D
    .param p13, "time"    # D

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/ansca/corona/events/Event;-><init>()V

    .line 9
    iput-wide p1, p0, Lcom/ansca/corona/events/LocationEvent;->myLatitude:D

    .line 10
    iput-wide p3, p0, Lcom/ansca/corona/events/LocationEvent;->myLongitude:D

    .line 11
    iput-wide p5, p0, Lcom/ansca/corona/events/LocationEvent;->myAltitude:D

    .line 12
    iput-wide p7, p0, Lcom/ansca/corona/events/LocationEvent;->myAccuracy:D

    .line 13
    iput-wide p9, p0, Lcom/ansca/corona/events/LocationEvent;->mySpeed:D

    .line 14
    iput-wide p11, p0, Lcom/ansca/corona/events/LocationEvent;->myBearing:D

    .line 15
    iput-wide p13, p0, Lcom/ansca/corona/events/LocationEvent;->myTime:D

    .line 16
    return-void
.end method


# virtual methods
.method public Send()V
    .locals 14

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/ansca/corona/events/LocationEvent;->myLatitude:D

    iget-wide v2, p0, Lcom/ansca/corona/events/LocationEvent;->myLongitude:D

    iget-wide v4, p0, Lcom/ansca/corona/events/LocationEvent;->myAltitude:D

    iget-wide v6, p0, Lcom/ansca/corona/events/LocationEvent;->myAccuracy:D

    iget-wide v8, p0, Lcom/ansca/corona/events/LocationEvent;->mySpeed:D

    iget-wide v10, p0, Lcom/ansca/corona/events/LocationEvent;->myBearing:D

    iget-wide v12, p0, Lcom/ansca/corona/events/LocationEvent;->myTime:D

    invoke-static/range {v0 .. v13}, Lcom/ansca/corona/JavaToNativeShim;->locationEvent(DDDDDDD)V

    .line 21
    return-void
.end method
