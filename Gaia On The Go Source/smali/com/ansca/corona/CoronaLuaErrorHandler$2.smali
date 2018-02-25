.class Lcom/ansca/corona/CoronaLuaErrorHandler$2;
.super Ljava/lang/Object;
.source "CoronaLuaErrorHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/CoronaLuaErrorHandler;->reportError(Ljava/lang/String;Ljava/lang/RuntimeException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/CoronaLuaErrorHandler;

.field final synthetic val$errorMessage:Ljava/lang/String;

.field final synthetic val$exception:Ljava/lang/RuntimeException;


# direct methods
.method constructor <init>(Lcom/ansca/corona/CoronaLuaErrorHandler;Ljava/lang/RuntimeException;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/ansca/corona/CoronaLuaErrorHandler$2;->this$0:Lcom/ansca/corona/CoronaLuaErrorHandler;

    iput-object p2, p0, Lcom/ansca/corona/CoronaLuaErrorHandler$2;->val$exception:Ljava/lang/RuntimeException;

    iput-object p3, p0, Lcom/ansca/corona/CoronaLuaErrorHandler$2;->val$errorMessage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 154
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    .line 155
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 156
    iget-object v4, p0, Lcom/ansca/corona/CoronaLuaErrorHandler$2;->val$exception:Ljava/lang/RuntimeException;

    throw v4

    .line 161
    :cond_0
    new-instance v2, Lcom/ansca/corona/CoronaLuaErrorHandler$2$1;

    invoke-direct {v2, p0}, Lcom/ansca/corona/CoronaLuaErrorHandler$2$1;-><init>(Lcom/ansca/corona/CoronaLuaErrorHandler$2;)V

    .line 168
    .local v2, "cancelListener":Landroid/content/DialogInterface$OnCancelListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 169
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const-string v4, "Runtime Error"

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 170
    iget-object v4, p0, Lcom/ansca/corona/CoronaLuaErrorHandler$2;->val$errorMessage:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 171
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 172
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 173
    .local v3, "dialog":Landroid/app/AlertDialog;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 174
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 175
    return-void
.end method
