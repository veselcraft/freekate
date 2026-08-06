.class public Lcom/inmobi/signals/f;
.super Lcom/inmobi/commons/core/network/NetworkRequest;
.source "CarbPostListNetworkRequest.java"


# instance fields
.field private d:I

.field private e:I

.field private f:Lcom/inmobi/signals/c;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/signals/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;IILcom/inmobi/commons/core/utilities/uid/d;Ljava/util/List;Lcom/inmobi/signals/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lcom/inmobi/commons/core/utilities/uid/d;",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/signals/d;",
            ">;",
            "Lcom/inmobi/signals/c;",
            ")V"
        }
    .end annotation

    .prologue
    .line 21
    sget-object v0, Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;->POST:Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1, p4}, Lcom/inmobi/commons/core/network/NetworkRequest;-><init>(Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;Ljava/lang/String;ZLcom/inmobi/commons/core/utilities/uid/d;)V

    .line 23
    iput p2, p0, Lcom/inmobi/signals/f;->d:I

    .line 24
    iput p3, p0, Lcom/inmobi/signals/f;->e:I

    .line 25
    iput-object p5, p0, Lcom/inmobi/signals/f;->g:Ljava/util/List;

    .line 26
    iput-object p6, p0, Lcom/inmobi/signals/f;->f:Lcom/inmobi/signals/c;

    .line 28
    iget-object v0, p0, Lcom/inmobi/signals/f;->c:Ljava/util/Map;

    const-string v1, "req_id"

    iget-object v2, p0, Lcom/inmobi/signals/f;->f:Lcom/inmobi/signals/c;

    invoke-virtual {v2}, Lcom/inmobi/signals/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v0, p0, Lcom/inmobi/signals/f;->c:Ljava/util/Map;

    const-string v1, "i_till"

    iget-object v2, p0, Lcom/inmobi/signals/f;->f:Lcom/inmobi/signals/c;

    invoke-virtual {v2}, Lcom/inmobi/signals/c;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v0, p0, Lcom/inmobi/signals/f;->c:Ljava/util/Map;

    const-string v1, "p_a_apps"

    invoke-direct {p0}, Lcom/inmobi/signals/f;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-void
.end method

.method private d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 34
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 36
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/inmobi/signals/f;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/inmobi/signals/f;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/signals/d;

    invoke-virtual {v0}, Lcom/inmobi/signals/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 36
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public b()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/inmobi/signals/f;->d:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/inmobi/signals/f;->e:I

    return v0
.end method
