.class public Lcom/ansca/corona/events/MapAddressRequestFailedEvent;
.super Lcom/ansca/corona/events/Event;
.source "MapAddressRequestFailedEvent.java"


# instance fields
.field private fErrorMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/ansca/corona/events/Event;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/ansca/corona/events/MapAddressRequestFailedEvent;->fErrorMessage:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public Send()V
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/ansca/corona/events/MapAddressRequestFailedEvent;->fErrorMessage:Ljava/lang/String;

    invoke-static {v0}, Lcom/ansca/corona/JavaToNativeShim;->mapAddressRequestFailedEvent(Ljava/lang/String;)V

    .line 15
    return-void
.end method
