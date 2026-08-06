.class Lcom/yandex/metrica/impl/ob/cn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/cv;


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/da;

.field private b:Lcom/yandex/metrica/impl/ob/cv;

.field private c:Lcom/yandex/metrica/impl/ob/de;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/db;Lcom/yandex/metrica/impl/ob/da;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/cn;->a:Lcom/yandex/metrica/impl/ob/da;

    .line 16
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/da;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 17
    invoke-static {p2}, Lcom/yandex/metrica/impl/ob/dd;->a(Lcom/yandex/metrica/impl/ob/da;)Z

    move-result v0

    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/da;->f()Z

    move-result v1

    new-instance v2, Lcom/yandex/metrica/impl/ob/cq;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/cq;-><init>()V

    iput-object v2, p0, Lcom/yandex/metrica/impl/ob/cn;->b:Lcom/yandex/metrica/impl/ob/cv;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_2

    invoke-static {p1, p2}, Lcom/yandex/metrica/impl/ob/cn;->a(Lcom/yandex/metrica/impl/ob/db;Lcom/yandex/metrica/impl/ob/da;)Lcom/yandex/metrica/impl/ob/dp;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/yandex/metrica/impl/ob/de;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/cn;->b:Lcom/yandex/metrica/impl/ob/cv;

    invoke-direct {v1, p1, v2, v0, p2}, Lcom/yandex/metrica/impl/ob/de;-><init>(Lcom/yandex/metrica/impl/ob/db;Lcom/yandex/metrica/impl/ob/cv;Lcom/yandex/metrica/impl/ob/dp;Lcom/yandex/metrica/impl/ob/da;)V

    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/cn;->c:Lcom/yandex/metrica/impl/ob/de;

    .line 21
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cn;->c:Lcom/yandex/metrica/impl/ob/de;

    if-eqz v0, :cond_1

    .line 22
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cn;->c:Lcom/yandex/metrica/impl/ob/de;

    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/da;->d()Lcom/yandex/metrica/impl/ob/dg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/de;->a(Lcom/yandex/metrica/impl/ob/dg;)V

    .line 24
    :cond_1
    return-void

    .line 17
    :cond_2
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/cx;->c(Lcom/yandex/metrica/impl/ob/db;)Lcom/yandex/metrica/impl/ob/dp;

    move-result-object v0

    goto :goto_0

    .line 19
    :cond_3
    invoke-static {p2}, Lcom/yandex/metrica/impl/ob/dd;->a(Lcom/yandex/metrica/impl/ob/da;)Z

    move-result v3

    const-wide/32 v4, 0x5265c00

    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/da;->a()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-eqz v2, :cond_6

    move v2, v1

    :goto_2
    if-nez v2, :cond_4

    if-eqz v3, :cond_5

    :cond_4
    move v0, v1

    :cond_5
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/da;->f()Z

    move-result v1

    if-eqz v3, :cond_7

    :try_start_0
    new-instance v2, Lcom/yandex/metrica/impl/ob/cj;

    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/da;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lcom/yandex/metrica/impl/ob/cj;-><init>(Lcom/yandex/metrica/impl/ob/db;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/yandex/metrica/impl/ob/cn;->b:Lcom/yandex/metrica/impl/ob/cv;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    if-eqz v1, :cond_0

    if-eqz v0, :cond_8

    invoke-static {p1, p2}, Lcom/yandex/metrica/impl/ob/cn;->a(Lcom/yandex/metrica/impl/ob/db;Lcom/yandex/metrica/impl/ob/da;)Lcom/yandex/metrica/impl/ob/dp;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ob/de;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/cn;->b:Lcom/yandex/metrica/impl/ob/cv;

    invoke-direct {v1, p1, v2, v0, p2}, Lcom/yandex/metrica/impl/ob/de;-><init>(Lcom/yandex/metrica/impl/ob/db;Lcom/yandex/metrica/impl/ob/cv;Lcom/yandex/metrica/impl/ob/dp;Lcom/yandex/metrica/impl/ob/da;)V

    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/cn;->c:Lcom/yandex/metrica/impl/ob/de;

    goto :goto_1

    :cond_6
    move v2, v0

    goto :goto_2

    :catch_0
    move-exception v2

    new-instance v2, Lcom/yandex/metrica/impl/ob/cq;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/cq;-><init>()V

    iput-object v2, p0, Lcom/yandex/metrica/impl/ob/cn;->b:Lcom/yandex/metrica/impl/ob/cv;

    goto :goto_3

    :cond_7
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/cx;->b(Lcom/yandex/metrica/impl/ob/db;)Lcom/yandex/metrica/impl/ob/cv;

    move-result-object v2

    iput-object v2, p0, Lcom/yandex/metrica/impl/ob/cn;->b:Lcom/yandex/metrica/impl/ob/cv;

    goto :goto_3

    :cond_8
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/cx;->a(Lcom/yandex/metrica/impl/ob/db;)Lcom/yandex/metrica/impl/ob/de;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/cn;->c:Lcom/yandex/metrica/impl/ob/de;

    goto :goto_1
.end method

.method private static a(Lcom/yandex/metrica/impl/ob/db;Lcom/yandex/metrica/impl/ob/da;)Lcom/yandex/metrica/impl/ob/dp;
    .locals 2

    .prologue
    .line 93
    const/4 v0, 0x0

    .line 94
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/dd;->a(Lcom/yandex/metrica/impl/ob/da;)Z

    move-result v1

    .line 96
    if-eqz v1, :cond_0

    .line 97
    :try_start_0
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/da;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yandex/metrica/impl/ob/db;->a(Ljava/util/List;)Lcom/yandex/metrica/impl/ob/dp;

    move-result-object v0

    .line 104
    :goto_0
    return-object v0

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/db;->d()Lcom/yandex/metrica/impl/ob/dp;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/cy;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cn;->b:Lcom/yandex/metrica/impl/ob/cv;

    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/cv;->a()Lcom/yandex/metrica/impl/ob/cy;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/yandex/metrica/impl/ob/cy;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cn;->b:Lcom/yandex/metrica/impl/ob/cv;

    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/cv;->b()Lcom/yandex/metrica/impl/ob/cy;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/yandex/metrica/impl/ob/cy;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cn;->b:Lcom/yandex/metrica/impl/ob/cv;

    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/cv;->c()Lcom/yandex/metrica/impl/ob/cy;

    move-result-object v0

    return-object v0
.end method

.method d()Lcom/yandex/metrica/impl/ob/de;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cn;->c:Lcom/yandex/metrica/impl/ob/de;

    return-object v0
.end method

.method e()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cn;->a:Lcom/yandex/metrica/impl/ob/da;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/da;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cn;->c:Lcom/yandex/metrica/impl/ob/de;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/de;->c()V

    .line 34
    :cond_0
    return-void
.end method
