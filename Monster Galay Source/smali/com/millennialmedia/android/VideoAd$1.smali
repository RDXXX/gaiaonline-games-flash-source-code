.class Lcom/millennialmedia/android/VideoAd$1;
.super Ljava/lang/Object;
.source "VideoAd.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/VideoAd;->isOnDisk(Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/VideoAd;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/VideoAd;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/millennialmedia/android/VideoAd$1;->this$0:Lcom/millennialmedia/android/VideoAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 318
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd$1;->this$0:Lcom/millennialmedia/android/VideoAd;

    iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->id:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
