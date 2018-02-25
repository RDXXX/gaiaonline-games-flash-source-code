.class Lcom/ansca/corona/purchasing/Store$1;
.super Ljava/lang/Object;
.source "Store.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/purchasing/Store;->raiseTransactionEventFor(Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/purchasing/Store;

.field final synthetic val$result:Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;


# direct methods
.method constructor <init>(Lcom/ansca/corona/purchasing/Store;Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/ansca/corona/purchasing/Store$1;->this$0:Lcom/ansca/corona/purchasing/Store;

    iput-object p2, p0, Lcom/ansca/corona/purchasing/Store$1;->val$result:Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 141
    invoke-static {}, Lcom/ansca/corona/Controller;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/ansca/corona/purchasing/Store$1;->val$result:Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;

    invoke-static {v0}, Lcom/ansca/corona/JavaToNativeShim;->storeTransactionEvent(Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;)V

    .line 144
    :cond_0
    return-void
.end method
