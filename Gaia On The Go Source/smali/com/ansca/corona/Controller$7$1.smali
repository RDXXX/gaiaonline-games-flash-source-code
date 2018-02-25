.class Lcom/ansca/corona/Controller$7$1;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/Controller$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ansca/corona/Controller$7;


# direct methods
.method constructor <init>(Lcom/ansca/corona/Controller$7;)V
    .locals 0

    .prologue
    .line 781
    iput-object p1, p0, Lcom/ansca/corona/Controller$7$1;->this$1:Lcom/ansca/corona/Controller$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 784
    iget-object v0, p0, Lcom/ansca/corona/Controller$7$1;->this$1:Lcom/ansca/corona/Controller$7;

    iget-object v0, v0, Lcom/ansca/corona/Controller$7;->this$0:Lcom/ansca/corona/Controller;

    const-string v1, "http://www.coronalabs.com/products/corona-sdk/?utm_source=corona-sdk&utm_medium=corona-sdk&utm_campaign=trial-popup"

    invoke-virtual {v0, v1}, Lcom/ansca/corona/Controller;->openUrl(Ljava/lang/String;)Z

    .line 785
    return-void
.end method
