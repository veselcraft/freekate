.class public final Lcom/inmobi/ads/e;
.super Lcom/inmobi/commons/core/network/NetworkRequest;
.source "AdNetworkRequest.java"


# instance fields
.field private d:J

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;JLcom/inmobi/commons/core/utilities/uid/d;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 32
    sget-object v1, Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;->POST:Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;

    move-object v0, p0

    move-object v2, p1

    move-object v4, p4

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/inmobi/commons/core/network/NetworkRequest;-><init>(Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;Ljava/lang/String;ZLcom/inmobi/commons/core/utilities/uid/d;Z)V

    .line 23
    const-string v0, "json"

    iput-object v0, p0, Lcom/inmobi/ads/e;->e:Ljava/lang/String;

    .line 25
    iput v3, p0, Lcom/inmobi/ads/e;->g:I

    .line 34
    iput-wide p2, p0, Lcom/inmobi/ads/e;->d:J

    .line 35
    iget-object v0, p0, Lcom/inmobi/ads/e;->c:Ljava/util/Map;

    const-string v1, "im-plid"

    iget-wide v2, p0, Lcom/inmobi/ads/e;->d:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v0, p0, Lcom/inmobi/ads/e;->c:Ljava/util/Map;

    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/e;->g()Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 41
    iget-object v0, p0, Lcom/inmobi/ads/e;->c:Ljava/util/Map;

    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo;->c()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 44
    iget-object v0, p0, Lcom/inmobi/ads/e;->c:Ljava/util/Map;

    const-string v1, "u-appIS"

    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/a;->a()Lcom/inmobi/commons/core/utilities/info/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/commons/core/utilities/info/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lcom/inmobi/ads/e;->c:Ljava/util/Map;

    invoke-static {}, Lcom/inmobi/signals/LocationInfo;->a()Lcom/inmobi/signals/LocationInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/signals/LocationInfo;->g()Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 48
    iget-object v0, p0, Lcom/inmobi/ads/e;->c:Ljava/util/Map;

    invoke-static {}, Lcom/inmobi/signals/LocationInfo;->a()Lcom/inmobi/signals/LocationInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/signals/LocationInfo;->f()Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 51
    iget-object v0, p0, Lcom/inmobi/ads/e;->c:Ljava/util/Map;

    invoke-static {}, Lcom/inmobi/signals/b/b;->b()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 52
    iget-object v0, p0, Lcom/inmobi/ads/e;->c:Ljava/util/Map;

    invoke-static {}, Lcom/inmobi/signals/b/b;->d()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 55
    iget-object v0, p0, Lcom/inmobi/ads/e;->c:Ljava/util/Map;

    invoke-static {}, Lcom/inmobi/signals/a/c;->c()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 56
    iget-object v0, p0, Lcom/inmobi/ads/e;->c:Ljava/util/Map;

    invoke-static {}, Lcom/inmobi/signals/a/c;->d()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 59
    iget-object v0, p0, Lcom/inmobi/ads/e;->c:Ljava/util/Map;

    invoke-static {}, Lcom/inmobi/signals/a/c;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 60
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 64
    invoke-super {p0}, Lcom/inmobi/commons/core/network/NetworkRequest;->a()V

    .line 65
    iget-object v0, p0, Lcom/inmobi/ads/e;->c:Ljava/util/Map;

    const-string v1, "format"

    iget-object v2, p0, Lcom/inmobi/ads/e;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lcom/inmobi/ads/e;->c:Ljava/util/Map;

    const-string v1, "mk-ads"

    iget v2, p0, Lcom/inmobi/ads/e;->g:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lcom/inmobi/ads/e;->c:Ljava/util/Map;

    const-string v1, "adtype"

    iget-object v2, p0, Lcom/inmobi/ads/e;->h:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lcom/inmobi/ads/e;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/inmobi/ads/e;->c:Ljava/util/Map;

    const-string v1, "p-keywords"

    iget-object v2, p0, Lcom/inmobi/ads/e;->i:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/e;->j:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 77
    iget-object v0, p0, Lcom/inmobi/ads/e;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 78
    iget-object v2, p0, Lcom/inmobi/ads/e;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 79
    iget-object v2, p0, Lcom/inmobi/ads/e;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 84
    :cond_2
    iget-object v0, p0, Lcom/inmobi/ads/e;->k:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 85
    iget-object v0, p0, Lcom/inmobi/ads/e;->c:Ljava/util/Map;

    iget-object v1, p0, Lcom/inmobi/ads/e;->k:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 87
    :cond_3
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 114
    iput p1, p0, Lcom/inmobi/ads/e;->g:I

    .line 115
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/inmobi/ads/e;->h:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    iput-object p1, p0, Lcom/inmobi/ads/e;->j:Ljava/util/Map;

    .line 131
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/inmobi/ads/e;->h:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/inmobi/ads/e;->e:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public b(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    iput-object p1, p0, Lcom/inmobi/ads/e;->k:Ljava/util/Map;

    .line 135
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/inmobi/ads/e;->f:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/inmobi/ads/e;->f:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/inmobi/ads/e;->g:I

    return v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/inmobi/ads/e;->i:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public e()J
    .locals 2

    .prologue
    .line 122
    iget-wide v0, p0, Lcom/inmobi/ads/e;->d:J

    return-wide v0
.end method
