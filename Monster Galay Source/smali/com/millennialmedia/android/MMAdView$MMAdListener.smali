.class public interface abstract Lcom/millennialmedia/android/MMAdView$MMAdListener;
.super Ljava/lang/Object;
.source "MMAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/MMAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MMAdListener"
.end annotation


# virtual methods
.method public abstract MMAdCachingCompleted(Lcom/millennialmedia/android/MMAdView;Z)V
.end method

.method public abstract MMAdClickedToOverlay(Lcom/millennialmedia/android/MMAdView;)V
.end method

.method public abstract MMAdFailed(Lcom/millennialmedia/android/MMAdView;)V
.end method

.method public abstract MMAdOverlayLaunched(Lcom/millennialmedia/android/MMAdView;)V
.end method

.method public abstract MMAdRequestIsCaching(Lcom/millennialmedia/android/MMAdView;)V
.end method

.method public abstract MMAdReturned(Lcom/millennialmedia/android/MMAdView;)V
.end method
