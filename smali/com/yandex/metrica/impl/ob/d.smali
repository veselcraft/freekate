.class public abstract Lcom/yandex/metrica/impl/ob/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected volatile a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/yandex/metrica/impl/ob/d;->a:I

    return-void
.end method

.method public static final a(Lcom/yandex/metrica/impl/ob/d;)[B
    .locals 3

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/d;->b()I

    move-result v0

    new-array v0, v0, [B

    .line 100
    array-length v1, v0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v0, v2, v1}, Lcom/yandex/metrica/impl/ob/b;->a([BII)Lcom/yandex/metrica/impl/ob/b;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yandex/metrica/impl/ob/d;->a(Lcom/yandex/metrica/impl/ob/b;)V

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/b;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    return-object v0

    .line 100
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/yandex/metrica/impl/ob/d;->a:I

    if-gez v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/d;->b()I

    .line 55
    :cond_0
    iget v0, p0, Lcom/yandex/metrica/impl/ob/d;->a:I

    return v0
.end method

.method public a(Lcom/yandex/metrica/impl/ob/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/d;->c()I

    move-result v0

    .line 65
    iput v0, p0, Lcom/yandex/metrica/impl/ob/d;->a:I

    .line 66
    return v0
.end method

.method protected c()I
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/e;->a(Lcom/yandex/metrica/impl/ob/d;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
