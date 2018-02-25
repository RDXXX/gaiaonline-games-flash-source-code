.class final Lcom/millennialmedia/android/MMConversionTracker$1;
.super Ljava/lang/Thread;
.source "MMConversionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/MMConversionTracker;->trackConversion(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$auid:Ljava/lang/String;

.field final synthetic val$extraParams:Ljava/util/TreeMap;

.field final synthetic val$goalId:Ljava/lang/String;

.field final synthetic val$installTimeUTC:J

.field final synthetic val$isFirstLaunch:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ZJLjava/util/TreeMap;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/millennialmedia/android/MMConversionTracker$1;->val$goalId:Ljava/lang/String;

    iput-object p2, p0, Lcom/millennialmedia/android/MMConversionTracker$1;->val$auid:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/millennialmedia/android/MMConversionTracker$1;->val$isFirstLaunch:Z

    iput-wide p4, p0, Lcom/millennialmedia/android/MMConversionTracker$1;->val$installTimeUTC:J

    iput-object p6, p0, Lcom/millennialmedia/android/MMConversionTracker$1;->val$extraParams:Ljava/util/TreeMap;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 128
    new-instance v0, Lcom/millennialmedia/android/HttpGetRequest;

    invoke-direct {v0}, Lcom/millennialmedia/android/HttpGetRequest;-><init>()V

    .line 131
    .local v0, "tc":Lcom/millennialmedia/android/HttpGetRequest;
    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/android/MMConversionTracker$1;->val$goalId:Ljava/lang/String;

    iget-object v2, p0, Lcom/millennialmedia/android/MMConversionTracker$1;->val$auid:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/millennialmedia/android/MMConversionTracker$1;->val$isFirstLaunch:Z

    iget-wide v4, p0, Lcom/millennialmedia/android/MMConversionTracker$1;->val$installTimeUTC:J

    iget-object v6, p0, Lcom/millennialmedia/android/MMConversionTracker$1;->val$extraParams:Ljava/util/TreeMap;

    invoke-virtual/range {v0 .. v6}, Lcom/millennialmedia/android/HttpGetRequest;->trackConversion(Ljava/lang/String;Ljava/lang/String;ZJLjava/util/TreeMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v7

    .line 135
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
