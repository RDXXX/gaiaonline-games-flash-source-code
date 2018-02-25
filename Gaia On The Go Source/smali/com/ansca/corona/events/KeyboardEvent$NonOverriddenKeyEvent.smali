.class public Lcom/ansca/corona/events/KeyboardEvent$NonOverriddenKeyEvent;
.super Landroid/view/KeyEvent;
.source "KeyboardEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/events/KeyboardEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NonOverriddenKeyEvent"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/events/KeyboardEvent;


# direct methods
.method constructor <init>(Lcom/ansca/corona/events/KeyboardEvent;Landroid/view/KeyEvent;)V
    .locals 0
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/ansca/corona/events/KeyboardEvent$NonOverriddenKeyEvent;->this$0:Lcom/ansca/corona/events/KeyboardEvent;

    .line 141
    invoke-direct {p0, p2}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    .line 142
    return-void
.end method
