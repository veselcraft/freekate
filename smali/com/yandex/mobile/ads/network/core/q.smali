.class public abstract Lcom/yandex/mobile/ads/network/core/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/network/core/q$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/yandex/mobile/ads/network/core/q",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:Lcom/yandex/mobile/ads/network/core/s$a;

.field private e:Ljava/lang/Integer;

.field private f:Lcom/yandex/mobile/ads/network/core/r;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Lcom/yandex/mobile/ads/network/core/u;

.field private l:Lcom/yandex/mobile/ads/network/core/c$a;

.field private m:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/yandex/mobile/ads/network/core/s$a;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/yandex/mobile/ads/network/core/q;->g:Z

    .line 91
    iput-boolean v0, p0, Lcom/yandex/mobile/ads/network/core/q;->h:Z

    .line 94
    iput-boolean v0, p0, Lcom/yandex/mobile/ads/network/core/q;->i:Z

    .line 97
    iput-boolean v0, p0, Lcom/yandex/mobile/ads/network/core/q;->j:Z

    .line 107
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/yandex/mobile/ads/network/core/q;->l:Lcom/yandex/mobile/ads/network/core/c$a;

    .line 132
    iput p1, p0, Lcom/yandex/mobile/ads/network/core/q;->a:I

    .line 133
    iput-object p2, p0, Lcom/yandex/mobile/ads/network/core/q;->b:Ljava/lang/String;

    .line 134
    iput-object p3, p0, Lcom/yandex/mobile/ads/network/core/q;->d:Lcom/yandex/mobile/ads/network/core/s$a;

    .line 135
    new-instance v1, Lcom/yandex/mobile/ads/network/core/e;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/network/core/e;-><init>()V

    invoke-virtual {p0, v1}, Lcom/yandex/mobile/ads/network/core/q;->a(Lcom/yandex/mobile/ads/network/core/u;)Lcom/yandex/mobile/ads/network/core/q;

    .line 137
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    :cond_0
    iput v0, p0, Lcom/yandex/mobile/ads/network/core/q;->c:I

    .line 138
    return-void
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    .prologue
    .line 452
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 454
    :try_start_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 455
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    const/16 v1, 0x3d

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 457
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    const/16 v0, 0x26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 461
    :catch_0
    move-exception v0

    .line 462
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Encoding not supported: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 460
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/yandex/mobile/ads/network/core/q;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/network/core/q",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .line 598
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/network/core/q;->a()Lcom/yandex/mobile/ads/network/core/q$a;

    move-result-object v0

    .line 599
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/network/core/q;->a()Lcom/yandex/mobile/ads/network/core/q$a;

    move-result-object v1

    .line 603
    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/network/core/q;->e:Ljava/lang/Integer;

    .line 604
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p1, Lcom/yandex/mobile/ads/network/core/q;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    .line 605
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/network/core/q$a;->ordinal()I

    move-result v1

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/network/core/q$a;->ordinal()I

    move-result v0

    sub-int v0, v1, v0

    goto :goto_0
.end method

.method protected a(Lcom/yandex/mobile/ads/network/core/error/h;)Lcom/yandex/mobile/ads/network/core/error/h;
    .locals 0

    .prologue
    .line 568
    return-object p1
.end method

.method public a()Lcom/yandex/mobile/ads/network/core/q$a;
    .locals 1

    .prologue
    .line 515
    sget-object v0, Lcom/yandex/mobile/ads/network/core/q$a;->b:Lcom/yandex/mobile/ads/network/core/q$a;

    return-object v0
.end method

.method public final a(I)Lcom/yandex/mobile/ads/network/core/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/yandex/mobile/ads/network/core/q",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 262
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/network/core/q;->e:Ljava/lang/Integer;

    .line 263
    return-object p0
.end method

.method public a(Lcom/yandex/mobile/ads/network/core/c$a;)Lcom/yandex/mobile/ads/network/core/q;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/network/core/c$a;",
            ")",
            "Lcom/yandex/mobile/ads/network/core/q",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 297
    iput-object p1, p0, Lcom/yandex/mobile/ads/network/core/q;->l:Lcom/yandex/mobile/ads/network/core/c$a;

    .line 298
    return-object p0
.end method

.method public a(Lcom/yandex/mobile/ads/network/core/r;)Lcom/yandex/mobile/ads/network/core/q;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/network/core/r;",
            ")",
            "Lcom/yandex/mobile/ads/network/core/q",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 252
    iput-object p1, p0, Lcom/yandex/mobile/ads/network/core/q;->f:Lcom/yandex/mobile/ads/network/core/r;

    .line 253
    return-object p0
.end method

.method public a(Lcom/yandex/mobile/ads/network/core/u;)Lcom/yandex/mobile/ads/network/core/q;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/network/core/u;",
            ")",
            "Lcom/yandex/mobile/ads/network/core/q",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 202
    iput-object p1, p0, Lcom/yandex/mobile/ads/network/core/q;->k:Lcom/yandex/mobile/ads/network/core/u;

    .line 203
    return-object p0
.end method

.method public final a(Z)Lcom/yandex/mobile/ads/network/core/q;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/yandex/mobile/ads/network/core/q",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 472
    iput-boolean p1, p0, Lcom/yandex/mobile/ads/network/core/q;->g:Z

    .line 473
    return-object p0
.end method

.method protected abstract a(Lcom/yandex/mobile/ads/network/core/o;)Lcom/yandex/mobile/ads/network/core/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/network/core/o;",
            ")",
            "Lcom/yandex/mobile/ads/network/core/s",
            "<TT;>;"
        }
    .end annotation
.end method

.method protected abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public b()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/yandex/mobile/ads/network/core/q;->a:I

    return v0
.end method

.method public b(Ljava/lang/Object;)Lcom/yandex/mobile/ads/network/core/q;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/yandex/mobile/ads/network/core/q",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 154
    iput-object p1, p0, Lcom/yandex/mobile/ads/network/core/q;->m:Ljava/lang/Object;

    .line 155
    return-object p0
.end method

.method public b(Lcom/yandex/mobile/ads/network/core/error/h;)V
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lcom/yandex/mobile/ads/network/core/q;->d:Lcom/yandex/mobile/ads/network/core/s$a;

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/yandex/mobile/ads/network/core/q;->d:Lcom/yandex/mobile/ads/network/core/s$a;

    invoke-interface {v0, p1}, Lcom/yandex/mobile/ads/network/core/s$a;->a(Lcom/yandex/mobile/ads/network/core/error/h;)V

    .line 590
    :cond_0
    return-void
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/yandex/mobile/ads/network/core/q;->m:Ljava/lang/Object;

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 41
    .local p0, "this":Lcom/yandex/mobile/ads/network/core/q;, "Lcom/yandex/mobile/ads/network/core/q<TT;>;"
    check-cast p1, Lcom/yandex/mobile/ads/network/core/q;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/network/core/q;->a(Lcom/yandex/mobile/ads/network/core/q;)I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/yandex/mobile/ads/network/core/q;->c:I

    return v0
.end method

.method e()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/yandex/mobile/ads/network/core/q;->f:Lcom/yandex/mobile/ads/network/core/r;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/yandex/mobile/ads/network/core/q;->f:Lcom/yandex/mobile/ads/network/core/r;

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/network/core/r;->b(Lcom/yandex/mobile/ads/network/core/q;)V

    .line 243
    :cond_0
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/yandex/mobile/ads/network/core/q;->b:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/network/core/q;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/yandex/mobile/ads/network/core/c$a;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/yandex/mobile/ads/network/core/q;->l:Lcom/yandex/mobile/ads/network/core/c$a;

    return-object v0
.end method

.method public i()V
    .locals 2

    .prologue
    .line 312
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/network/core/q;->h:Z

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TTTTT, cancel "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 314
    return-void
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 320
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/network/core/q;->h:Z

    return v0
.end method

.method public k()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/network/core/error/a;
        }
    .end annotation

    .prologue
    .line 330
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected l()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/network/core/error/a;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/network/core/q;->p()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected m()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/network/core/q;->q()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 373
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/network/core/q;->r()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/network/core/error/a;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/network/core/q;->l()Ljava/util/Map;

    move-result-object v0

    .line 390
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 391
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/network/core/q;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/network/core/q;->a(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v0

    .line 393
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected p()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/network/core/error/a;
        }
    .end annotation

    .prologue
    .line 405
    const/4 v0, 0x0

    return-object v0
.end method

.method protected q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 421
    const-string v0, "UTF-8"

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 2

    .prologue
    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "application/x-www-form-urlencoded; charset="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/network/core/q;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public s()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/network/core/error/a;
        }
    .end annotation

    .prologue
    .line 441
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/network/core/q;->p()Ljava/util/Map;

    move-result-object v0

    .line 442
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 443
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/network/core/q;->q()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/network/core/q;->a(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v0

    .line 445
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final t()Z
    .locals 1

    .prologue
    .line 480
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/network/core/q;->g:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/network/core/q;->d()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 611
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/network/core/q;->h:Z

    if-eqz v0, :cond_0

    const-string v0, "[X] "

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/network/core/q;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 612
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/network/core/q;->a()Lcom/yandex/mobile/ads/network/core/q$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/network/core/q;->e:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 611
    :cond_0
    const-string v0, "[ ] "

    goto :goto_0
.end method

.method public final u()Z
    .locals 1

    .prologue
    .line 497
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/network/core/q;->j:Z

    return v0
.end method

.method public final v()I
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/yandex/mobile/ads/network/core/q;->k:Lcom/yandex/mobile/ads/network/core/u;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/network/core/u;->a()I

    move-result v0

    return v0
.end method

.method public w()Lcom/yandex/mobile/ads/network/core/u;
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/yandex/mobile/ads/network/core/q;->k:Lcom/yandex/mobile/ads/network/core/u;

    return-object v0
.end method

.method public x()V
    .locals 1

    .prologue
    .line 539
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/network/core/q;->i:Z

    .line 540
    return-void
.end method

.method public y()Z
    .locals 1

    .prologue
    .line 546
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/network/core/q;->i:Z

    return v0
.end method
