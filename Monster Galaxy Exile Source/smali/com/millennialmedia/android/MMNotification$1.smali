.class Lcom/millennialmedia/android/MMNotification$1;
.super Ljava/lang/Object;
.source "MMNotification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/MMNotification;->alert(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/MMNotification;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$finalArguments:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMNotification;Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/millennialmedia/android/MMNotification$1;->this$0:Lcom/millennialmedia/android/MMNotification;

    iput-object p2, p0, Lcom/millennialmedia/android/MMNotification$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/millennialmedia/android/MMNotification$1;->val$finalArguments:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 50
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/millennialmedia/android/MMNotification$1;->val$context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 51
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    iget-object v2, p0, Lcom/millennialmedia/android/MMNotification$1;->val$finalArguments:Ljava/util/HashMap;

    const-string v3, "title"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    iget-object v2, p0, Lcom/millennialmedia/android/MMNotification$1;->val$finalArguments:Ljava/util/HashMap;

    const-string v3, "title"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 53
    :cond_0
    iget-object v2, p0, Lcom/millennialmedia/android/MMNotification$1;->val$finalArguments:Ljava/util/HashMap;

    const-string v3, "message"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 54
    iget-object v2, p0, Lcom/millennialmedia/android/MMNotification$1;->val$finalArguments:Ljava/util/HashMap;

    const-string v3, "message"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 55
    :cond_1
    iget-object v2, p0, Lcom/millennialmedia/android/MMNotification$1;->val$finalArguments:Ljava/util/HashMap;

    const-string v3, "cancelButton"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 56
    const/4 v3, -0x2

    iget-object v2, p0, Lcom/millennialmedia/android/MMNotification$1;->val$finalArguments:Ljava/util/HashMap;

    const-string v4, "cancelButton"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/millennialmedia/android/MMNotification$1;->this$0:Lcom/millennialmedia/android/MMNotification;

    invoke-virtual {v0, v3, v2, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 57
    :cond_2
    iget-object v2, p0, Lcom/millennialmedia/android/MMNotification$1;->val$finalArguments:Ljava/util/HashMap;

    const-string v3, "buttons"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 59
    iget-object v2, p0, Lcom/millennialmedia/android/MMNotification$1;->val$finalArguments:Ljava/util/HashMap;

    const-string v3, "buttons"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "buttons":[Ljava/lang/String;
    array-length v2, v1

    if-lez v2, :cond_3

    .line 61
    const/4 v2, -0x3

    const/4 v3, 0x0

    aget-object v3, v1, v3

    iget-object v4, p0, Lcom/millennialmedia/android/MMNotification$1;->this$0:Lcom/millennialmedia/android/MMNotification;

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 62
    :cond_3
    array-length v2, v1

    if-le v2, v5, :cond_4

    .line 63
    const/4 v2, -0x1

    aget-object v3, v1, v5

    iget-object v4, p0, Lcom/millennialmedia/android/MMNotification$1;->this$0:Lcom/millennialmedia/android/MMNotification;

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 65
    .end local v1    # "buttons":[Ljava/lang/String;
    :cond_4
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 66
    return-void
.end method
