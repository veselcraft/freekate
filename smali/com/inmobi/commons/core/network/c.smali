.class public Lcom/inmobi/commons/core/network/c;
.super Ljava/lang/Object;
.source "NetworkResponse.java"


# instance fields
.field private a:Lcom/inmobi/commons/core/network/NetworkRequest;

.field private b:Ljava/lang/String;

.field private c:Lcom/inmobi/commons/core/network/NetworkError;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/inmobi/commons/core/network/NetworkRequest;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/inmobi/commons/core/network/c;->a:Lcom/inmobi/commons/core/network/NetworkRequest;

    .line 18
    return-void
.end method


# virtual methods
.method public a(Lcom/inmobi/commons/core/network/NetworkError;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/inmobi/commons/core/network/c;->c:Lcom/inmobi/commons/core/network/NetworkError;

    .line 50
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/inmobi/commons/core/network/c;->b:Ljava/lang/String;

    .line 34
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
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 41
    iput-object p1, p0, Lcom/inmobi/commons/core/network/c;->d:Ljava/util/Map;

    .line 42
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/inmobi/commons/core/network/c;->c:Lcom/inmobi/commons/core/network/NetworkError;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/inmobi/commons/core/network/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/inmobi/commons/core/network/NetworkError;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/inmobi/commons/core/network/c;->c:Lcom/inmobi/commons/core/network/NetworkError;

    return-object v0
.end method
