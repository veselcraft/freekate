.class public Lcom/yandex/metrica/impl/ob/aw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/at;

.field private b:Lcom/yandex/metrica/impl/ob/ar;

.field private c:Lcom/yandex/metrica/impl/ob/i;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/i;Lcom/yandex/metrica/impl/ob/bp;)V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/aw;->c:Lcom/yandex/metrica/impl/ob/i;

    .line 28
    new-instance v0, Lcom/yandex/metrica/impl/ob/at;

    new-instance v1, Lcom/yandex/metrica/impl/ob/au;

    invoke-direct {v1, p2}, Lcom/yandex/metrica/impl/ob/au;-><init>(Lcom/yandex/metrica/impl/ob/bp;)V

    invoke-direct {v0, p1, v1}, Lcom/yandex/metrica/impl/ob/at;-><init>(Lcom/yandex/metrica/impl/ob/i;Lcom/yandex/metrica/impl/ob/au;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/aw;->a:Lcom/yandex/metrica/impl/ob/at;

    .line 29
    new-instance v0, Lcom/yandex/metrica/impl/ob/ar;

    new-instance v1, Lcom/yandex/metrica/impl/ob/as;

    invoke-direct {v1, p2}, Lcom/yandex/metrica/impl/ob/as;-><init>(Lcom/yandex/metrica/impl/ob/bp;)V

    invoke-direct {v0, p1, v1}, Lcom/yandex/metrica/impl/ob/ar;-><init>(Lcom/yandex/metrica/impl/ob/i;Lcom/yandex/metrica/impl/ob/as;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/aw;->b:Lcom/yandex/metrica/impl/ob/ar;

    .line 30
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/aw;->a:Lcom/yandex/metrica/impl/ob/at;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/at;->e()V

    .line 34
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/aw;->a:Lcom/yandex/metrica/impl/ob/at;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/at;->a(Z)V

    .line 74
    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/g;)Z
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/aw;->a:Lcom/yandex/metrica/impl/ob/at;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/at;->g()Z

    move-result v0

    if-nez v0, :cond_1

    .line 43
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/aw;->a:Lcom/yandex/metrica/impl/ob/at;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/at;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/aw;->c:Lcom/yandex/metrica/impl/ob/i;

    sget-object v1, Lcom/yandex/metrica/impl/q$a;->i:Lcom/yandex/metrica/impl/q$a;

    invoke-static {p1, v1}, Lcom/yandex/metrica/impl/g;->a(Lcom/yandex/metrica/impl/g;Lcom/yandex/metrica/impl/q$a;)Lcom/yandex/metrica/impl/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/i;->e(Lcom/yandex/metrica/impl/g;)V

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/aw;->a:Lcom/yandex/metrica/impl/ob/at;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/at;->a()V

    .line 47
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/aw;->b:Lcom/yandex/metrica/impl/ob/ar;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ar;->j()V

    .line 48
    const/4 v0, 0x1

    .line 52
    :goto_0
    return v0

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/aw;->a:Lcom/yandex/metrica/impl/ob/at;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/at;->e()V

    .line 52
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/aw;->a:Lcom/yandex/metrica/impl/ob/at;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/at;->j()V

    .line 38
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/aw;->b:Lcom/yandex/metrica/impl/ob/ar;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ar;->j()V

    .line 39
    return-void
.end method

.method public b(Lcom/yandex/metrica/impl/g;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 56
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/aw;->a:Lcom/yandex/metrica/impl/ob/at;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/at;->g()Z

    move-result v1

    if-nez v1, :cond_1

    .line 57
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/aw;->b:Lcom/yandex/metrica/impl/ob/ar;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/ar;->g()Z

    move-result v1

    if-nez v1, :cond_2

    .line 58
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/aw;->a:Lcom/yandex/metrica/impl/ob/at;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/at;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/aw;->c:Lcom/yandex/metrica/impl/ob/i;

    sget-object v2, Lcom/yandex/metrica/impl/q$a;->i:Lcom/yandex/metrica/impl/q$a;

    invoke-static {p1, v2}, Lcom/yandex/metrica/impl/g;->a(Lcom/yandex/metrica/impl/g;Lcom/yandex/metrica/impl/q$a;)Lcom/yandex/metrica/impl/g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/i;->e(Lcom/yandex/metrica/impl/g;)V

    .line 60
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/aw;->a:Lcom/yandex/metrica/impl/ob/at;

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/at;->a(Z)V

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/aw;->b:Lcom/yandex/metrica/impl/ob/ar;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ar;->a()V

    .line 64
    const/4 v0, 0x1

    .line 69
    :cond_1
    :goto_0
    return v0

    .line 66
    :cond_2
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/aw;->b:Lcom/yandex/metrica/impl/ob/ar;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/ar;->k()V

    goto :goto_0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/aw;->a:Lcom/yandex/metrica/impl/ob/at;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/at;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/aw;->a:Lcom/yandex/metrica/impl/ob/at;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/at;->f()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/aw;->b:Lcom/yandex/metrica/impl/ob/ar;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ar;->f()J

    move-result-wide v0

    goto :goto_0
.end method

.method public d()Lcom/yandex/metrica/impl/ob/ax;
    .locals 4

    .prologue
    .line 91
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/aw;->a:Lcom/yandex/metrica/impl/ob/at;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/at;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/aw;->a:Lcom/yandex/metrica/impl/ob/at;

    .line 93
    :goto_0
    new-instance v1, Lcom/yandex/metrica/impl/ob/ax;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/ax;-><init>()V

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/av;->f()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/yandex/metrica/impl/ob/ax;->a(J)Lcom/yandex/metrica/impl/ob/ax;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/av;->l()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/yandex/metrica/impl/ob/ax;->b(J)Lcom/yandex/metrica/impl/ob/ax;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/av;->h()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/yandex/metrica/impl/ob/ax;->c(J)Lcom/yandex/metrica/impl/ob/ax;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/av;->b()Lcom/yandex/metrica/impl/ob/az;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/ax;->a(Lcom/yandex/metrica/impl/ob/az;)Lcom/yandex/metrica/impl/ob/ax;

    move-result-object v0

    return-object v0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/aw;->b:Lcom/yandex/metrica/impl/ob/ar;

    goto :goto_0
.end method

.method public e()Lcom/yandex/metrica/impl/ob/ax;
    .locals 6

    .prologue
    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 102
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 104
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/aw;->c:Lcom/yandex/metrica/impl/ob/i;

    invoke-virtual {v4}, Lcom/yandex/metrica/impl/ob/i;->i()Lcom/yandex/metrica/impl/ob/bc;

    move-result-object v4

    sget-object v5, Lcom/yandex/metrica/impl/ob/az;->b:Lcom/yandex/metrica/impl/ob/az;

    invoke-virtual {v4, v0, v1, v5}, Lcom/yandex/metrica/impl/ob/bc;->a(JLcom/yandex/metrica/impl/ob/az;)V

    .line 105
    new-instance v4, Lcom/yandex/metrica/impl/ob/ax;

    invoke-direct {v4}, Lcom/yandex/metrica/impl/ob/ax;-><init>()V

    invoke-virtual {v4, v0, v1}, Lcom/yandex/metrica/impl/ob/ax;->a(J)Lcom/yandex/metrica/impl/ob/ax;

    move-result-object v0

    sget-object v1, Lcom/yandex/metrica/impl/ob/az;->b:Lcom/yandex/metrica/impl/ob/az;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ax;->a(Lcom/yandex/metrica/impl/ob/az;)Lcom/yandex/metrica/impl/ob/ax;

    move-result-object v0

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/yandex/metrica/impl/ob/ax;->b(J)Lcom/yandex/metrica/impl/ob/ax;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/yandex/metrica/impl/ob/ax;->c(J)Lcom/yandex/metrica/impl/ob/ax;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/yandex/metrica/impl/ob/ax;
    .locals 4

    .prologue
    .line 110
    new-instance v0, Lcom/yandex/metrica/impl/ob/ax;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/ax;-><init>()V

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/aw;->a:Lcom/yandex/metrica/impl/ob/at;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/at;->f()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/yandex/metrica/impl/ob/ax;->a(J)Lcom/yandex/metrica/impl/ob/ax;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/aw;->a:Lcom/yandex/metrica/impl/ob/at;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/at;->b()Lcom/yandex/metrica/impl/ob/az;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ax;->a(Lcom/yandex/metrica/impl/ob/az;)Lcom/yandex/metrica/impl/ob/ax;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/aw;->a:Lcom/yandex/metrica/impl/ob/at;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/at;->l()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/yandex/metrica/impl/ob/ax;->b(J)Lcom/yandex/metrica/impl/ob/ax;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/aw;->a:Lcom/yandex/metrica/impl/ob/at;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/at;->d()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/yandex/metrica/impl/ob/ax;->c(J)Lcom/yandex/metrica/impl/ob/ax;

    move-result-object v0

    return-object v0
.end method
