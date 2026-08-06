.class public final Lcom/yandex/metrica/c$b;
.super Lcom/yandex/metrica/impl/ob/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public b:J

.field public c:I

.field public d:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/d;-><init>()V

    .line 35
    invoke-virtual {p0}, Lcom/yandex/metrica/c$b;->d()Lcom/yandex/metrica/c$b;

    .line 36
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/yandex/metrica/c$b;->b:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/yandex/metrica/impl/ob/b;->a(IJ)V

    .line 50
    const/4 v0, 0x2

    iget v1, p0, Lcom/yandex/metrica/c$b;->c:I

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->c(II)V

    .line 51
    iget-wide v0, p0, Lcom/yandex/metrica/c$b;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 52
    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/yandex/metrica/c$b;->d:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/yandex/metrica/impl/ob/b;->b(IJ)V

    .line 54
    :cond_0
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/ob/d;->a(Lcom/yandex/metrica/impl/ob/b;)V

    .line 55
    return-void
.end method

.method protected c()I
    .locals 6

    .prologue
    .line 59
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/d;->c()I

    move-result v0

    .line 60
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/yandex/metrica/c$b;->b:J

    invoke-static {v1, v2, v3}, Lcom/yandex/metrica/impl/ob/b;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 62
    const/4 v1, 0x2

    iget v2, p0, Lcom/yandex/metrica/c$b;->c:I

    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 64
    iget-wide v2, p0, Lcom/yandex/metrica/c$b;->d:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 65
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/yandex/metrica/c$b;->d:J

    invoke-static {v1, v2, v3}, Lcom/yandex/metrica/impl/ob/b;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 68
    :cond_0
    return v0
.end method

.method public d()Lcom/yandex/metrica/c$b;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 39
    iput-wide v2, p0, Lcom/yandex/metrica/c$b;->b:J

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/yandex/metrica/c$b;->c:I

    .line 41
    iput-wide v2, p0, Lcom/yandex/metrica/c$b;->d:J

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/yandex/metrica/c$b;->a:I

    .line 43
    return-object p0
.end method
