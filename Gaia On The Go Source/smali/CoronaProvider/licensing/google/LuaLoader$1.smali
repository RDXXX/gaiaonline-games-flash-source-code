.class LCoronaProvider/licensing/google/LuaLoader$1;
.super Ljava/lang/Object;
.source "LuaLoader.java"

# interfaces
.implements Lcom/ansca/corona/CoronaRuntimeTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LCoronaProvider/licensing/google/LuaLoader;->callLuaCallback(ZLjava/lang/String;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LCoronaProvider/licensing/google/LuaLoader;

.field final synthetic val$errorType:Ljava/lang/String;

.field final synthetic val$isError:Z

.field final synthetic val$isVerified:Z

.field final synthetic val$response:Ljava/lang/String;


# direct methods
.method constructor <init>(LCoronaProvider/licensing/google/LuaLoader;ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, LCoronaProvider/licensing/google/LuaLoader$1;->this$0:LCoronaProvider/licensing/google/LuaLoader;

    iput-boolean p2, p0, LCoronaProvider/licensing/google/LuaLoader$1;->val$isVerified:Z

    iput-boolean p3, p0, LCoronaProvider/licensing/google/LuaLoader$1;->val$isError:Z

    iput-object p4, p0, LCoronaProvider/licensing/google/LuaLoader$1;->val$errorType:Ljava/lang/String;

    iput-object p5, p0, LCoronaProvider/licensing/google/LuaLoader$1;->val$response:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeUsing(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 5
    .param p1, "runtime"    # Lcom/ansca/corona/CoronaRuntime;

    .prologue
    .line 205
    :try_start_0
    invoke-virtual {p1}, Lcom/ansca/corona/CoronaRuntime;->getLuaState()Lcom/naef/jnlua/LuaState;

    move-result-object v0

    .line 207
    .local v0, "L":Lcom/naef/jnlua/LuaState;
    const-string v3, "licensing"

    invoke-static {v0, v3}, Lcom/ansca/corona/CoronaLua;->newEvent(Lcom/naef/jnlua/LuaState;Ljava/lang/String;)V

    .line 209
    iget-boolean v3, p0, LCoronaProvider/licensing/google/LuaLoader$1;->val$isVerified:Z

    invoke-virtual {v0, v3}, Lcom/naef/jnlua/LuaState;->pushBoolean(Z)V

    .line 210
    const/4 v3, -0x2

    const-string v4, "isVerified"

    invoke-virtual {v0, v3, v4}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 212
    iget-boolean v3, p0, LCoronaProvider/licensing/google/LuaLoader$1;->val$isError:Z

    if-eqz v3, :cond_0

    .line 213
    iget-boolean v3, p0, LCoronaProvider/licensing/google/LuaLoader$1;->val$isError:Z

    invoke-virtual {v0, v3}, Lcom/naef/jnlua/LuaState;->pushBoolean(Z)V

    .line 217
    :goto_0
    const/4 v3, -0x2

    const-string v4, "isError"

    invoke-virtual {v0, v3, v4}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 219
    iget-boolean v3, p0, LCoronaProvider/licensing/google/LuaLoader$1;->val$isError:Z

    if-eqz v3, :cond_1

    .line 220
    iget-object v3, p0, LCoronaProvider/licensing/google/LuaLoader$1;->val$errorType:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    .line 224
    :goto_1
    const/4 v3, -0x2

    const-string v4, "errorType"

    invoke-virtual {v0, v3, v4}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 226
    iget-object v3, p0, LCoronaProvider/licensing/google/LuaLoader$1;->val$response:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    .line 227
    const/4 v3, -0x2

    const-string v4, "response"

    invoke-virtual {v0, v3, v4}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 229
    const-string v3, "google"

    invoke-virtual {v0, v3}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    .line 230
    const/4 v3, -0x2

    const-string v4, "provider"

    invoke-virtual {v0, v3, v4}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 232
    iget-object v3, p0, LCoronaProvider/licensing/google/LuaLoader$1;->this$0:LCoronaProvider/licensing/google/LuaLoader;

    invoke-static {v3}, LCoronaProvider/licensing/google/LuaLoader;->access$400(LCoronaProvider/licensing/google/LuaLoader;)Lcom/google/android/vending/licensing/Policy;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/vending/licensing/Policy;->getValidityTimestamp()J

    move-result-wide v3

    long-to-double v3, v3

    invoke-virtual {v0, v3, v4}, Lcom/naef/jnlua/LuaState;->pushNumber(D)V

    .line 233
    const/4 v3, -0x2

    const-string v4, "expiration"

    invoke-virtual {v0, v3, v4}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 236
    iget-object v3, p0, LCoronaProvider/licensing/google/LuaLoader$1;->this$0:LCoronaProvider/licensing/google/LuaLoader;

    invoke-static {v3}, LCoronaProvider/licensing/google/LuaLoader;->access$400(LCoronaProvider/licensing/google/LuaLoader;)Lcom/google/android/vending/licensing/Policy;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/vending/licensing/Policy;->getExpansionURLCount()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/naef/jnlua/LuaState;->newTable(II)V

    .line 238
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v3, p0, LCoronaProvider/licensing/google/LuaLoader$1;->this$0:LCoronaProvider/licensing/google/LuaLoader;

    invoke-static {v3}, LCoronaProvider/licensing/google/LuaLoader;->access$400(LCoronaProvider/licensing/google/LuaLoader;)Lcom/google/android/vending/licensing/Policy;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/vending/licensing/Policy;->getExpansionURLCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 239
    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4}, Lcom/naef/jnlua/LuaState;->newTable(II)V

    .line 241
    iget-object v3, p0, LCoronaProvider/licensing/google/LuaLoader$1;->this$0:LCoronaProvider/licensing/google/LuaLoader;

    invoke-static {v3}, LCoronaProvider/licensing/google/LuaLoader;->access$400(LCoronaProvider/licensing/google/LuaLoader;)Lcom/google/android/vending/licensing/Policy;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/google/android/vending/licensing/Policy;->getExpansionURL(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    .line 242
    const/4 v3, -0x2

    const-string v4, "url"

    invoke-virtual {v0, v3, v4}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 244
    iget-object v3, p0, LCoronaProvider/licensing/google/LuaLoader$1;->this$0:LCoronaProvider/licensing/google/LuaLoader;

    invoke-static {v3}, LCoronaProvider/licensing/google/LuaLoader;->access$400(LCoronaProvider/licensing/google/LuaLoader;)Lcom/google/android/vending/licensing/Policy;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/google/android/vending/licensing/Policy;->getExpansionFileName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/naef/jnlua/LuaState;->pushString(Ljava/lang/String;)V

    .line 245
    const/4 v3, -0x2

    const-string v4, "fileName"

    invoke-virtual {v0, v3, v4}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 247
    iget-object v3, p0, LCoronaProvider/licensing/google/LuaLoader$1;->this$0:LCoronaProvider/licensing/google/LuaLoader;

    invoke-static {v3}, LCoronaProvider/licensing/google/LuaLoader;->access$400(LCoronaProvider/licensing/google/LuaLoader;)Lcom/google/android/vending/licensing/Policy;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/google/android/vending/licensing/Policy;->getExpansionFileSize(I)J

    move-result-wide v3

    long-to-double v3, v3

    invoke-virtual {v0, v3, v4}, Lcom/naef/jnlua/LuaState;->pushNumber(D)V

    .line 248
    const/4 v3, -0x2

    const-string v4, "fileSize"

    invoke-virtual {v0, v3, v4}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 250
    const/4 v3, -0x2

    add-int/lit8 v4, v2, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 238
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 215
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v0}, Lcom/naef/jnlua/LuaState;->pushNil()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 258
    .end local v0    # "L":Lcom/naef/jnlua/LuaState;
    :catch_0
    move-exception v1

    .line 259
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 261
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_3
    return-void

    .line 222
    .restart local v0    # "L":Lcom/naef/jnlua/LuaState;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/naef/jnlua/LuaState;->pushNil()V

    goto/16 :goto_1

    .line 253
    .restart local v2    # "i":I
    :cond_2
    const/4 v3, -0x2

    const-string v4, "expansionFiles"

    invoke-virtual {v0, v3, v4}, Lcom/naef/jnlua/LuaState;->setField(ILjava/lang/String;)V

    .line 256
    iget-object v3, p0, LCoronaProvider/licensing/google/LuaLoader$1;->this$0:LCoronaProvider/licensing/google/LuaLoader;

    invoke-static {v3}, LCoronaProvider/licensing/google/LuaLoader;->access$500(LCoronaProvider/licensing/google/LuaLoader;)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lcom/ansca/corona/CoronaLua;->dispatchEvent(Lcom/naef/jnlua/LuaState;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method
