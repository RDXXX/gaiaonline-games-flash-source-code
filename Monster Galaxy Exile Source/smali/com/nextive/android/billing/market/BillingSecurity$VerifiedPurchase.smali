.class public Lcom/nextive/android/billing/market/BillingSecurity$VerifiedPurchase;
.super Ljava/lang/Object;
.source "BillingSecurity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextive/android/billing/market/BillingSecurity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VerifiedPurchase"
.end annotation


# instance fields
.field public developerPayload:Ljava/lang/String;

.field public notificationId:Ljava/lang/String;

.field public orderId:Ljava/lang/String;

.field public productId:Ljava/lang/String;

.field public purchaseState:Lcom/nextive/android/billing/market/BillingConstants$PurchaseState;

.field public purchaseTime:J


# direct methods
.method public constructor <init>(Lcom/nextive/android/billing/market/BillingConstants$PurchaseState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0
    .param p1, "purchaseState"    # Lcom/nextive/android/billing/market/BillingConstants$PurchaseState;
    .param p2, "notificationId"    # Ljava/lang/String;
    .param p3, "productId"    # Ljava/lang/String;
    .param p4, "orderId"    # Ljava/lang/String;
    .param p5, "purchaseTime"    # J
    .param p7, "developerPayload"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/nextive/android/billing/market/BillingSecurity$VerifiedPurchase;->purchaseState:Lcom/nextive/android/billing/market/BillingConstants$PurchaseState;

    .line 67
    iput-object p2, p0, Lcom/nextive/android/billing/market/BillingSecurity$VerifiedPurchase;->notificationId:Ljava/lang/String;

    .line 68
    iput-object p3, p0, Lcom/nextive/android/billing/market/BillingSecurity$VerifiedPurchase;->productId:Ljava/lang/String;

    .line 69
    iput-object p4, p0, Lcom/nextive/android/billing/market/BillingSecurity$VerifiedPurchase;->orderId:Ljava/lang/String;

    .line 70
    iput-wide p5, p0, Lcom/nextive/android/billing/market/BillingSecurity$VerifiedPurchase;->purchaseTime:J

    .line 71
    iput-object p7, p0, Lcom/nextive/android/billing/market/BillingSecurity$VerifiedPurchase;->developerPayload:Ljava/lang/String;

    .line 72
    return-void
.end method
