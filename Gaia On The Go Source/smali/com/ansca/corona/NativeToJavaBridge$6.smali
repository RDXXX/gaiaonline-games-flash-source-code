.class final Lcom/ansca/corona/NativeToJavaBridge$6;
.super Ljava/lang/Object;
.source "NativeToJavaBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/NativeToJavaBridge;->callRequestLocationAsync(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

.field final synthetic val$functionListenerFinal:I

.field final synthetic val$locationFinal:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/ansca/corona/CoronaRuntimeTaskDispatcher;)V
    .locals 0

    .prologue
    .line 2385
    iput-object p1, p0, Lcom/ansca/corona/NativeToJavaBridge$6;->val$locationFinal:Ljava/lang/String;

    iput p2, p0, Lcom/ansca/corona/NativeToJavaBridge$6;->val$functionListenerFinal:I

    iput-object p3, p0, Lcom/ansca/corona/NativeToJavaBridge$6;->val$dispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2388
    iget-object v2, p0, Lcom/ansca/corona/NativeToJavaBridge$6;->val$locationFinal:Ljava/lang/String;

    invoke-static {v2}, Lcom/ansca/corona/NativeToJavaBridge;->access$000(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 2391
    .local v0, "location":Landroid/location/Location;
    new-instance v1, Lcom/ansca/corona/NativeToJavaBridge$6$1;

    invoke-direct {v1, p0, v0}, Lcom/ansca/corona/NativeToJavaBridge$6$1;-><init>(Lcom/ansca/corona/NativeToJavaBridge$6;Landroid/location/Location;)V

    .line 2429
    .local v1, "task":Lcom/ansca/corona/CoronaRuntimeTask;
    iget-object v2, p0, Lcom/ansca/corona/NativeToJavaBridge$6;->val$dispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    invoke-virtual {v2, v1}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    .line 2430
    return-void
.end method
