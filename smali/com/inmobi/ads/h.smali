.class final Lcom/inmobi/ads/h;
.super Ljava/lang/Object;
.source "AdStoreRequest.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:J

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Map;
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

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lcom/inmobi/ads/b$a;

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

.field private k:Lcom/inmobi/commons/core/utilities/uid/d;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/inmobi/ads/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 37
    iput p1, p0, Lcom/inmobi/ads/h;->b:I

    .line 38
    return-void
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 45
    iput-wide p1, p0, Lcom/inmobi/ads/h;->c:J

    .line 46
    return-void
.end method

.method public a(Lcom/inmobi/ads/b$a;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/inmobi/ads/h;->i:Lcom/inmobi/ads/b$a;

    .line 70
    return-void
.end method

.method public a(Lcom/inmobi/commons/core/utilities/uid/d;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/inmobi/ads/h;->k:Lcom/inmobi/commons/core/utilities/uid/d;

    .line 78
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/inmobi/ads/h;->a:Ljava/lang/String;

    .line 30
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
    .line 61
    iput-object p1, p0, Lcom/inmobi/ads/h;->f:Ljava/util/Map;

    .line 62
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/inmobi/ads/h;->b:I

    return v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/inmobi/ads/h;->d:Ljava/lang/String;

    .line 54
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
    .line 101
    iput-object p1, p0, Lcom/inmobi/ads/h;->j:Ljava/util/Map;

    .line 102
    return-void
.end method

.method public c()J
    .locals 2

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/inmobi/ads/h;->c:J

    return-wide v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/inmobi/ads/h;->g:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/inmobi/ads/h;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/inmobi/ads/h;->h:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public e()Ljava/util/Map;
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

    .prologue
    .line 57
    iget-object v0, p0, Lcom/inmobi/ads/h;->f:Ljava/util/Map;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/inmobi/ads/h;->e:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public f()Lcom/inmobi/ads/b$a;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/inmobi/ads/h;->i:Lcom/inmobi/ads/b$a;

    return-object v0
.end method

.method public g()Lcom/inmobi/commons/core/utilities/uid/d;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/inmobi/ads/h;->k:Lcom/inmobi/commons/core/utilities/uid/d;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/inmobi/ads/h;->g:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/inmobi/ads/h;->h:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/util/Map;
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

    .prologue
    .line 97
    iget-object v0, p0, Lcom/inmobi/ads/h;->j:Ljava/util/Map;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/inmobi/ads/h;->e:Ljava/lang/String;

    return-object v0
.end method
