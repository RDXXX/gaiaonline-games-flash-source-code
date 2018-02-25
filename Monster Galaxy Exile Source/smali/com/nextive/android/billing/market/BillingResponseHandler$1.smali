.class Lcom/nextive/android/billing/market/BillingResponseHandler$1;
.super Ljava/lang/Object;
.source "BillingResponseHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nextive/android/billing/market/BillingResponseHandler;->purchaseResponse(Landroid/content/Context;Lcom/nextive/android/billing/market/BillingConstants$PurchaseState;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$developerPayload:Ljava/lang/String;

.field private final synthetic val$orderId:Ljava/lang/String;

.field private final synthetic val$productId:Ljava/lang/String;

.field private final synthetic val$purchaseState:Lcom/nextive/android/billing/market/BillingConstants$PurchaseState;

.field private final synthetic val$purchaseTime:J


# direct methods
.method constructor <init>(Lcom/nextive/android/billing/market/BillingConstants$PurchaseState;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nextive/android/billing/market/BillingResponseHandler$1;->val$purchaseState:Lcom/nextive/android/billing/market/BillingConstants$PurchaseState;

    iput-object p2, p0, Lcom/nextive/android/billing/market/BillingResponseHandler$1;->val$productId:Ljava/lang/String;

    iput-object p3, p0, Lcom/nextive/android/billing/market/BillingResponseHandler$1;->val$orderId:Ljava/lang/String;

    iput-wide p4, p0, Lcom/nextive/android/billing/market/BillingResponseHandler$1;->val$purchaseTime:J

    iput-object p6, p0, Lcom/nextive/android/billing/market/BillingResponseHandler$1;->val$developerPayload:Ljava/lang/String;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 142
    const-class v7, Lcom/nextive/android/billing/market/BillingResponseHandler;

    monitor-enter v7

    .line 143
    :try_start_0
    invoke-static {}, Lcom/nextive/android/billing/market/BillingResponseHandler;->access$0()Lcom/nextive/android/billing/market/BillingPurchaseObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    invoke-static {}, Lcom/nextive/android/billing/market/BillingResponseHandler;->access$0()Lcom/nextive/android/billing/market/BillingPurchaseObserver;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lcom/nextive/android/billing/market/BillingResponseHandler$1;->val$purchaseState:Lcom/nextive/android/billing/market/BillingConstants$PurchaseState;

    iget-object v2, p0, Lcom/nextive/android/billing/market/BillingResponseHandler$1;->val$productId:Ljava/lang/String;

    iget-object v3, p0, Lcom/nextive/android/billing/market/BillingResponseHandler$1;->val$orderId:Ljava/lang/String;

    iget-wide v4, p0, Lcom/nextive/android/billing/market/BillingResponseHandler$1;->val$purchaseTime:J

    iget-object v6, p0, Lcom/nextive/android/billing/market/BillingResponseHandler$1;->val$developerPayload:Ljava/lang/String;

    .line 144
    invoke-interface/range {v0 .. v6}, Lcom/nextive/android/billing/market/BillingPurchaseObserver;->onPurchaseStateChange(Lcom/nextive/android/billing/market/BillingConstants$PurchaseState;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 142
    :cond_0
    monitor-exit v7

    .line 148
    return-void

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
