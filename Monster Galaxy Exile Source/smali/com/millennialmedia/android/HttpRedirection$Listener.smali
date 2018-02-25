.class interface abstract Lcom/millennialmedia/android/HttpRedirection$Listener;
.super Ljava/lang/Object;
.source "HttpRedirection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/HttpRedirection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Listener"
.end annotation


# virtual methods
.method public abstract didFailToResolveUri(Landroid/net/Uri;)V
.end method

.method public abstract shouldStartActivityForUri(Landroid/net/Uri;)Z
.end method
