.class public Lcom/yandex/mobile/ads/network/core/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:[B

.field public final c:Ljava/util/Map;
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

.field public final d:Z


# direct methods
.method public constructor <init>(I[BLjava/util/Map;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lcom/yandex/mobile/ads/network/core/o;->a:I

    .line 39
    iput-object p2, p0, Lcom/yandex/mobile/ads/network/core/o;->b:[B

    .line 40
    iput-object p3, p0, Lcom/yandex/mobile/ads/network/core/o;->c:Ljava/util/Map;

    .line 41
    iput-boolean p4, p0, Lcom/yandex/mobile/ads/network/core/o;->d:Z

    .line 42
    return-void
.end method

.method public constructor <init>([BLjava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    const/16 v0, 0xc8

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/yandex/mobile/ads/network/core/o;-><init>(I[BLjava/util/Map;Z)V

    .line 56
    return-void
.end method
