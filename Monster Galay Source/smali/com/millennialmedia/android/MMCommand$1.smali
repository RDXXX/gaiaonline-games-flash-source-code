.class Lcom/millennialmedia/android/MMCommand$1;
.super Ljava/lang/Object;
.source "MMCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/MMCommand;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/MMCommand;

.field final synthetic val$call:Ljava/lang/String;

.field final synthetic val$webViewCallback:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMCommand;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/millennialmedia/android/MMCommand$1;->this$0:Lcom/millennialmedia/android/MMCommand;

    iput-object p2, p0, Lcom/millennialmedia/android/MMCommand$1;->val$webViewCallback:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/millennialmedia/android/MMCommand$1;->val$call:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/millennialmedia/android/MMCommand$1;->val$webViewCallback:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/millennialmedia/android/MMCommand$1;->val$call:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 134
    return-void
.end method
