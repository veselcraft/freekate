.class public Lcom/yandex/mobile/ads/ax;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/ax$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/ax$a;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/ax$a;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/yandex/mobile/ads/ax;->a:Lcom/yandex/mobile/ads/ax$a;

    .line 22
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/yandex/mobile/ads/ax;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/yandex/mobile/ads/ax;->b:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public b()Lcom/yandex/mobile/ads/ax$a;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/yandex/mobile/ads/ax;->a:Lcom/yandex/mobile/ads/ax$a;

    return-object v0
.end method

.method public c()Lcom/yandex/mobile/ads/report/b$b;
    .locals 2

    .prologue
    .line 37
    sget-object v0, Lcom/yandex/mobile/ads/ax$a;->a:Lcom/yandex/mobile/ads/ax$a;

    iget-object v1, p0, Lcom/yandex/mobile/ads/ax;->a:Lcom/yandex/mobile/ads/ax$a;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/yandex/mobile/ads/report/b$b;->g:Lcom/yandex/mobile/ads/report/b$b;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/yandex/mobile/ads/report/b$b;->h:Lcom/yandex/mobile/ads/report/b$b;

    goto :goto_0
.end method
