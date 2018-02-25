.class public Lcom/ansca/corona/events/ResizeEvent;
.super Lcom/ansca/corona/events/Event;
.source "ResizeEvent.java"


# instance fields
.field private fHeight:I

.field private fOrientation:Lcom/ansca/corona/WindowOrientation;

.field private fWidth:I


# direct methods
.method constructor <init>(IILcom/ansca/corona/WindowOrientation;)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "orientation"    # Lcom/ansca/corona/WindowOrientation;

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/ansca/corona/events/Event;-><init>()V

    .line 10
    if-nez p3, :cond_0

    .line 11
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13
    :cond_0
    iput p1, p0, Lcom/ansca/corona/events/ResizeEvent;->fWidth:I

    .line 14
    iput p2, p0, Lcom/ansca/corona/events/ResizeEvent;->fHeight:I

    .line 15
    iput-object p3, p0, Lcom/ansca/corona/events/ResizeEvent;->fOrientation:Lcom/ansca/corona/WindowOrientation;

    .line 16
    return-void
.end method


# virtual methods
.method public Send()V
    .locals 4

    .prologue
    .line 20
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 21
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 22
    iget v1, p0, Lcom/ansca/corona/events/ResizeEvent;->fWidth:I

    iget v2, p0, Lcom/ansca/corona/events/ResizeEvent;->fHeight:I

    iget-object v3, p0, Lcom/ansca/corona/events/ResizeEvent;->fOrientation:Lcom/ansca/corona/WindowOrientation;

    invoke-static {v0, v1, v2, v3}, Lcom/ansca/corona/JavaToNativeShim;->resize(Landroid/content/Context;IILcom/ansca/corona/WindowOrientation;)V

    .line 24
    :cond_0
    return-void
.end method
