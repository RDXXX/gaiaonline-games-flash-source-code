.class Lcom/ansca/corona/CoronaEditText$4;
.super Landroid/text/method/TextKeyListener;
.source "CoronaEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/CoronaEditText;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/CoronaEditText;


# direct methods
.method constructor <init>(Lcom/ansca/corona/CoronaEditText;Landroid/text/method/TextKeyListener$Capitalize;Z)V
    .locals 0
    .param p2, "x0"    # Landroid/text/method/TextKeyListener$Capitalize;
    .param p3, "x1"    # Z

    .prologue
    .line 131
    iput-object p1, p0, Lcom/ansca/corona/CoronaEditText$4;->this$0:Lcom/ansca/corona/CoronaEditText;

    invoke-direct {p0, p2, p3}, Landroid/text/method/TextKeyListener;-><init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V

    return-void
.end method


# virtual methods
.method public getInputType()I
    .locals 2

    .prologue
    .line 138
    const/4 v0, 0x1

    .line 139
    .local v0, "type":I
    iget-object v1, p0, Lcom/ansca/corona/CoronaEditText$4;->this$0:Lcom/ansca/corona/CoronaEditText;

    invoke-static {v1}, Lcom/ansca/corona/CoronaEditText;->access$700(Lcom/ansca/corona/CoronaEditText;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    or-int/lit16 v0, v0, 0x80

    .line 143
    :goto_0
    invoke-static {}, Lcom/ansca/corona/Controller;->getAndroidVersionSpecific()Lcom/ansca/corona/version/IAndroidVersionSpecific;

    move-result-object v1

    invoke-interface {v1}, Lcom/ansca/corona/version/IAndroidVersionSpecific;->inputTypeFlagsNoSuggestions()I

    move-result v1

    or-int/2addr v0, v1

    .line 144
    return v0

    .line 142
    :cond_0
    or-int/lit8 v0, v0, 0x0

    goto :goto_0
.end method
