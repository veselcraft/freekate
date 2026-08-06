.class public Lcom/inmobi/signals/e;
.super Ljava/lang/Object;
.source "CarbNetworkClient.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/inmobi/signals/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/signals/e;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/inmobi/signals/b;)Lcom/inmobi/signals/c;
    .locals 4

    .prologue
    .line 17
    .line 18
    new-instance v0, Lcom/inmobi/commons/core/network/d;

    invoke-direct {v0, p1}, Lcom/inmobi/commons/core/network/d;-><init>(Lcom/inmobi/commons/core/network/NetworkRequest;)V

    .line 20
    invoke-virtual {v0}, Lcom/inmobi/commons/core/network/d;->a()Lcom/inmobi/commons/core/network/c;

    move-result-object v0

    .line 21
    new-instance v1, Lcom/inmobi/signals/c;

    invoke-direct {v1, v0}, Lcom/inmobi/signals/c;-><init>(Lcom/inmobi/commons/core/network/c;)V

    .line 23
    invoke-virtual {v1}, Lcom/inmobi/signals/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/signals/e;->a:Ljava/lang/String;

    const-string v3, "Getting Carb list from server failed."

    invoke-static {v0, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :goto_0
    return-object v1

    .line 26
    :cond_0
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/signals/e;->a:Ljava/lang/String;

    const-string v3, "Getting Carb list from server succeeded."

    invoke-static {v0, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/inmobi/signals/f;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 32
    move v0, v1

    .line 35
    :goto_0
    invoke-virtual {p1}, Lcom/inmobi/signals/f;->b()I

    move-result v2

    if-gt v0, v2, :cond_0

    .line 36
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/signals/e;->a:Ljava/lang/String;

    const-string v4, "Attempting to send pruned Carb list to server."

    invoke-static {v2, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    new-instance v2, Lcom/inmobi/commons/core/network/d;

    invoke-direct {v2, p1}, Lcom/inmobi/commons/core/network/d;-><init>(Lcom/inmobi/commons/core/network/NetworkRequest;)V

    .line 39
    invoke-virtual {v2}, Lcom/inmobi/commons/core/network/d;->a()Lcom/inmobi/commons/core/network/c;

    move-result-object v2

    .line 41
    invoke-virtual {v2}, Lcom/inmobi/commons/core/network/c;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 42
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/signals/e;->a:Ljava/lang/String;

    const-string v4, "Sending pruned Carb list to server failed."

    invoke-static {v2, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    add-int/lit8 v0, v0, 0x1

    .line 45
    invoke-virtual {p1}, Lcom/inmobi/signals/f;->b()I

    move-result v2

    if-le v0, v2, :cond_2

    .line 59
    :cond_0
    :goto_1
    if-nez v1, :cond_1

    .line 60
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->a()Lcom/inmobi/commons/core/c/a;

    move-result-object v0

    new-instance v2, Lcom/inmobi/commons/core/c/e;

    const-string v3, "signals"

    const-string v4, "CarbUploadDiscarded"

    invoke-direct {v2, v3, v4}, Lcom/inmobi/commons/core/c/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/inmobi/commons/core/c/a;->a(Lcom/inmobi/commons/core/c/e;)V

    .line 62
    :cond_1
    return v1

    .line 49
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Lcom/inmobi/signals/f;->c()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 50
    :catch_0
    move-exception v2

    .line 51
    sget-object v3, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v4, Lcom/inmobi/signals/e;->a:Ljava/lang/String;

    const-string v5, "User data network client interrupted while sleeping."

    invoke-static {v3, v4, v5, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 54
    :cond_3
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/signals/e;->a:Ljava/lang/String;

    const-string v2, "Sending pruned Carb list to server succeeded."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const/4 v1, 0x1

    .line 56
    goto :goto_1
.end method
