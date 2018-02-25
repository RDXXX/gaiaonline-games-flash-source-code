.class Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$7$1;
.super Ljava/lang/Object;
.source "AndroidPlatformHelperImpl.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$7;

.field private final synthetic val$disallowedChars:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$7;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$7$1;->this$1:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$7;

    iput-object p2, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$7$1;->val$disallowedChars:Ljava/lang/String;

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    .line 260
    .line 261
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 262
    .local v3, "newSubstring":Ljava/lang/String;
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 263
    .local v2, "modifiedSubstring":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$7$1;->val$disallowedChars:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v1, v4, :cond_1

    .line 269
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x0

    .end local v2    # "modifiedSubstring":Ljava/lang/String;
    :cond_0
    return-object v2

    .line 264
    .restart local v2    # "modifiedSubstring":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$7$1;->val$disallowedChars:Ljava/lang/String;

    .line 265
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, "disallowedChar":Ljava/lang/String;
    const-string v4, ""

    .line 266
    invoke-virtual {v2, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 263
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
