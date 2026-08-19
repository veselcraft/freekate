.class public abstract Lcom/flurry/sdk/db;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/er;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/db$a;
    }
.end annotation


# instance fields
.field protected final d:Ljava/lang/String;

.field e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field f:Lcom/flurry/sdk/dd;

.field protected g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/db;->e:Ljava/util/Set;

    const-string v0, "defaultDataKey_"

    .line 30
    iput-object v0, p0, Lcom/flurry/sdk/db;->g:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/flurry/sdk/db;->d:Ljava/lang/String;

    .line 39
    invoke-static {}, Lcom/flurry/sdk/es;->a()Lcom/flurry/sdk/es;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/flurry/sdk/es;->a(Lcom/flurry/sdk/er;)V

    .line 40
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/db;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/flurry/sdk/db;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected a(Lcom/flurry/sdk/db$a;)V
    .locals 1

    .line 114
    new-instance v0, Lcom/flurry/sdk/db$3;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/db$3;-><init>(Lcom/flurry/sdk/db;Lcom/flurry/sdk/db$a;)V

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/db;->a(Lcom/flurry/sdk/fc;)V

    return-void
.end method

.method protected a(Lcom/flurry/sdk/fc;)V
    .locals 1

    .line 44
    invoke-static {}, Lcom/flurry/sdk/dl;->a()Lcom/flurry/sdk/dl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/dl;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1

    .line 48
    new-instance v0, Lcom/flurry/sdk/db$1;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/db$1;-><init>(Lcom/flurry/sdk/db;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/db;->a(Lcom/flurry/sdk/fc;)V

    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 245
    new-instance p3, Lcom/flurry/sdk/db$4;

    invoke-direct {p3, p0, p1, p2}, Lcom/flurry/sdk/db$4;-><init>(Lcom/flurry/sdk/db;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/flurry/sdk/db;->a(Lcom/flurry/sdk/fc;)V

    return-void
.end method

.method public a(Z)V
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/flurry/sdk/db;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNetworkStateChanged : isNetworkEnable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/flurry/sdk/db;->d()V

    :cond_0
    return-void
.end method

.method protected abstract a([BLjava/lang/String;Ljava/lang/String;)V
.end method

.method protected a([BLjava/lang/String;Ljava/lang/String;Lcom/flurry/sdk/db$a;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 81
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/db;->c([BLjava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0, p4}, Lcom/flurry/sdk/db;->a(Lcom/flurry/sdk/db$a;)V

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x6

    .line 83
    iget-object p2, p0, Lcom/flurry/sdk/db;->d:Ljava/lang/String;

    const-string p3, "Report that has to be sent is EMPTY or NULL"

    invoke-static {p1, p2, p3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 267
    new-instance p2, Lcom/flurry/sdk/db$5;

    invoke-direct {p2, p0, p1}, Lcom/flurry/sdk/db$5;-><init>(Lcom/flurry/sdk/db;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/flurry/sdk/db;->a(Lcom/flurry/sdk/fc;)V

    return-void
.end method

.method public b([BLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 75
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/flurry/sdk/db;->a([BLjava/lang/String;Ljava/lang/String;Lcom/flurry/sdk/db$a;)V

    return-void
.end method

.method protected c()I
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/flurry/sdk/db;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method protected c([BLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 101
    new-instance v0, Lcom/flurry/sdk/db$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/flurry/sdk/db$2;-><init>(Lcom/flurry/sdk/db;[BLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/db;->a(Lcom/flurry/sdk/fc;)V

    return-void
.end method

.method protected d([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 177
    invoke-virtual {p0, p2, p3}, Lcom/flurry/sdk/db;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 179
    new-instance p3, Lcom/flurry/sdk/dc;

    invoke-direct {p3}, Lcom/flurry/sdk/dc;-><init>()V

    .line 180
    invoke-virtual {p3, p1}, Lcom/flurry/sdk/dc;->a([B)Z

    .line 182
    invoke-virtual {p3}, Lcom/flurry/sdk/dc;->a()Ljava/lang/String;

    move-result-object p1

    .line 184
    iget-object v0, p0, Lcom/flurry/sdk/db;->f:Lcom/flurry/sdk/dd;

    invoke-virtual {v0, p3, p2}, Lcom/flurry/sdk/dd;->a(Lcom/flurry/sdk/dc;Ljava/lang/String;)V

    return-object p1
.end method

.method protected d()V
    .locals 1

    const/4 v0, 0x0

    .line 110
    invoke-virtual {p0, v0}, Lcom/flurry/sdk/db;->a(Lcom/flurry/sdk/db$a;)V

    return-void
.end method

.method protected e()Z
    .locals 2

    .line 129
    invoke-virtual {p0}, Lcom/flurry/sdk/db;->c()I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected f()V
    .locals 9

    .line 193
    invoke-static {}, Lcom/flurry/sdk/es;->a()Lcom/flurry/sdk/es;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/es;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    .line 194
    iget-object v1, p0, Lcom/flurry/sdk/db;->d:Ljava/lang/String;

    const-string v2, "Reports were not sent! No Internet connection!"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/db;->f:Lcom/flurry/sdk/dd;

    invoke-virtual {v0}, Lcom/flurry/sdk/dd;->a()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x4

    if-eqz v0, :cond_9

    .line 200
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_5

    .line 205
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 206
    invoke-virtual {p0}, Lcom/flurry/sdk/db;->e()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_4

    .line 210
    :cond_3
    iget-object v3, p0, Lcom/flurry/sdk/db;->f:Lcom/flurry/sdk/dd;

    invoke-virtual {v3, v2}, Lcom/flurry/sdk/dd;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 212
    iget-object v4, p0, Lcom/flurry/sdk/db;->d:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Number of not sent blocks = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 214
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 216
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 218
    iget-object v6, p0, Lcom/flurry/sdk/db;->e:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_3

    .line 223
    :cond_4
    invoke-virtual {p0}, Lcom/flurry/sdk/db;->e()Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_0

    .line 227
    :cond_5
    new-instance v6, Lcom/flurry/sdk/dc;

    invoke-direct {v6, v5}, Lcom/flurry/sdk/dc;-><init>(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v6}, Lcom/flurry/sdk/dc;->b()[B

    move-result-object v6

    if-eqz v6, :cond_7

    .line 230
    array-length v7, v6

    if-nez v7, :cond_6

    goto :goto_2

    .line 236
    :cond_6
    iget-object v7, p0, Lcom/flurry/sdk/db;->e:Ljava/util/Set;

    invoke-interface {v7, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 238
    invoke-virtual {p0, v6, v5, v2}, Lcom/flurry/sdk/db;->a([BLjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v6, 0x6

    .line 231
    iget-object v7, p0, Lcom/flurry/sdk/db;->d:Ljava/lang/String;

    const-string v8, "Internal ERROR! Report is empty!"

    invoke-static {v6, v7, v8}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v6, p0, Lcom/flurry/sdk/db;->f:Lcom/flurry/sdk/dd;

    invoke-virtual {v6, v5, v2}, Lcom/flurry/sdk/dd;->a(Ljava/lang/String;Ljava/lang/String;)Z

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_8
    :goto_4
    return-void

    .line 201
    :cond_9
    :goto_5
    iget-object v0, p0, Lcom/flurry/sdk/db;->d:Ljava/lang/String;

    const-string v2, "No more reports to send."

    invoke-static {v1, v0, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
