.class Lcom/ansca/corona/ViewManager$StringObjectHashMap;
.super Ljava/util/HashMap;
.source "ViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/ViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StringObjectHashMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/ViewManager;


# direct methods
.method private constructor <init>(Lcom/ansca/corona/ViewManager;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/ansca/corona/ViewManager$StringObjectHashMap;->this$0:Lcom/ansca/corona/ViewManager;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ansca/corona/ViewManager;Lcom/ansca/corona/ViewManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ansca/corona/ViewManager;
    .param p2, "x1"    # Lcom/ansca/corona/ViewManager$1;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/ansca/corona/ViewManager$StringObjectHashMap;-><init>(Lcom/ansca/corona/ViewManager;)V

    return-void
.end method
