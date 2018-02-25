.class Lcom/ansca/corona/Controller$7;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/Controller;->showTrialAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/Controller;


# direct methods
.method constructor <init>(Lcom/ansca/corona/Controller;)V
    .locals 0

    .prologue
    .line 773
    iput-object p1, p0, Lcom/ansca/corona/Controller$7;->this$0:Lcom/ansca/corona/Controller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 776
    iget-object v3, p0, Lcom/ansca/corona/Controller$7;->this$0:Lcom/ansca/corona/Controller;

    invoke-static {v3}, Lcom/ansca/corona/Controller;->access$200(Lcom/ansca/corona/Controller;)Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    .line 777
    .local v0, "activity":Lcom/ansca/corona/CoronaActivity;
    if-nez v0, :cond_0

    .line 792
    :goto_0
    return-void

    .line 780
    :cond_0
    iget-object v3, p0, Lcom/ansca/corona/Controller$7;->this$0:Lcom/ansca/corona/Controller;

    invoke-static {v3, v0}, Lcom/ansca/corona/Controller;->access$300(Lcom/ansca/corona/Controller;Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 781
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v2, Lcom/ansca/corona/Controller$7$1;

    invoke-direct {v2, p0}, Lcom/ansca/corona/Controller$7$1;-><init>(Lcom/ansca/corona/Controller$7;)V

    .line 787
    .local v2, "clickListener":Landroid/content/DialogInterface$OnClickListener;
    const-string v3, "Corona SDK Trial"

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 788
    const-string v3, "This message only appears in the trial version"

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 789
    const-string v3, "OK"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 790
    const-string v3, "Learn More"

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 791
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
