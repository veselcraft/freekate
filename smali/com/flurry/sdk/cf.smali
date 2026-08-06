.class public abstract Lcom/flurry/sdk/cf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/fd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/cf$a;
    }
.end annotation


# static fields
.field protected static d:Ljava/lang/String;


# instance fields
.field e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected f:Ljava/util/concurrent/ExecutorService;

.field protected g:Ljava/util/concurrent/ExecutorService;

.field h:Lcom/flurry/sdk/ci;

.field protected i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/cf;->e:Ljava/util/Set;

    .line 34
    const-string v0, "defaultDataKey_"

    iput-object v0, p0, Lcom/flurry/sdk/cf;->i:Ljava/lang/String;

    .line 41
    sput-object p2, Lcom/flurry/sdk/cf;->d:Ljava/lang/String;

    .line 43
    invoke-static {}, Lcom/flurry/sdk/fe;->a()Lcom/flurry/sdk/fe;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/fe;->a(Lcom/flurry/sdk/fd;)V

    .line 44
    new-instance v0, Lcom/flurry/sdk/ff;

    const-string v1, "FlurryAgent"

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/ff;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/cf;->f:Ljava/util/concurrent/ExecutorService;

    .line 46
    new-instance v0, Lcom/flurry/sdk/ff;

    const-string v1, "FlurryAgent"

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/ff;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/cf;->g:Ljava/util/concurrent/ExecutorService;

    .line 49
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/cf;->a(Ljava/lang/String;)V

    .line 50
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/flurry/sdk/cf;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 208
    return-object v0
.end method

.method protected a(Lcom/flurry/sdk/cf$a;)V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/flurry/sdk/cf;->f:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/flurry/sdk/cf$3;

    invoke-direct {v1, p0, p1}, Lcom/flurry/sdk/cf$3;-><init>(Lcom/flurry/sdk/cf;Lcom/flurry/sdk/cf$a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 150
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/flurry/sdk/cf;->f:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/flurry/sdk/cf$1;

    invoke-direct {v1, p0, p1}, Lcom/flurry/sdk/cf$1;-><init>(Lcom/flurry/sdk/cf;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 66
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/flurry/sdk/cf;->f:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/flurry/sdk/cf$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/flurry/sdk/cf$4;-><init>(Lcom/flurry/sdk/cf;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 303
    return-void
.end method

.method protected abstract a([BLjava/lang/String;Ljava/lang/String;)V
.end method

.method protected a([BLjava/lang/String;Ljava/lang/String;Lcom/flurry/sdk/cf$a;)V
    .locals 3

    .prologue
    .line 93
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 95
    :cond_0
    const/4 v0, 0x6

    sget-object v1, Lcom/flurry/sdk/cf;->d:Ljava/lang/String;

    const-string v2, "Report that has to be sent is EMPTY or NULL"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ex;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 102
    :goto_0
    return-void

    .line 99
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/cf;->c([BLjava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0, p4}, Lcom/flurry/sdk/cf;->a(Lcom/flurry/sdk/cf$a;)V

    goto :goto_0
.end method

.method protected b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/flurry/sdk/cf;->f:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/flurry/sdk/cf$5;

    invoke-direct {v1, p0, p1}, Lcom/flurry/sdk/cf$5;-><init>(Lcom/flurry/sdk/cf;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 320
    return-void
.end method

.method public b(Z)V
    .locals 4

    .prologue
    .line 74
    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/sdk/cf;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNetworkStateChanged : isNetworkEnable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ex;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 75
    if-eqz p1, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/flurry/sdk/cf;->d()V

    .line 78
    :cond_0
    return-void
.end method

.method public b([BLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/flurry/sdk/cf;->a([BLjava/lang/String;Ljava/lang/String;Lcom/flurry/sdk/cf$a;)V

    .line 88
    return-void
.end method

.method protected c()I
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/flurry/sdk/cf;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method protected c([BLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/flurry/sdk/cf;->f:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/flurry/sdk/cf$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/flurry/sdk/cf$2;-><init>(Lcom/flurry/sdk/cf;[BLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 126
    return-void
.end method

.method protected d([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 213
    invoke-virtual {p0, p2, p3}, Lcom/flurry/sdk/cf;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 215
    new-instance v1, Lcom/flurry/sdk/cg;

    invoke-direct {v1}, Lcom/flurry/sdk/cg;-><init>()V

    .line 216
    invoke-virtual {v1, p1}, Lcom/flurry/sdk/cg;->a([B)Z

    .line 218
    invoke-virtual {v1}, Lcom/flurry/sdk/cg;->a()Ljava/lang/String;

    move-result-object v2

    .line 220
    iget-object v3, p0, Lcom/flurry/sdk/cf;->h:Lcom/flurry/sdk/ci;

    invoke-virtual {v3, v1, v0}, Lcom/flurry/sdk/ci;->a(Lcom/flurry/sdk/cg;Ljava/lang/String;)V

    .line 222
    return-object v2
.end method

.method protected d()V
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/cf;->a(Lcom/flurry/sdk/cf$a;)V

    .line 130
    return-void
.end method

.method protected e()Z
    .locals 2

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/flurry/sdk/cf;->c()I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 161
    :goto_0
    return v0

    .line 160
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected f()V
    .locals 5

    .prologue
    .line 165
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 166
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DataSender Main Single Thread , id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method protected g()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    .line 229
    invoke-static {}, Lcom/flurry/sdk/fe;->a()Lcom/flurry/sdk/fe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/fe;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 230
    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/sdk/cf;->d:Ljava/lang/String;

    const-string v2, "Reports were not sent! No Internet connection!"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ex;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/cf;->h:Lcom/flurry/sdk/ci;

    invoke-virtual {v0}, Lcom/flurry/sdk/ci;->a()Ljava/util/List;

    move-result-object v0

    .line 236
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 237
    :cond_2
    sget-object v0, Lcom/flurry/sdk/cf;->d:Ljava/lang/String;

    const-string v1, "No more reports to send."

    invoke-static {v8, v0, v1}, Lcom/flurry/sdk/ex;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 241
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 242
    invoke-virtual {p0}, Lcom/flurry/sdk/cf;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    iget-object v1, p0, Lcom/flurry/sdk/cf;->h:Lcom/flurry/sdk/ci;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/ci;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 248
    sget-object v1, Lcom/flurry/sdk/cf;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Number of not sent blocks = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v1, v2}, Lcom/flurry/sdk/ex;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 250
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_4

    .line 252
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 254
    iget-object v5, p0, Lcom/flurry/sdk/cf;->e:Ljava/util/Set;

    invoke-interface {v5, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 250
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 259
    :cond_5
    invoke-virtual {p0}, Lcom/flurry/sdk/cf;->e()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 263
    new-instance v5, Lcom/flurry/sdk/cg;

    invoke-direct {v5, v1}, Lcom/flurry/sdk/cg;-><init>(Ljava/lang/String;)V

    .line 264
    invoke-virtual {v5}, Lcom/flurry/sdk/cg;->b()[B

    move-result-object v5

    .line 266
    if-eqz v5, :cond_6

    array-length v6, v5

    if-nez v6, :cond_7

    .line 267
    :cond_6
    const/4 v5, 0x6

    sget-object v6, Lcom/flurry/sdk/cf;->d:Ljava/lang/String;

    const-string v7, "Internal ERROR! Report is empty!"

    invoke-static {v5, v6, v7}, Lcom/flurry/sdk/ex;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v5, p0, Lcom/flurry/sdk/cf;->h:Lcom/flurry/sdk/ci;

    invoke-virtual {v5, v1, v0}, Lcom/flurry/sdk/ci;->a(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    .line 272
    :cond_7
    iget-object v6, p0, Lcom/flurry/sdk/cf;->e:Ljava/util/Set;

    invoke-interface {v6, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 274
    invoke-virtual {p0, v5, v1, v0}, Lcom/flurry/sdk/cf;->a([BLjava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
