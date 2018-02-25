.class public Lcom/ansca/corona/events/TouchEvent;
.super Lcom/ansca/corona/events/Event;
.source "TouchEvent.java"


# instance fields
.field private myData:Lcom/ansca/corona/events/TouchData;


# direct methods
.method constructor <init>(Lcom/ansca/corona/events/TouchData;)V
    .locals 1
    .param p1, "t"    # Lcom/ansca/corona/events/TouchData;

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/ansca/corona/events/Event;-><init>()V

    .line 11
    new-instance v0, Lcom/ansca/corona/events/TouchData;

    invoke-direct {v0, p1}, Lcom/ansca/corona/events/TouchData;-><init>(Lcom/ansca/corona/events/TouchData;)V

    iput-object v0, p0, Lcom/ansca/corona/events/TouchEvent;->myData:Lcom/ansca/corona/events/TouchData;

    .line 12
    return-void
.end method


# virtual methods
.method public Send()V
    .locals 9

    .prologue
    .line 16
    iget-object v8, p0, Lcom/ansca/corona/events/TouchEvent;->myData:Lcom/ansca/corona/events/TouchData;

    .line 17
    .local v8, "t":Lcom/ansca/corona/events/TouchData;
    invoke-virtual {v8}, Lcom/ansca/corona/events/TouchData;->getX()I

    move-result v0

    invoke-virtual {v8}, Lcom/ansca/corona/events/TouchData;->getY()I

    move-result v1

    invoke-virtual {v8}, Lcom/ansca/corona/events/TouchData;->getStartX()I

    move-result v2

    invoke-virtual {v8}, Lcom/ansca/corona/events/TouchData;->getStartY()I

    move-result v3

    invoke-virtual {v8}, Lcom/ansca/corona/events/TouchData;->getPhase()I

    move-result v4

    invoke-virtual {v8}, Lcom/ansca/corona/events/TouchData;->getTimestamp()J

    move-result-wide v5

    invoke-virtual {v8}, Lcom/ansca/corona/events/TouchData;->getId()I

    move-result v7

    invoke-static/range {v0 .. v7}, Lcom/ansca/corona/JavaToNativeShim;->touchEvent(IIIIIJI)V

    .line 18
    return-void
.end method
