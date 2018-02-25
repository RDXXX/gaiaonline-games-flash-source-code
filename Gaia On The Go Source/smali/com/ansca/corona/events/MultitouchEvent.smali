.class public Lcom/ansca/corona/events/MultitouchEvent;
.super Lcom/ansca/corona/events/Event;
.source "MultitouchEvent.java"


# static fields
.field public static final PHASE_BEGAN:I = 0x0

.field public static final PHASE_CANCELLED:I = 0x4

.field public static final PHASE_ENDED:I = 0x3

.field public static final PHASE_MOVED:I = 0x1

.field public static final PHASE_STATIONARY:I = 0x2


# instance fields
.field private myTouches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ansca/corona/events/TouchData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/ansca/corona/events/Event;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ansca/corona/events/MultitouchEvent;->myTouches:Ljava/util/List;

    .line 21
    return-void
.end method


# virtual methods
.method public Send()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/ansca/corona/events/MultitouchEvent;->myTouches:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/ansca/corona/JavaToNativeShim;->multitouchEventCallback([Ljava/lang/Object;)V

    .line 32
    return-void
.end method

.method public add(Lcom/ansca/corona/events/TouchData;)V
    .locals 2
    .param p1, "t"    # Lcom/ansca/corona/events/TouchData;

    .prologue
    .line 25
    new-instance v0, Lcom/ansca/corona/events/TouchData;

    invoke-direct {v0, p1}, Lcom/ansca/corona/events/TouchData;-><init>(Lcom/ansca/corona/events/TouchData;)V

    .line 26
    .local v0, "tCopy":Lcom/ansca/corona/events/TouchData;
    iget-object v1, p0, Lcom/ansca/corona/events/MultitouchEvent;->myTouches:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    return-void
.end method
