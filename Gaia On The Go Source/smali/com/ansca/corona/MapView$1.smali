.class Lcom/ansca/corona/MapView$1;
.super Landroid/webkit/WebView;
.source "MapView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/MapView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/MapView;


# direct methods
.method constructor <init>(Lcom/ansca/corona/MapView;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/ansca/corona/MapView$1;->this$0:Lcom/ansca/corona/MapView;

    invoke-direct {p0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public invalidate(IIII)V
    .locals 1
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 92
    sub-int v0, p3, p1

    if-lez v0, :cond_0

    sub-int v0, p4, p2

    if-gtz v0, :cond_1

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/MapView$1;->invalidate()V

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->invalidate(IIII)V

    goto :goto_0
.end method
