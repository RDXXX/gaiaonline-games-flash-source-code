.class public Lcom/ansca/corona/events/ImagePickerEvent;
.super Lcom/ansca/corona/events/Event;
.source "ImagePickerEvent.java"


# instance fields
.field private fSelectedImageFileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "selectedImageFileName"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/ansca/corona/events/Event;-><init>()V

    .line 16
    if-eqz p1, :cond_0

    .end local p1    # "selectedImageFileName":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lcom/ansca/corona/events/ImagePickerEvent;->fSelectedImageFileName:Ljava/lang/String;

    .line 17
    return-void

    .line 16
    .restart local p1    # "selectedImageFileName":Ljava/lang/String;
    :cond_0
    const-string p1, ""

    goto :goto_0
.end method


# virtual methods
.method public Send()V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/ansca/corona/events/ImagePickerEvent;->fSelectedImageFileName:Ljava/lang/String;

    invoke-static {v0}, Lcom/ansca/corona/JavaToNativeShim;->imagePickerEvent(Ljava/lang/String;)V

    .line 25
    return-void
.end method
