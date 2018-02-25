.class public Lcom/ansca/corona/events/TouchData;
.super Ljava/lang/Object;
.source "TouchData.java"


# instance fields
.field private myId:I

.field private myPhase:I

.field private myStartX:F

.field private myStartY:F

.field private myTimestamp:J

.field private myX:F

.field private myY:F


# direct methods
.method public constructor <init>(IFFI)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "phase"    # I

    .prologue
    .line 13
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/ansca/corona/events/TouchData;-><init>(IFFIJ)V

    .line 14
    return-void
.end method

.method public constructor <init>(IFFIJ)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "phase"    # I
    .param p5, "timestamp"    # J

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lcom/ansca/corona/events/TouchData;->myPhase:I

    .line 16
    iput p1, p0, Lcom/ansca/corona/events/TouchData;->myId:I

    .line 17
    iput p2, p0, Lcom/ansca/corona/events/TouchData;->myX:F

    .line 18
    iput p3, p0, Lcom/ansca/corona/events/TouchData;->myY:F

    .line 19
    iput p2, p0, Lcom/ansca/corona/events/TouchData;->myStartX:F

    .line 20
    iput p3, p0, Lcom/ansca/corona/events/TouchData;->myStartY:F

    .line 21
    iput p4, p0, Lcom/ansca/corona/events/TouchData;->myPhase:I

    .line 22
    iput-wide p5, p0, Lcom/ansca/corona/events/TouchData;->myTimestamp:J

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/ansca/corona/events/TouchData;)V
    .locals 7
    .param p1, "rhs"    # Lcom/ansca/corona/events/TouchData;

    .prologue
    .line 25
    iget v1, p1, Lcom/ansca/corona/events/TouchData;->myId:I

    iget v2, p1, Lcom/ansca/corona/events/TouchData;->myX:F

    iget v3, p1, Lcom/ansca/corona/events/TouchData;->myY:F

    iget v4, p1, Lcom/ansca/corona/events/TouchData;->myPhase:I

    iget-wide v5, p1, Lcom/ansca/corona/events/TouchData;->myTimestamp:J

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/ansca/corona/events/TouchData;-><init>(IFFIJ)V

    .line 26
    iget v0, p1, Lcom/ansca/corona/events/TouchData;->myStartX:F

    iput v0, p0, Lcom/ansca/corona/events/TouchData;->myStartX:F

    .line 27
    iget v0, p1, Lcom/ansca/corona/events/TouchData;->myStartY:F

    iput v0, p0, Lcom/ansca/corona/events/TouchData;->myStartY:F

    .line 28
    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/ansca/corona/events/TouchData;->myId:I

    return v0
.end method

.method public getPhase()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/ansca/corona/events/TouchData;->myPhase:I

    return v0
.end method

.method public getStartX()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/ansca/corona/events/TouchData;->myStartX:F

    float-to-int v0, v0

    return v0
.end method

.method public getStartY()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/ansca/corona/events/TouchData;->myStartY:F

    float-to-int v0, v0

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/ansca/corona/events/TouchData;->myTimestamp:J

    return-wide v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/ansca/corona/events/TouchData;->myX:F

    float-to-int v0, v0

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/ansca/corona/events/TouchData;->myY:F

    float-to-int v0, v0

    return v0
.end method

.method public setPhase(I)V
    .locals 0
    .param p1, "phase"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/ansca/corona/events/TouchData;->myPhase:I

    .line 55
    return-void
.end method

.method public setTimestamp(J)V
    .locals 0
    .param p1, "timestamp"    # J

    .prologue
    .line 60
    iput-wide p1, p0, Lcom/ansca/corona/events/TouchData;->myTimestamp:J

    .line 61
    return-void
.end method

.method public setX(F)V
    .locals 0
    .param p1, "x"    # F

    .prologue
    .line 39
    iput p1, p0, Lcom/ansca/corona/events/TouchData;->myX:F

    .line 40
    return-void
.end method

.method public setY(F)V
    .locals 0
    .param p1, "y"    # F

    .prologue
    .line 42
    iput p1, p0, Lcom/ansca/corona/events/TouchData;->myY:F

    .line 43
    return-void
.end method
