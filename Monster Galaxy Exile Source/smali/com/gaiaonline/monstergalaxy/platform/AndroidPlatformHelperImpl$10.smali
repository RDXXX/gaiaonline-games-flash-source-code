.class Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$10;
.super Ljava/lang/Object;
.source "AndroidPlatformHelperImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->setTextfieldValue(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

.field private final synthetic val$name:Ljava/lang/String;

.field private final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$10;->this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    iput-object p2, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$10;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$10;->val$text:Ljava/lang/String;

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 353
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$10;->this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->access$7(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$10;->val$name:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 354
    .local v0, "editText":Landroid/widget/EditText;
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 357
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$10;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 358
    return-void
.end method
