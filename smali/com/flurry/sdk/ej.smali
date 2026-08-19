.class public final Lcom/flurry/sdk/ej;
.super Lcom/flurry/sdk/ed;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/ed<",
        "Lcom/flurry/sdk/ek;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lcom/flurry/sdk/ej;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 9

    .line 30
    const-class v0, Lcom/flurry/sdk/ej;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v0, Lcom/flurry/sdk/eb;

    invoke-direct {v0}, Lcom/flurry/sdk/eb;-><init>()V

    const/16 v1, 0xb

    invoke-direct {v8, v1, v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(ILjava/util/Comparator;)V

    const/4 v3, 0x0

    const/4 v4, 0x5

    const-wide/16 v5, 0x1388

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/flurry/sdk/ed;-><init>(Ljava/lang/String;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/ej;
    .locals 2

    const-class v0, Lcom/flurry/sdk/ej;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lcom/flurry/sdk/ej;->a:Lcom/flurry/sdk/ej;

    if-nez v1, :cond_0

    .line 23
    new-instance v1, Lcom/flurry/sdk/ej;

    invoke-direct {v1}, Lcom/flurry/sdk/ej;-><init>()V

    sput-object v1, Lcom/flurry/sdk/ej;->a:Lcom/flurry/sdk/ej;

    .line 26
    :cond_0
    sget-object v1, Lcom/flurry/sdk/ej;->a:Lcom/flurry/sdk/ej;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
