.class Lcom/inmobi/rendering/mraid/j$1;
.super Ljava/lang/Object;
.source "MraidJsFetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/rendering/mraid/j;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/rendering/mraid/j;


# direct methods
.method constructor <init>(Lcom/inmobi/rendering/mraid/j;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/inmobi/rendering/mraid/j$1;->a:Lcom/inmobi/rendering/mraid/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 38
    const/4 v0, 0x0

    .line 39
    :goto_0
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/j$1;->a:Lcom/inmobi/rendering/mraid/j;

    invoke-static {v1}, Lcom/inmobi/rendering/mraid/j;->a(Lcom/inmobi/rendering/mraid/j;)I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 40
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/rendering/mraid/j;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Attempting to get MRAID Js."

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    new-instance v1, Lcom/inmobi/commons/core/network/d;

    iget-object v2, p0, Lcom/inmobi/rendering/mraid/j$1;->a:Lcom/inmobi/rendering/mraid/j;

    invoke-static {v2}, Lcom/inmobi/rendering/mraid/j;->b(Lcom/inmobi/rendering/mraid/j;)Lcom/inmobi/commons/core/network/NetworkRequest;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/inmobi/commons/core/network/d;-><init>(Lcom/inmobi/commons/core/network/NetworkRequest;)V

    .line 43
    invoke-virtual {v1}, Lcom/inmobi/commons/core/network/d;->a()Lcom/inmobi/commons/core/network/c;

    move-result-object v1

    .line 45
    invoke-virtual {v1}, Lcom/inmobi/commons/core/network/c;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 46
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/rendering/mraid/j;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Getting MRAID Js from server failed."

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    add-int/lit8 v0, v0, 0x1

    .line 49
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/j$1;->a:Lcom/inmobi/rendering/mraid/j;

    invoke-static {v1}, Lcom/inmobi/rendering/mraid/j;->a(Lcom/inmobi/rendering/mraid/j;)I

    move-result v1

    if-le v0, v1, :cond_1

    .line 65
    :cond_0
    :goto_1
    return-void

    .line 53
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/j$1;->a:Lcom/inmobi/rendering/mraid/j;

    invoke-static {v1}, Lcom/inmobi/rendering/mraid/j;->c(Lcom/inmobi/rendering/mraid/j;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 54
    :catch_0
    move-exception v1

    .line 55
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/rendering/mraid/j;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MRAID Js client interrupted while sleeping."

    invoke-static {v2, v3, v4, v1}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 58
    :cond_2
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/rendering/mraid/j;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Getting MRAID Js from server succeeded. Response:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/inmobi/commons/core/network/c;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    new-instance v0, Lcom/inmobi/rendering/mraid/i;

    invoke-direct {v0}, Lcom/inmobi/rendering/mraid/i;-><init>()V

    .line 61
    invoke-virtual {v1}, Lcom/inmobi/commons/core/network/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/mraid/i;->a(Ljava/lang/String;)V

    goto :goto_1
.end method
