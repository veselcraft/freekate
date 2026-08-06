.class public abstract Lcom/yandex/mobile/ads/network/request/c;
.super Lcom/yandex/mobile/ads/network/core/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/network/request/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/yandex/mobile/ads/network/core/q",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final a:I


# instance fields
.field private final b:Lcom/yandex/mobile/ads/network/request/c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/network/request/c$a",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 22
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/yandex/mobile/ads/network/request/c;->a:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/yandex/mobile/ads/network/request/c$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/yandex/mobile/ads/network/request/c$a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/mobile/ads/network/core/q;-><init>(ILjava/lang/String;Lcom/yandex/mobile/ads/network/core/s$a;)V

    .line 28
    invoke-virtual {p0, v3}, Lcom/yandex/mobile/ads/network/request/c;->a(Z)Lcom/yandex/mobile/ads/network/core/q;

    .line 29
    new-instance v0, Lcom/yandex/mobile/ads/network/core/e;

    sget v1, Lcom/yandex/mobile/ads/network/request/c;->a:I

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v3, v2}, Lcom/yandex/mobile/ads/network/core/e;-><init>(IIF)V

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/network/request/c;->a(Lcom/yandex/mobile/ads/network/core/u;)Lcom/yandex/mobile/ads/network/core/q;

    .line 32
    iput-object p3, p0, Lcom/yandex/mobile/ads/network/request/c;->b:Lcom/yandex/mobile/ads/network/request/c$a;

    .line 33
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yandex/mobile/ads/network/request/c;->b:Lcom/yandex/mobile/ads/network/request/c$a;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/yandex/mobile/ads/network/request/c;->b:Lcom/yandex/mobile/ads/network/request/c$a;

    invoke-interface {v0, p1}, Lcom/yandex/mobile/ads/network/request/c$a;->a(Ljava/lang/Object;)V

    .line 40
    :cond_0
    return-void
.end method
