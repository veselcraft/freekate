.class public abstract Lcom/yandex/mobile/ads/network/request/b;
.super Lcom/yandex/mobile/ads/network/request/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/yandex/mobile/ads/network/request/f",
        "<",
        "Lcom/yandex/mobile/ads/e;",
        "Lcom/yandex/mobile/ads/n",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/yandex/mobile/ads/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/e;Ljava/lang/String;Ljava/lang/String;Lcom/yandex/mobile/ads/network/request/c$a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/e;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/yandex/mobile/ads/network/request/c$a",
            "<",
            "Lcom/yandex/mobile/ads/n",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 52
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/e;->j()I

    move-result v1

    move-object v0, p0

    move-object v2, p3

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/yandex/mobile/ads/network/request/f;-><init>(ILjava/lang/String;Lcom/yandex/mobile/ads/network/request/c$a;Landroid/content/Context;Ljava/lang/Object;)V

    .line 54
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p3, v0, v6

    const/4 v1, 0x1

    aput-object p4, v0, v1

    .line 55
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/e;->k()I

    move-result v0

    .line 56
    new-instance v1, Lcom/yandex/mobile/ads/network/core/e;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v0, v6, v2}, Lcom/yandex/mobile/ads/network/core/e;-><init>(IIF)V

    invoke-virtual {p0, v1}, Lcom/yandex/mobile/ads/network/request/b;->a(Lcom/yandex/mobile/ads/network/core/u;)Lcom/yandex/mobile/ads/network/core/q;

    .line 59
    iput-object p4, p0, Lcom/yandex/mobile/ads/network/request/b;->a:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lcom/yandex/mobile/ads/network/request/b;->c:Lcom/yandex/mobile/ads/e;

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/network/request/b;->b:Landroid/content/Context;

    .line 62
    return-void
.end method


# virtual methods
.method protected a(Lcom/yandex/mobile/ads/network/core/error/h;)Lcom/yandex/mobile/ads/network/core/error/h;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p1, Lcom/yandex/mobile/ads/network/core/error/h;->a:Lcom/yandex/mobile/ads/network/core/o;

    invoke-static {v0}, Lcom/yandex/mobile/ads/f;->a(Lcom/yandex/mobile/ads/network/core/o;)Lcom/yandex/mobile/ads/f;

    move-result-object v0

    .line 162
    invoke-super {p0, v0}, Lcom/yandex/mobile/ads/network/request/f;->a(Lcom/yandex/mobile/ads/network/core/error/h;)Lcom/yandex/mobile/ads/network/core/error/h;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/yandex/mobile/ads/network/core/o;I)Lcom/yandex/mobile/ads/network/core/s;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/network/core/o;",
            "I)",
            "Lcom/yandex/mobile/ads/network/core/s",
            "<",
            "Lcom/yandex/mobile/ads/n",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 81
    invoke-virtual {p0, p2}, Lcom/yandex/mobile/ads/network/request/b;->b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    iget-object v3, p1, Lcom/yandex/mobile/ads/network/core/o;->c:Ljava/util/Map;

    .line 83
    sget-object v0, Lcom/yandex/mobile/ads/al;->c:Lcom/yandex/mobile/ads/al;

    invoke-static {v3, v0}, Lcom/yandex/mobile/ads/network/a;->a(Ljava/util/Map;Lcom/yandex/mobile/ads/al;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/mobile/ads/r;->a(Ljava/lang/String;)Lcom/yandex/mobile/ads/r;

    move-result-object v4

    .line 85
    iget-object v0, p0, Lcom/yandex/mobile/ads/network/request/b;->c:Lcom/yandex/mobile/ads/e;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/e;->a()Lcom/yandex/mobile/ads/r;

    move-result-object v0

    if-ne v4, v0, :cond_0

    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 86
    new-instance v0, Lcom/yandex/mobile/ads/n$a;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/n$a;-><init>()V

    .line 87
    iget-object v5, p0, Lcom/yandex/mobile/ads/network/request/b;->c:Lcom/yandex/mobile/ads/e;

    invoke-virtual {v5}, Lcom/yandex/mobile/ads/e;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/yandex/mobile/ads/n$a;->a(Ljava/lang/String;)Lcom/yandex/mobile/ads/n$a;

    .line 88
    invoke-virtual {v0, v4}, Lcom/yandex/mobile/ads/n$a;->a(Lcom/yandex/mobile/ads/r;)Lcom/yandex/mobile/ads/n$a;

    .line 90
    sget-object v4, Lcom/yandex/mobile/ads/al;->a:Lcom/yandex/mobile/ads/al;

    invoke-static {v3, v4}, Lcom/yandex/mobile/ads/network/a;->b(Ljava/util/Map;Lcom/yandex/mobile/ads/al;)I

    move-result v4

    .line 91
    sget-object v5, Lcom/yandex/mobile/ads/al;->b:Lcom/yandex/mobile/ads/al;

    invoke-static {v3, v5}, Lcom/yandex/mobile/ads/network/a;->b(Ljava/util/Map;Lcom/yandex/mobile/ads/al;)I

    move-result v5

    .line 92
    invoke-virtual {v0, v4}, Lcom/yandex/mobile/ads/n$a;->a(I)Lcom/yandex/mobile/ads/n$a;

    .line 93
    invoke-virtual {v0, v5}, Lcom/yandex/mobile/ads/n$a;->b(I)Lcom/yandex/mobile/ads/n$a;

    .line 94
    iget-object v4, p0, Lcom/yandex/mobile/ads/network/request/b;->c:Lcom/yandex/mobile/ads/e;

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/e;->c()Lcom/yandex/mobile/ads/v$a;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/yandex/mobile/ads/n$a;->a(Lcom/yandex/mobile/ads/v$a;)Lcom/yandex/mobile/ads/n$a;

    .line 96
    sget-object v4, Lcom/yandex/mobile/ads/al;->e:Lcom/yandex/mobile/ads/al;

    invoke-static {v3, v4}, Lcom/yandex/mobile/ads/network/a;->c(Ljava/util/Map;Lcom/yandex/mobile/ads/al;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/yandex/mobile/ads/n$a;->a(Ljava/util/List;)Lcom/yandex/mobile/ads/n$a;

    .line 97
    sget-object v4, Lcom/yandex/mobile/ads/al;->f:Lcom/yandex/mobile/ads/al;

    new-instance v5, Lcom/yandex/mobile/ads/network/request/b$1;

    invoke-direct {v5}, Lcom/yandex/mobile/ads/network/request/b$1;-><init>()V

    invoke-static {v3, v4, v5}, Lcom/yandex/mobile/ads/network/a;->a(Ljava/util/Map;Lcom/yandex/mobile/ads/al;Lcom/yandex/mobile/ads/network/a$a;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/yandex/mobile/ads/n$a;->b(Ljava/util/List;)Lcom/yandex/mobile/ads/n$a;

    .line 103
    sget-object v4, Lcom/yandex/mobile/ads/al;->m:Lcom/yandex/mobile/ads/al;

    new-instance v5, Lcom/yandex/mobile/ads/network/request/b$2;

    invoke-direct {v5}, Lcom/yandex/mobile/ads/network/request/b$2;-><init>()V

    invoke-static {v3, v4, v5}, Lcom/yandex/mobile/ads/network/a;->a(Ljava/util/Map;Lcom/yandex/mobile/ads/al;Lcom/yandex/mobile/ads/network/a$a;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/yandex/mobile/ads/n$a;->c(Ljava/util/List;)Lcom/yandex/mobile/ads/n$a;

    .line 110
    sget-object v4, Lcom/yandex/mobile/ads/al;->h:Lcom/yandex/mobile/ads/al;

    invoke-static {v3, v4}, Lcom/yandex/mobile/ads/network/a;->b(Ljava/util/Map;Lcom/yandex/mobile/ads/al;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/yandex/mobile/ads/n$a;->e(I)Lcom/yandex/mobile/ads/n$a;

    .line 111
    sget-object v4, Lcom/yandex/mobile/ads/al;->i:Lcom/yandex/mobile/ads/al;

    invoke-static {v3, v4}, Lcom/yandex/mobile/ads/network/a;->b(Ljava/util/Map;Lcom/yandex/mobile/ads/al;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/yandex/mobile/ads/n$a;->c(I)Lcom/yandex/mobile/ads/n$a;

    .line 112
    sget-object v4, Lcom/yandex/mobile/ads/al;->j:Lcom/yandex/mobile/ads/al;

    invoke-static {v3, v4}, Lcom/yandex/mobile/ads/network/a;->b(Ljava/util/Map;Lcom/yandex/mobile/ads/al;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/yandex/mobile/ads/n$a;->d(I)Lcom/yandex/mobile/ads/n$a;

    .line 114
    sget-object v4, Lcom/yandex/mobile/ads/al;->k:Lcom/yandex/mobile/ads/al;

    invoke-static {v3, v4}, Lcom/yandex/mobile/ads/network/a;->a(Ljava/util/Map;Lcom/yandex/mobile/ads/al;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/yandex/mobile/ads/n$a;->b(Ljava/lang/String;)Lcom/yandex/mobile/ads/n$a;

    .line 116
    sget-object v4, Lcom/yandex/mobile/ads/al;->l:Lcom/yandex/mobile/ads/al;

    invoke-static {v3, v4}, Lcom/yandex/mobile/ads/network/a;->a(Ljava/util/Map;Lcom/yandex/mobile/ads/al;)Ljava/lang/String;

    move-result-object v3

    .line 117
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Lcom/yandex/mobile/ads/al;->l:Lcom/yandex/mobile/ads/al;

    invoke-virtual {v5}, Lcom/yandex/mobile/ads/al;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    aput-object v3, v4, v1

    .line 118
    iget-object v1, p0, Lcom/yandex/mobile/ads/network/request/b;->b:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/yandex/mobile/ads/s;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/network/request/b;->c(Lcom/yandex/mobile/ads/network/core/o;)Ljava/lang/Object;

    move-result-object v1

    .line 121
    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/n$a;->a(Ljava/lang/Object;)Lcom/yandex/mobile/ads/n$a;

    .line 123
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/n$a;->a()Lcom/yandex/mobile/ads/n;

    move-result-object v0

    .line 124
    invoke-static {p1}, Lcom/yandex/mobile/ads/network/core/h;->a(Lcom/yandex/mobile/ads/network/core/o;)Lcom/yandex/mobile/ads/network/core/c$a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/network/core/s;->a(Ljava/lang/Object;Lcom/yandex/mobile/ads/network/core/c$a;)Lcom/yandex/mobile/ads/network/core/s;

    move-result-object v0

    .line 131
    :goto_1
    return-object v0

    :cond_0
    move v0, v2

    .line 85
    goto/16 :goto_0

    .line 126
    :cond_1
    invoke-static {p1}, Lcom/yandex/mobile/ads/f;->a(Lcom/yandex/mobile/ads/network/core/o;)Lcom/yandex/mobile/ads/f;

    move-result-object v0

    .line 127
    invoke-static {v0}, Lcom/yandex/mobile/ads/network/core/s;->a(Lcom/yandex/mobile/ads/network/core/error/h;)Lcom/yandex/mobile/ads/network/core/s;

    move-result-object v0

    goto :goto_1

    .line 130
    :cond_2
    invoke-static {p1}, Lcom/yandex/mobile/ads/f;->a(Lcom/yandex/mobile/ads/network/core/o;)Lcom/yandex/mobile/ads/f;

    move-result-object v0

    .line 131
    invoke-static {v0}, Lcom/yandex/mobile/ads/network/core/s;->a(Lcom/yandex/mobile/ads/network/core/error/h;)Lcom/yandex/mobile/ads/network/core/s;

    move-result-object v0

    goto :goto_1
.end method

.method protected a(Lcom/yandex/mobile/ads/e;)Lcom/yandex/mobile/ads/report/b;
    .locals 3

    .prologue
    .line 196
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 197
    const-string v1, "block_id"

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/e;->f()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const-string v1, "ad_type"

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/e;->a()Lcom/yandex/mobile/ads/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/r;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    new-instance v1, Lcom/yandex/mobile/ads/report/b;

    sget-object v2, Lcom/yandex/mobile/ads/report/b$b;->a:Lcom/yandex/mobile/ads/report/b$b;

    invoke-direct {v1, v2, v0}, Lcom/yandex/mobile/ads/report/b;-><init>(Lcom/yandex/mobile/ads/report/b$b;Ljava/util/Map;)V

    return-object v1
.end method

.method protected a(Lcom/yandex/mobile/ads/e;I)Lcom/yandex/mobile/ads/report/b;
    .locals 3

    .prologue
    .line 205
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 206
    const-string v1, "block_id"

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/e;->f()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 208
    const-string v1, "code"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    :cond_0
    new-instance v1, Lcom/yandex/mobile/ads/report/b;

    sget-object v2, Lcom/yandex/mobile/ads/report/b$b;->b:Lcom/yandex/mobile/ads/report/b$b;

    invoke-direct {v1, v2, v0}, Lcom/yandex/mobile/ads/report/b;-><init>(Lcom/yandex/mobile/ads/report/b$b;Ljava/util/Map;)V

    return-object v1
.end method

.method protected bridge synthetic a(Ljava/lang/Object;I)Lcom/yandex/mobile/ads/report/b;
    .locals 1

    .prologue
    .line 41
    check-cast p1, Lcom/yandex/mobile/ads/e;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/network/request/b;->a(Lcom/yandex/mobile/ads/e;I)Lcom/yandex/mobile/ads/report/b;

    move-result-object v0

    return-object v0
.end method

.method b(I)Z
    .locals 1

    .prologue
    .line 154
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected synthetic c(Ljava/lang/Object;)Lcom/yandex/mobile/ads/report/b;
    .locals 1

    .prologue
    .line 41
    check-cast p1, Lcom/yandex/mobile/ads/e;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/network/request/b;->a(Lcom/yandex/mobile/ads/e;)Lcom/yandex/mobile/ads/report/b;

    move-result-object v0

    return-object v0
.end method

.method protected abstract c(Lcom/yandex/mobile/ads/network/core/o;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/network/core/o;",
            ")TT;"
        }
    .end annotation
.end method

.method protected d(Lcom/yandex/mobile/ads/network/core/o;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 140
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/yandex/mobile/ads/network/core/o;->b:[B

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    return-object v0

    .line 142
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/yandex/mobile/ads/network/core/o;->b:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 167
    invoke-super {p0}, Lcom/yandex/mobile/ads/network/request/f;->f()Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/network/request/b;->b()I

    move-result v1

    .line 170
    if-nez v1, :cond_0

    .line 171
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/network/request/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    :cond_0
    invoke-static {v0}, Lcom/yandex/mobile/ads/utils/j;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/util/Map;
    .locals 4
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
    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 68
    iget-object v1, p0, Lcom/yandex/mobile/ads/network/request/b;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/yandex/mobile/ads/s;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 69
    if-eqz v1, :cond_0

    .line 70
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 71
    sget-object v2, Lcom/yandex/mobile/ads/al;->l:Lcom/yandex/mobile/ads/al;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/al;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_0
    return-object v0
.end method

.method public s()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/network/core/error/a;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 179
    invoke-super {p0}, Lcom/yandex/mobile/ads/network/request/f;->s()[B

    move-result-object v0

    .line 181
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/network/request/b;->b()I

    move-result v1

    .line 182
    if-ne v4, v1, :cond_0

    .line 184
    :try_start_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/network/request/b;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yandex/mobile/ads/network/request/b;->a:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 191
    :cond_0
    :goto_0
    return-object v0

    .line 186
    :catch_0
    move-exception v1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/yandex/mobile/ads/network/request/b;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "UTF-8"

    aput-object v2, v1, v4

    goto :goto_0
.end method
