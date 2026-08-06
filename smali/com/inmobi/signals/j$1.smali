.class Lcom/inmobi/signals/j$1;
.super Ljava/lang/Object;
.source "IceNetworkClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/signals/j;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/signals/j;


# direct methods
.method constructor <init>(Lcom/inmobi/signals/j;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/inmobi/signals/j$1;->a:Lcom/inmobi/signals/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 27
    const/4 v0, 0x0

    .line 28
    :goto_0
    iget-object v1, p0, Lcom/inmobi/signals/j$1;->a:Lcom/inmobi/signals/j;

    invoke-static {v1}, Lcom/inmobi/signals/j;->a(Lcom/inmobi/signals/j;)Lcom/inmobi/signals/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/signals/k;->b()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 29
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/signals/j;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Attempting to send samples to server."

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    new-instance v1, Lcom/inmobi/commons/core/network/d;

    iget-object v2, p0, Lcom/inmobi/signals/j$1;->a:Lcom/inmobi/signals/j;

    invoke-static {v2}, Lcom/inmobi/signals/j;->a(Lcom/inmobi/signals/j;)Lcom/inmobi/signals/k;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/inmobi/commons/core/network/d;-><init>(Lcom/inmobi/commons/core/network/NetworkRequest;)V

    .line 32
    invoke-virtual {v1}, Lcom/inmobi/commons/core/network/d;->a()Lcom/inmobi/commons/core/network/c;

    move-result-object v1

    .line 34
    invoke-virtual {v1}, Lcom/inmobi/commons/core/network/c;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 35
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/signals/j;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Sending samples to server failed."

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    add-int/lit8 v0, v0, 0x1

    .line 38
    iget-object v1, p0, Lcom/inmobi/signals/j$1;->a:Lcom/inmobi/signals/j;

    invoke-static {v1}, Lcom/inmobi/signals/j;->a(Lcom/inmobi/signals/j;)Lcom/inmobi/signals/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/signals/k;->b()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 39
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->a()Lcom/inmobi/commons/core/c/a;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/core/c/e;

    const-string v2, "signals"

    const-string v3, "RetryCountExceeded"

    invoke-direct {v1, v2, v3}, Lcom/inmobi/commons/core/c/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/core/c/a;->a(Lcom/inmobi/commons/core/c/e;)V

    .line 52
    :cond_0
    :goto_1
    return-void

    .line 43
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/signals/j$1;->a:Lcom/inmobi/signals/j;

    invoke-static {v1}, Lcom/inmobi/signals/j;->a(Lcom/inmobi/signals/j;)Lcom/inmobi/signals/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/signals/k;->c()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 44
    :catch_0
    move-exception v1

    .line 45
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/signals/j;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "User data network client interrupted while sleeping."

    invoke-static {v2, v3, v4, v1}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 48
    :cond_2
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/signals/j;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Sending samples to server succeeded."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
