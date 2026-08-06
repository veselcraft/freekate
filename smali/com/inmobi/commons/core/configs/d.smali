.class Lcom/inmobi/commons/core/configs/d;
.super Ljava/lang/Object;
.source "ConfigNetworkClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/commons/core/configs/d$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/inmobi/commons/core/configs/e;

.field private c:I

.field private d:Lcom/inmobi/commons/core/configs/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/inmobi/commons/core/configs/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/core/configs/d;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/inmobi/commons/core/configs/d$a;Lcom/inmobi/commons/core/configs/e;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/inmobi/commons/core/configs/d;->d:Lcom/inmobi/commons/core/configs/d$a;

    .line 24
    iput-object p2, p0, Lcom/inmobi/commons/core/configs/d;->b:Lcom/inmobi/commons/core/configs/e;

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/inmobi/commons/core/configs/d;->c:I

    .line 26
    return-void
.end method

.method private a()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 29
    .line 31
    :goto_0
    iget v0, p0, Lcom/inmobi/commons/core/configs/d;->c:I

    iget-object v1, p0, Lcom/inmobi/commons/core/configs/d;->b:Lcom/inmobi/commons/core/configs/e;

    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/e;->c()I

    move-result v1

    if-gt v0, v1, :cond_4

    .line 32
    new-instance v0, Lcom/inmobi/commons/core/network/d;

    iget-object v1, p0, Lcom/inmobi/commons/core/configs/d;->b:Lcom/inmobi/commons/core/configs/e;

    invoke-direct {v0, v1}, Lcom/inmobi/commons/core/network/d;-><init>(Lcom/inmobi/commons/core/network/NetworkRequest;)V

    .line 33
    invoke-virtual {v0}, Lcom/inmobi/commons/core/network/d;->a()Lcom/inmobi/commons/core/network/c;

    move-result-object v0

    .line 34
    new-instance v1, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse;

    iget-object v2, p0, Lcom/inmobi/commons/core/configs/d;->b:Lcom/inmobi/commons/core/configs/e;

    .line 35
    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/e;->b()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse;-><init>(Ljava/util/Map;Lcom/inmobi/commons/core/network/c;)V

    .line 36
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse;->a()Ljava/util/Map;

    move-result-object v2

    .line 38
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 39
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse$ConfigResponse;

    .line 40
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 42
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse$ConfigResponse;->d()Z

    move-result v4

    if-nez v4, :cond_0

    .line 43
    iget-object v4, p0, Lcom/inmobi/commons/core/configs/d;->d:Lcom/inmobi/commons/core/configs/d$a;

    invoke-interface {v4, v1}, Lcom/inmobi/commons/core/configs/d$a;->a(Lcom/inmobi/commons/core/configs/ConfigNetworkResponse$ConfigResponse;)V

    .line 44
    iget-object v1, p0, Lcom/inmobi/commons/core/configs/d;->b:Lcom/inmobi/commons/core/configs/e;

    invoke-virtual {v1, v0}, Lcom/inmobi/commons/core/configs/e;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/d;->b:Lcom/inmobi/commons/core/configs/e;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/e;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 51
    iget v0, p0, Lcom/inmobi/commons/core/configs/d;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/inmobi/commons/core/configs/d;->c:I

    .line 54
    iget v0, p0, Lcom/inmobi/commons/core/configs/d;->c:I

    iget-object v1, p0, Lcom/inmobi/commons/core/configs/d;->b:Lcom/inmobi/commons/core/configs/e;

    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/e;->c()I

    move-result v1

    if-le v0, v1, :cond_3

    .line 55
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/d;->b:Lcom/inmobi/commons/core/configs/e;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/e;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 56
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 57
    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 58
    iget-object v3, p0, Lcom/inmobi/commons/core/configs/d;->d:Lcom/inmobi/commons/core/configs/d$a;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse$ConfigResponse;

    invoke-interface {v3, v0}, Lcom/inmobi/commons/core/configs/d$a;->a(Lcom/inmobi/commons/core/configs/ConfigNetworkResponse$ConfigResponse;)V

    goto :goto_2

    .line 63
    :cond_3
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/d;->b:Lcom/inmobi/commons/core/configs/e;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/e;->d()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_0

    .line 69
    :cond_4
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/d;->d:Lcom/inmobi/commons/core/configs/d$a;

    invoke-interface {v0}, Lcom/inmobi/commons/core/configs/d$a;->b()V

    .line 70
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 75
    :try_start_0
    invoke-direct {p0}, Lcom/inmobi/commons/core/configs/d;->a()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/commons/core/configs/d;->a:Ljava/lang/String;

    const-string v2, "Fetching config interrupted by the component de-initialization."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
