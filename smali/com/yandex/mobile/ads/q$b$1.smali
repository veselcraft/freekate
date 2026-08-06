.class Lcom/yandex/mobile/ads/q$b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/network/request/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/q$b;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/network/request/c$a",
        "<",
        "Lcom/yandex/mobile/ads/network/core/o;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/yandex/mobile/ads/q$b$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/mobile/ads/network/core/error/h;)V
    .locals 3

    .prologue
    .line 193
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/yandex/mobile/ads/q$b$1;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/network/core/error/h;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 194
    return-void
.end method

.method public a(Lcom/yandex/mobile/ads/network/core/o;)V
    .locals 4

    .prologue
    .line 198
    iget v0, p1, Lcom/yandex/mobile/ads/network/core/o;->a:I

    .line 199
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/yandex/mobile/ads/q$b$1;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    .line 200
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 190
    check-cast p1, Lcom/yandex/mobile/ads/network/core/o;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/q$b$1;->a(Lcom/yandex/mobile/ads/network/core/o;)V

    return-void
.end method
