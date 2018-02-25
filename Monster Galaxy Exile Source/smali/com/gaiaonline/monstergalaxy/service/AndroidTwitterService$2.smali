.class Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService$2;
.super Ljava/lang/Object;
.source "AndroidTwitterService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;->showError(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;

.field private final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService$2;->this$0:Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;

    iput-object p2, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService$2;->val$message:Ljava/lang/String;

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 198
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService$2;->this$0:Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;->access$0(Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService;)Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    move-result-object v0

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidTwitterService$2;->val$message:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 199
    return-void
.end method
