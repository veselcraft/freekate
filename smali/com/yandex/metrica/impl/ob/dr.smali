.class public abstract Lcom/yandex/metrica/impl/ob/dr;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/dr$a;,
        Lcom/yandex/metrica/impl/ob/dr$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private c:Lcom/yandex/metrica/impl/ob/dt;

.field private volatile d:Lcom/yandex/metrica/impl/ob/dr$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/dr$b",
            "<TT;>;"
        }
    .end annotation
.end field

.field private volatile e:Lcom/yandex/metrica/impl/ob/dr$a;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput p1, p0, Lcom/yandex/metrica/impl/ob/dr;->a:I

    .line 86
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/dr;->b:Ljava/lang/String;

    .line 87
    new-instance v0, Lcom/yandex/metrica/impl/ob/dt;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/dt;-><init>()V

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/dr;->a(Lcom/yandex/metrica/impl/ob/dt;)Lcom/yandex/metrica/impl/ob/dr;

    .line 88
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
    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
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

    .line 235
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    const/16 v1, 0x3d

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 237
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    const/16 v0, 0x26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 241
    :catch_0
    move-exception v0

    .line 242
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

    .line 240
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
.method public a(Lcom/yandex/metrica/impl/ob/dt;)Lcom/yandex/metrica/impl/ob/dr;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/dt;",
            ")",
            "Lcom/yandex/metrica/impl/ob/dr",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 103
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/dr;->c:Lcom/yandex/metrica/impl/ob/dt;

    .line 104
    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dr;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected a(Lcom/yandex/metrica/impl/ob/dr$a;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/dr;->e:Lcom/yandex/metrica/impl/ob/dr$a;

    .line 129
    return-void
.end method

.method protected a(Lcom/yandex/metrica/impl/ob/dr$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/dr$b",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 120
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/dr;->d:Lcom/yandex/metrica/impl/ob/dr$b;

    .line 121
    return-void
.end method

.method protected abstract b(Lcom/yandex/metrica/impl/ob/dq;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/dq;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/metrica/impl/ob/do;
        }
    .end annotation
.end method

.method public b()Ljava/util/Map;
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
            Lcom/yandex/metrica/impl/ob/do;
        }
    .end annotation

    .prologue
    .line 140
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public c()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/metrica/impl/ob/do;
        }
    .end annotation

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/dr;->k()Ljava/util/Map;

    move-result-object v0

    .line 222
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/dr;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ob/dr;->a(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v0

    .line 225
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/yandex/metrica/impl/ob/dr;->a:I

    return v0
.end method

.method protected e()Lcom/yandex/metrica/impl/ob/dr$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yandex/metrica/impl/ob/dr$b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dr;->d:Lcom/yandex/metrica/impl/ob/dr$b;

    return-object v0
.end method

.method protected f()Lcom/yandex/metrica/impl/ob/dr$a;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dr;->e:Lcom/yandex/metrica/impl/ob/dr$a;

    return-object v0
.end method

.method protected g()Ljava/util/Map;
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
            Lcom/yandex/metrica/impl/ob/do;
        }
    .end annotation

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/dr;->k()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/dr;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/dr;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/metrica/impl/ob/do;
        }
    .end annotation

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/dr;->g()Ljava/util/Map;

    move-result-object v0

    .line 182
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/dr;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ob/dr;->a(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v0

    .line 185
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected k()Ljava/util/Map;
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
            Lcom/yandex/metrica/impl/ob/do;
        }
    .end annotation

    .prologue
    .line 194
    const/4 v0, 0x0

    return-object v0
.end method

.method protected l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    const-string v0, "UTF-8"

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 2

    .prologue
    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "application/x-www-form-urlencoded; charset="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/dr;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final n()I
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dr;->c:Lcom/yandex/metrica/impl/ob/dt;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dt;->a()I

    move-result v0

    return v0
.end method

.method public o()Lcom/yandex/metrica/impl/ob/dt;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/dr;->c:Lcom/yandex/metrica/impl/ob/dt;

    return-object v0
.end method
