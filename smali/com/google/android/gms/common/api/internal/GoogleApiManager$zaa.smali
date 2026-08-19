.class public abstract Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;
.super Ljava/lang/Object;


# instance fields
.field final synthetic zaim:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

.field private final zain:Ljava/util/Queue;

.field private final zaiw:Ljava/util/List;


# direct methods
.method static synthetic zaa(Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;Lcom/google/android/gms/common/api/internal/GoogleApiManager$zab;)V
    .locals 0

    const/4 p0, 0x0

    .line 282
    throw p0
.end method

.method static synthetic zab(Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;Lcom/google/android/gms/common/api/internal/GoogleApiManager$zab;)V
    .locals 0

    .line 283
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;->zab(Lcom/google/android/gms/common/api/internal/GoogleApiManager$zab;)V

    return-void
.end method

.method private final zab(Lcom/google/android/gms/common/api/internal/GoogleApiManager$zab;)V
    .locals 5

    .line 265
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;->zaiw:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 266
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;->zaim:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaa(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 267
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;->zaim:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaa(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 268
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zab;->zad(Lcom/google/android/gms/common/api/internal/GoogleApiManager$zab;)Lcom/google/android/gms/common/Feature;

    move-result-object p1

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;->zain:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 270
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;->zain:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/internal/zab;

    .line 271
    instance-of v3, v2, Lcom/google/android/gms/common/api/internal/zac;

    if-eqz v3, :cond_0

    .line 272
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/common/api/internal/zac;

    invoke-virtual {v3, p0}, Lcom/google/android/gms/common/api/internal/zac;->zab(Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;)[Lcom/google/android/gms/common/Feature;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 273
    invoke-static {v3, p1}, Lcom/google/android/gms/common/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 274
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 276
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/google/android/gms/common/api/internal/zab;

    .line 277
    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;->zain:Ljava/util/Queue;

    invoke-interface {v4, v3}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 278
    new-instance v4, Lcom/google/android/gms/common/api/UnsupportedApiCallException;

    invoke-direct {v4, p1}, Lcom/google/android/gms/common/api/UnsupportedApiCallException;-><init>(Lcom/google/android/gms/common/Feature;)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/api/internal/zab;->zaa(Ljava/lang/RuntimeException;)V

    goto :goto_1

    :cond_2
    return-void
.end method
