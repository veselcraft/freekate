.class public Lcom/yandex/mobile/ads/nativeads/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/yandex/mobile/ads/nativeads/ap;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/nativeads/au;

.field private final b:Lcom/yandex/mobile/ads/nativeads/at;

.field private final c:Lcom/yandex/mobile/ads/nativeads/ap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final d:Lcom/yandex/mobile/ads/nativeads/as;


# direct methods
.method constructor <init>(Lcom/yandex/mobile/ads/nativeads/as;Lcom/yandex/mobile/ads/nativeads/au;Lcom/yandex/mobile/ads/nativeads/ap;Lcom/yandex/mobile/ads/nativeads/at;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/nativeads/as;",
            "Lcom/yandex/mobile/ads/nativeads/au;",
            "TT;",
            "Lcom/yandex/mobile/ads/nativeads/at;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p3, p0, Lcom/yandex/mobile/ads/nativeads/d;->c:Lcom/yandex/mobile/ads/nativeads/ap;

    .line 32
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/d;->d:Lcom/yandex/mobile/ads/nativeads/as;

    .line 33
    iput-object p4, p0, Lcom/yandex/mobile/ads/nativeads/d;->b:Lcom/yandex/mobile/ads/nativeads/at;

    .line 34
    iput-object p2, p0, Lcom/yandex/mobile/ads/nativeads/d;->a:Lcom/yandex/mobile/ads/nativeads/au;

    .line 35
    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/mobile/ads/nativeads/au;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/d;->a:Lcom/yandex/mobile/ads/nativeads/au;

    return-object v0
.end method

.method public b()Lcom/yandex/mobile/ads/nativeads/at;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/d;->b:Lcom/yandex/mobile/ads/nativeads/at;

    return-object v0
.end method

.method public c()Lcom/yandex/mobile/ads/nativeads/ap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/d;->c:Lcom/yandex/mobile/ads/nativeads/ap;

    return-object v0
.end method

.method public d()Lcom/yandex/mobile/ads/nativeads/as;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/d;->d:Lcom/yandex/mobile/ads/nativeads/as;

    return-object v0
.end method
