.class Lcom/yandex/metrica/impl/al$f;
.super Lcom/yandex/metrica/impl/al$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/al;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 539
    invoke-direct {p0}, Lcom/yandex/metrica/impl/al$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected b()[B
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/yandex/metrica/impl/al$f;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/yandex/metrica/impl/s;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method
