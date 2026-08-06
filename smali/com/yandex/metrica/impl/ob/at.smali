.class public Lcom/yandex/metrica/impl/ob/at;
.super Lcom/yandex/metrica/impl/ob/av;
.source "SourceFile"


# instance fields
.field private f:Lcom/yandex/metrica/impl/ob/au;

.field private g:Z

.field private h:J


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/i;Lcom/yandex/metrica/impl/ob/au;)V
    .locals 4

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/av;-><init>(Lcom/yandex/metrica/impl/ob/i;Lcom/yandex/metrica/impl/ob/ay;)V

    .line 32
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/at;->f:Lcom/yandex/metrica/impl/ob/au;

    .line 34
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/at;->f:Lcom/yandex/metrica/impl/ob/au;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/au;->b(Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/at;->g:Z

    .line 35
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/at;->f:Lcom/yandex/metrica/impl/ob/au;

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/at;->h()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/yandex/metrica/impl/ob/au;->j(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/at;->h:J

    .line 36
    return-void
.end method


# virtual methods
.method a()V
    .locals 4

    .prologue
    .line 46
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/av;->a()V

    .line 48
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/at;->h()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/at;->h:J

    .line 49
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/at;->f:Lcom/yandex/metrica/impl/ob/au;

    iget-wide v2, p0, Lcom/yandex/metrica/impl/ob/at;->h:J

    invoke-virtual {v0, v2, v3}, Lcom/yandex/metrica/impl/ob/au;->k(J)Lcom/yandex/metrica/impl/ob/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/au;->a()V

    .line 53
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/at;->a(Z)V

    .line 56
    return-void
.end method

.method a(Z)V
    .locals 2

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/at;->g:Z

    if-eq v0, p1, :cond_0

    .line 65
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ob/at;->g:Z

    .line 66
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/at;->f:Lcom/yandex/metrica/impl/ob/au;

    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/at;->g:Z

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/au;->a(Z)Lcom/yandex/metrica/impl/ob/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/au;->a()V

    .line 68
    :cond_0
    return-void
.end method

.method protected b()Lcom/yandex/metrica/impl/ob/az;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/yandex/metrica/impl/ob/az;->a:Lcom/yandex/metrica/impl/ob/az;

    return-object v0
.end method

.method c()Z
    .locals 4

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/at;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/at;->f()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method d()J
    .locals 2

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/at;->h:J

    return-wide v0
.end method

.method e()V
    .locals 3

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/at;->h()J

    move-result-wide v0

    .line 40
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/at;->f:Lcom/yandex/metrica/impl/ob/au;

    invoke-virtual {v2, v0, v1}, Lcom/yandex/metrica/impl/ob/au;->k(J)Lcom/yandex/metrica/impl/ob/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/au;->a()V

    .line 41
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/at;->k()V

    .line 42
    return-void
.end method
