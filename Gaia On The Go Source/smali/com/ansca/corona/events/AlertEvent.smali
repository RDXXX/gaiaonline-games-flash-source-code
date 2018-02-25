.class public Lcom/ansca/corona/events/AlertEvent;
.super Lcom/ansca/corona/events/Event;
.source "AlertEvent.java"


# instance fields
.field private mCancelled:Z

.field private myButtonIndex:I


# direct methods
.method constructor <init>(IZ)V
    .locals 0
    .param p1, "which"    # I
    .param p2, "cancelled"    # Z

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/ansca/corona/events/Event;-><init>()V

    .line 10
    iput p1, p0, Lcom/ansca/corona/events/AlertEvent;->myButtonIndex:I

    .line 11
    iput-boolean p2, p0, Lcom/ansca/corona/events/AlertEvent;->mCancelled:Z

    .line 12
    return-void
.end method


# virtual methods
.method public Send()V
    .locals 2

    .prologue
    .line 16
    iget v0, p0, Lcom/ansca/corona/events/AlertEvent;->myButtonIndex:I

    iget-boolean v1, p0, Lcom/ansca/corona/events/AlertEvent;->mCancelled:Z

    invoke-static {v0, v1}, Lcom/ansca/corona/JavaToNativeShim;->alertCallback(IZ)V

    .line 17
    return-void
.end method
