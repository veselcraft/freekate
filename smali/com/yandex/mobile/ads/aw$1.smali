.class Lcom/yandex/mobile/ads/aw$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/as$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/aw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/aw;


# direct methods
.method constructor <init>(Lcom/yandex/mobile/ads/aw;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/yandex/mobile/ads/aw$1;->a:Lcom/yandex/mobile/ads/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/yandex/mobile/ads/ax;
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/yandex/mobile/ads/aw$1;->a:Lcom/yandex/mobile/ads/aw;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/aw;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    sget-object v0, Lcom/yandex/mobile/ads/ax$a;->c:Lcom/yandex/mobile/ads/ax$a;

    .line 169
    :goto_0
    new-instance v1, Lcom/yandex/mobile/ads/ax;

    invoke-direct {v1, v0}, Lcom/yandex/mobile/ads/ax;-><init>(Lcom/yandex/mobile/ads/ax$a;)V

    return-object v1

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/aw$1;->a:Lcom/yandex/mobile/ads/aw;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/aw;->m()Z

    move-result v0

    if-nez v0, :cond_1

    .line 156
    sget-object v0, Lcom/yandex/mobile/ads/ax$a;->b:Lcom/yandex/mobile/ads/ax$a;

    goto :goto_0

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/yandex/mobile/ads/aw$1;->a:Lcom/yandex/mobile/ads/aw;

    invoke-static {v0}, Lcom/yandex/mobile/ads/aw;->a(Lcom/yandex/mobile/ads/aw;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 159
    sget-object v0, Lcom/yandex/mobile/ads/ax$a;->l:Lcom/yandex/mobile/ads/ax$a;

    goto :goto_0

    .line 161
    :cond_2
    iget-object v0, p0, Lcom/yandex/mobile/ads/aw$1;->a:Lcom/yandex/mobile/ads/aw;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/aw;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yandex/mobile/ads/aw$1;->a:Lcom/yandex/mobile/ads/aw;

    .line 162
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/aw;->f()Z

    move-result v0

    if-nez v0, :cond_4

    .line 164
    :cond_3
    sget-object v0, Lcom/yandex/mobile/ads/ax$a;->i:Lcom/yandex/mobile/ads/ax$a;

    goto :goto_0

    .line 166
    :cond_4
    sget-object v0, Lcom/yandex/mobile/ads/ax$a;->a:Lcom/yandex/mobile/ads/ax$a;

    goto :goto_0
.end method
