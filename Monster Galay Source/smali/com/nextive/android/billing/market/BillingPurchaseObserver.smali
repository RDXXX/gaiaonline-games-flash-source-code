.class public interface abstract Lcom/nextive/android/billing/market/BillingPurchaseObserver;
.super Ljava/lang/Object;
.source "BillingPurchaseObserver.java"


# virtual methods
.method public abstract onBillingSupported(Z)V
.end method

.method public abstract onPurchaseStateChange(Lcom/nextive/android/billing/market/BillingConstants$PurchaseState;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
.end method

.method public abstract onRequestPurchaseResponse(Lcom/nextive/android/billing/market/BillingService$RequestPurchase;Lcom/nextive/android/billing/market/BillingConstants$ResponseCode;)V
.end method

.method public abstract onRestoreTransactionsResponse(Lcom/nextive/android/billing/market/BillingService$RestoreTransactions;Lcom/nextive/android/billing/market/BillingConstants$ResponseCode;)V
.end method
