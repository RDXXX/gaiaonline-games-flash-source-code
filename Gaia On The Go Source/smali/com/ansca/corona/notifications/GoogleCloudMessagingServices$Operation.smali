.class abstract Lcom/ansca/corona/notifications/GoogleCloudMessagingServices$Operation;
.super Ljava/lang/Object;
.source "GoogleCloudMessagingServices.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/notifications/GoogleCloudMessagingServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Operation"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 534
    return-void
.end method


# virtual methods
.method public abstract run()V
.end method
