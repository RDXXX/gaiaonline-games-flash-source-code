.class public Lcom/ansca/corona/events/TextEvent;
.super Lcom/ansca/corona/events/Event;
.source "TextEvent.java"


# instance fields
.field private myEditTextId:I

.field private myHasFocus:Z

.field private myIsDone:Z


# direct methods
.method public constructor <init>(IZZ)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "f"    # Z
    .param p3, "done"    # Z

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/ansca/corona/events/Event;-><init>()V

    .line 13
    iput p1, p0, Lcom/ansca/corona/events/TextEvent;->myEditTextId:I

    .line 14
    iput-boolean p2, p0, Lcom/ansca/corona/events/TextEvent;->myHasFocus:Z

    .line 15
    iput-boolean p3, p0, Lcom/ansca/corona/events/TextEvent;->myIsDone:Z

    .line 16
    return-void
.end method


# virtual methods
.method public Send()V
    .locals 4

    .prologue
    .line 21
    invoke-static {}, Lcom/ansca/corona/ViewManager;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v0

    .line 22
    .local v0, "viewManager":Lcom/ansca/corona/ViewManager;
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/ansca/corona/events/TextEvent;->myEditTextId:I

    invoke-virtual {v0, v1}, Lcom/ansca/corona/ViewManager;->hasDisplayObjectWithId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 23
    iget v1, p0, Lcom/ansca/corona/events/TextEvent;->myEditTextId:I

    iget-boolean v2, p0, Lcom/ansca/corona/events/TextEvent;->myHasFocus:Z

    iget-boolean v3, p0, Lcom/ansca/corona/events/TextEvent;->myIsDone:Z

    invoke-static {v1, v2, v3}, Lcom/ansca/corona/JavaToNativeShim;->textEvent(IZZ)V

    .line 25
    :cond_0
    return-void
.end method
