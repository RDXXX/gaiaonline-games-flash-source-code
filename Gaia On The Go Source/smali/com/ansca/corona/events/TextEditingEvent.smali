.class public Lcom/ansca/corona/events/TextEditingEvent;
.super Lcom/ansca/corona/events/Event;
.source "TextEditingEvent.java"


# instance fields
.field private myEditTextId:I

.field private newCharacters:Ljava/lang/String;

.field private newString:Ljava/lang/String;

.field private numDeleted:I

.field private oldString:Ljava/lang/String;

.field private startPos:I


# direct methods
.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "start_pos"    # I
    .param p3, "num_deleted"    # I
    .param p4, "new_characters"    # Ljava/lang/String;
    .param p5, "old_string"    # Ljava/lang/String;
    .param p6, "new_string"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/ansca/corona/events/Event;-><init>()V

    .line 16
    iput p1, p0, Lcom/ansca/corona/events/TextEditingEvent;->myEditTextId:I

    .line 17
    iput p2, p0, Lcom/ansca/corona/events/TextEditingEvent;->startPos:I

    .line 18
    iput p3, p0, Lcom/ansca/corona/events/TextEditingEvent;->numDeleted:I

    .line 19
    iput-object p4, p0, Lcom/ansca/corona/events/TextEditingEvent;->newCharacters:Ljava/lang/String;

    .line 20
    iput-object p5, p0, Lcom/ansca/corona/events/TextEditingEvent;->oldString:Ljava/lang/String;

    .line 21
    iput-object p6, p0, Lcom/ansca/corona/events/TextEditingEvent;->newString:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public Send()V
    .locals 7

    .prologue
    .line 27
    invoke-static {}, Lcom/ansca/corona/ViewManager;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v6

    .line 28
    .local v6, "viewManager":Lcom/ansca/corona/ViewManager;
    if-eqz v6, :cond_0

    iget v0, p0, Lcom/ansca/corona/events/TextEditingEvent;->myEditTextId:I

    invoke-virtual {v6, v0}, Lcom/ansca/corona/ViewManager;->hasDisplayObjectWithId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    iget v0, p0, Lcom/ansca/corona/events/TextEditingEvent;->myEditTextId:I

    iget v1, p0, Lcom/ansca/corona/events/TextEditingEvent;->startPos:I

    iget v2, p0, Lcom/ansca/corona/events/TextEditingEvent;->numDeleted:I

    iget-object v3, p0, Lcom/ansca/corona/events/TextEditingEvent;->newCharacters:Ljava/lang/String;

    iget-object v4, p0, Lcom/ansca/corona/events/TextEditingEvent;->oldString:Ljava/lang/String;

    iget-object v5, p0, Lcom/ansca/corona/events/TextEditingEvent;->newString:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/ansca/corona/JavaToNativeShim;->textEditingEvent(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    :cond_0
    return-void
.end method
