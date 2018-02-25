.class Lcom/ansca/corona/CoronaService$Binder;
.super Landroid/os/Binder;
.source "CoronaService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/CoronaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Binder"
.end annotation


# instance fields
.field private fService:Lcom/ansca/corona/CoronaService;


# direct methods
.method public constructor <init>(Lcom/ansca/corona/CoronaService;)V
    .locals 0
    .param p1, "service"    # Lcom/ansca/corona/CoronaService;

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/ansca/corona/CoronaService$Binder;->fService:Lcom/ansca/corona/CoronaService;

    .line 57
    return-void
.end method


# virtual methods
.method getService()Lcom/ansca/corona/CoronaService;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/ansca/corona/CoronaService$Binder;->fService:Lcom/ansca/corona/CoronaService;

    return-object v0
.end method
