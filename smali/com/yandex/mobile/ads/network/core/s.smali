.class public Lcom/yandex/mobile/ads/network/core/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/network/core/s$a;,
        Lcom/yandex/mobile/ads/network/core/s$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final b:Lcom/yandex/mobile/ads/network/core/c$a;

.field public final c:Lcom/yandex/mobile/ads/network/core/error/h;

.field public d:Z


# direct methods
.method private constructor <init>(Lcom/yandex/mobile/ads/network/core/error/h;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/network/core/s;->d:Z

    .line 83
    iput-object v1, p0, Lcom/yandex/mobile/ads/network/core/s;->a:Ljava/lang/Object;

    .line 84
    iput-object v1, p0, Lcom/yandex/mobile/ads/network/core/s;->b:Lcom/yandex/mobile/ads/network/core/c$a;

    .line 85
    iput-object p1, p0, Lcom/yandex/mobile/ads/network/core/s;->c:Lcom/yandex/mobile/ads/network/core/error/h;

    .line 86
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lcom/yandex/mobile/ads/network/core/c$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/yandex/mobile/ads/network/core/c$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/network/core/s;->d:Z

    .line 77
    iput-object p1, p0, Lcom/yandex/mobile/ads/network/core/s;->a:Ljava/lang/Object;

    .line 78
    iput-object p2, p0, Lcom/yandex/mobile/ads/network/core/s;->b:Lcom/yandex/mobile/ads/network/core/c$a;

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yandex/mobile/ads/network/core/s;->c:Lcom/yandex/mobile/ads/network/core/error/h;

    .line 80
    return-void
.end method

.method public static a(Lcom/yandex/mobile/ads/network/core/error/h;)Lcom/yandex/mobile/ads/network/core/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/yandex/mobile/ads/network/core/error/h;",
            ")",
            "Lcom/yandex/mobile/ads/network/core/s",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 53
    new-instance v0, Lcom/yandex/mobile/ads/network/core/s;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/network/core/s;-><init>(Lcom/yandex/mobile/ads/network/core/error/h;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Lcom/yandex/mobile/ads/network/core/c$a;)Lcom/yandex/mobile/ads/network/core/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/yandex/mobile/ads/network/core/c$a;",
            ")",
            "Lcom/yandex/mobile/ads/network/core/s",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Lcom/yandex/mobile/ads/network/core/s;

    invoke-direct {v0, p0, p1}, Lcom/yandex/mobile/ads/network/core/s;-><init>(Ljava/lang/Object;Lcom/yandex/mobile/ads/network/core/c$a;)V

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/yandex/mobile/ads/network/core/s;->c:Lcom/yandex/mobile/ads/network/core/error/h;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
