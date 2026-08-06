.class Lcom/yandex/metrica/impl/al$c;
.super Lcom/yandex/metrica/impl/al$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/al;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 512
    invoke-direct {p0}, Lcom/yandex/metrica/impl/al$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/yandex/metrica/impl/al$c;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected b()[B
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/yandex/metrica/impl/al$c;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/yandex/metrica/impl/al$c;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 524
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/yandex/metrica/impl/al$a;->b()[B

    move-result-object v0

    goto :goto_0
.end method
