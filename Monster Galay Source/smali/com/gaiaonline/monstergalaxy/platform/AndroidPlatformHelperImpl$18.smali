.class Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$18;
.super Ljava/lang/Object;
.source "AndroidPlatformHelperImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->composeEmail(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

.field private final synthetic val$message:Ljava/lang/String;

.field private final synthetic val$subject:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$18;->this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    iput-object p2, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$18;->val$subject:Ljava/lang/String;

    iput-object p3, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$18;->val$message:Ljava/lang/String;

    .line 824
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 827
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.SEND"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 829
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "message/rfc822"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 830
    const/high16 v1, 0x34000000

    .line 833
    .local v1, "flags":I
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 834
    const-string v5, "android.intent.extra.EMAIL"

    .line 835
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    .line 834
    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 836
    const-string v5, "android.intent.extra.SUBJECT"

    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$18;->val$subject:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 837
    const-string v5, "android.intent.extra.TEXT"

    iget-object v6, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$18;->val$message:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 839
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$18;->this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    invoke-static {v5}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->access$0(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;)Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    move-result-object v5

    .line 840
    invoke-virtual {v5}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 842
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    const v5, 0x10040

    .line 841
    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 845
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 848
    :try_start_0
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$18;->this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    invoke-static {v5}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->access$0(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;)Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    move-result-object v5

    .line 849
    const-string v6, "Send email using..."

    .line 848
    invoke-static {v2, v6}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 857
    :goto_0
    return-void

    .line 850
    :catch_0
    move-exception v0

    .line 851
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$18;->this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    const-string v6, "Couldn\'t find an app to send email"

    invoke-static {v5, v6}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->access$15(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;Ljava/lang/String;)V

    .line 852
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 855
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_0
    iget-object v5, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$18;->this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    const-string v6, "Couldn\'t find an application to send email"

    invoke-static {v5, v6}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->access$15(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;Ljava/lang/String;)V

    goto :goto_0
.end method
