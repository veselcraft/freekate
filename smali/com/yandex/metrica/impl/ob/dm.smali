.class public abstract Lcom/yandex/metrica/impl/ob/dm;
.super Lcom/yandex/metrica/impl/ob/dr;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/yandex/metrica/impl/ob/dr",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 32
    const-string v0, "application/json; charset=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "utf-8"

    aput-object v3, v1, v2

    .line 33
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/dr;-><init>(ILjava/lang/String;)V

    .line 40
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/dm;->a:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
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

.method public c()[B
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 50
    :try_start_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dm;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 53
    :goto_0
    return-object v0

    .line 50
    :cond_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/dm;->a:Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 53
    :catch_0
    move-exception v1

    goto :goto_0
.end method
