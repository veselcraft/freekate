.class public abstract Lcom/yandex/mobile/ads/nativeads/ao;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/nativeads/ao$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/yandex/mobile/ads/nativeads/at;

.field private final c:Lcom/yandex/mobile/ads/nativeads/ap;

.field private final d:Lcom/yandex/mobile/ads/nativeads/as;

.field private final e:Lcom/yandex/mobile/ads/nativeads/au;

.field private final f:Lcom/yandex/mobile/ads/as;

.field private final g:Lcom/yandex/mobile/ads/PhoneStateTracker;

.field private final h:Lcom/yandex/mobile/ads/PhoneStateTracker$b;

.field private final i:Lcom/yandex/mobile/ads/as$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/nativeads/d;)V
    .locals 5

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    new-instance v0, Lcom/yandex/mobile/ads/nativeads/ao$1;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/nativeads/ao$1;-><init>(Lcom/yandex/mobile/ads/nativeads/ao;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ao;->h:Lcom/yandex/mobile/ads/PhoneStateTracker$b;

    .line 212
    new-instance v0, Lcom/yandex/mobile/ads/nativeads/ao$2;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/nativeads/ao$2;-><init>(Lcom/yandex/mobile/ads/nativeads/ao;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ao;->i:Lcom/yandex/mobile/ads/as$c;

    .line 221
    new-instance v0, Lcom/yandex/mobile/ads/nativeads/ao$3;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/nativeads/ao$3;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/ao;->a:Landroid/content/Context;

    .line 49
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/nativeads/d;->c()Lcom/yandex/mobile/ads/nativeads/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ao;->c:Lcom/yandex/mobile/ads/nativeads/ap;

    .line 50
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/nativeads/d;->d()Lcom/yandex/mobile/ads/nativeads/as;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ao;->d:Lcom/yandex/mobile/ads/nativeads/as;

    .line 51
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/nativeads/d;->a()Lcom/yandex/mobile/ads/nativeads/au;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ao;->e:Lcom/yandex/mobile/ads/nativeads/au;

    .line 53
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ao;->c:Lcom/yandex/mobile/ads/nativeads/ap;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/ap;->a()Lcom/yandex/mobile/ads/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/e;->f()Ljava/lang/String;

    move-result-object v0

    .line 55
    new-instance v1, Lcom/yandex/mobile/ads/as;

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/ao;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/yandex/mobile/ads/nativeads/ao;->i:Lcom/yandex/mobile/ads/as$c;

    invoke-static {p0}, Lcom/yandex/mobile/ads/s;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/yandex/mobile/ads/as;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/as$c;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/yandex/mobile/ads/nativeads/ao;->f:Lcom/yandex/mobile/ads/as;

    .line 56
    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/ao;->f:Lcom/yandex/mobile/ads/as;

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/ao;->e:Lcom/yandex/mobile/ads/nativeads/au;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/nativeads/au;->b()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/yandex/mobile/ads/as;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 58
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/nativeads/d;->b()Lcom/yandex/mobile/ads/nativeads/at;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/mobile/ads/nativeads/ao;->b:Lcom/yandex/mobile/ads/nativeads/at;

    .line 59
    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/ao;->b:Lcom/yandex/mobile/ads/nativeads/at;

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/ao;->f:Lcom/yandex/mobile/ads/as;

    iput-object v2, v1, Lcom/yandex/mobile/ads/nativeads/at;->a:Lcom/yandex/mobile/ads/as;

    .line 61
    invoke-static {}, Lcom/yandex/mobile/ads/PhoneStateTracker;->a()Lcom/yandex/mobile/ads/PhoneStateTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/mobile/ads/nativeads/ao;->g:Lcom/yandex/mobile/ads/PhoneStateTracker;

    .line 63
    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/ao;->e:Lcom/yandex/mobile/ads/nativeads/au;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/au;->a()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/yandex/mobile/ads/nativeads/ao;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/ao;->a()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/yandex/mobile/ads/nativeads/ao;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v0, v1}, Lcom/yandex/mobile/ads/nativeads/ao;->a(Ljava/lang/String;Ljava/util/List;)Lcom/yandex/mobile/ads/report/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/ao;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/yandex/mobile/ads/report/a;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/report/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/report/a;->a(Lcom/yandex/mobile/ads/report/b;)V

    .line 64
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/yandex/mobile/ads/nativeads/ao;)Lcom/yandex/mobile/ads/nativeads/as;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ao;->d:Lcom/yandex/mobile/ads/nativeads/as;

    return-object v0
.end method

.method static synthetic b(Lcom/yandex/mobile/ads/nativeads/ao;)Lcom/yandex/mobile/ads/as;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ao;->f:Lcom/yandex/mobile/ads/as;

    return-object v0
.end method

.method static synthetic c(Lcom/yandex/mobile/ads/nativeads/ao;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ao;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/yandex/mobile/ads/nativeads/ao;)Lcom/yandex/mobile/ads/PhoneStateTracker;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ao;->g:Lcom/yandex/mobile/ads/PhoneStateTracker;

    return-object v0
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/util/List;)Lcom/yandex/mobile/ads/report/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/yandex/mobile/ads/report/b;"
        }
    .end annotation

    .prologue
    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 120
    const-string v1, "block_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v1, "assets"

    invoke-interface {p2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    new-instance v1, Lcom/yandex/mobile/ads/report/b;

    sget-object v2, Lcom/yandex/mobile/ads/report/b$b;->l:Lcom/yandex/mobile/ads/report/b$b;

    invoke-direct {v1, v2, v0}, Lcom/yandex/mobile/ads/report/b;-><init>(Lcom/yandex/mobile/ads/report/b$b;Ljava/util/Map;)V

    return-object v1
.end method

.method protected abstract a()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method a(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yandex/mobile/ads/nativeads/c;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 98
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/nativeads/c;

    .line 99
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 102
    :cond_0
    return-object v1
.end method

.method a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    invoke-interface {p2, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 109
    return-object p2
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onVisibilityChanged(), visibility = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", clazz = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/yandex/mobile/ads/s;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    if-nez p1, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/ao;->b()V

    .line 148
    :goto_0
    return-void

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/ao;->c()V

    goto :goto_0
.end method

.method a(Lcom/yandex/mobile/ads/nativeads/ac;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/nativeads/NativeAdException;
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ao;->d:Lcom/yandex/mobile/ads/nativeads/as;

    invoke-interface {v0, p1}, Lcom/yandex/mobile/ads/nativeads/as;->a(Lcom/yandex/mobile/ads/nativeads/ac;)V

    .line 68
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ao;->d:Lcom/yandex/mobile/ads/nativeads/as;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/nativeads/as;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ao;->b:Lcom/yandex/mobile/ads/nativeads/at;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/nativeads/at;->a(Lcom/yandex/mobile/ads/nativeads/ac;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "renderAdView(), BIND, clazz = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/yandex/mobile/ads/s;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/ao;->b()V

    return-void

    .line 71
    :cond_0
    new-instance v0, Lcom/yandex/mobile/ads/nativeads/NativeAdException;

    const-string v1, "Resource for required view is not present"

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/nativeads/NativeAdException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method a(Lcom/yandex/mobile/ads/report/b$a;)V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ao;->c:Lcom/yandex/mobile/ads/nativeads/ap;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/nativeads/ap;->a(Lcom/yandex/mobile/ads/report/b$a;)V

    .line 188
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ao;->f:Lcom/yandex/mobile/ads/as;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/as;->a(Lcom/yandex/mobile/ads/report/b$a;)V

    .line 189
    return-void
.end method

.method b()V
    .locals 3

    .prologue
    .line 127
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ao;->d:Lcom/yandex/mobile/ads/nativeads/as;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/nativeads/as;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 128
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "registerTrackers(), isNativeAdViewShown = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", clazz = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/yandex/mobile/ads/s;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ao;->f:Lcom/yandex/mobile/ads/as;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/as;->a()V

    .line 130
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ao;->g:Lcom/yandex/mobile/ads/PhoneStateTracker;

    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/ao;->h:Lcom/yandex/mobile/ads/PhoneStateTracker$b;

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/ao;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/yandex/mobile/ads/PhoneStateTracker;->a(Lcom/yandex/mobile/ads/PhoneStateTracker$b;Landroid/content/Context;)V

    .line 131
    return-void

    .line 127
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c()V
    .locals 3

    .prologue
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unregisterTrackers(), clazz = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/yandex/mobile/ads/s;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ao;->f:Lcom/yandex/mobile/ads/as;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/as;->b()V

    .line 136
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ao;->g:Lcom/yandex/mobile/ads/PhoneStateTracker;

    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/ao;->h:Lcom/yandex/mobile/ads/PhoneStateTracker$b;

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/ao;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/yandex/mobile/ads/PhoneStateTracker;->b(Lcom/yandex/mobile/ads/PhoneStateTracker$b;Landroid/content/Context;)V

    .line 137
    return-void
.end method

.method d()V
    .locals 1

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/ao;->c()V

    .line 174
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ao;->c:Lcom/yandex/mobile/ads/nativeads/ap;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/ap;->b()V

    .line 175
    return-void
.end method

.method e()Lcom/yandex/mobile/ads/nativeads/as;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ao;->d:Lcom/yandex/mobile/ads/nativeads/as;

    return-object v0
.end method

.method public f()Lcom/yandex/mobile/ads/nativeads/au;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ao;->e:Lcom/yandex/mobile/ads/nativeads/au;

    return-object v0
.end method

.method public setAdEventListener(Lcom/yandex/mobile/ads/nativeads/NativeAdEventListener;)V
    .locals 1
    .param p1, "eventListener"    # Lcom/yandex/mobile/ads/nativeads/NativeAdEventListener;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ao;->c:Lcom/yandex/mobile/ads/nativeads/ap;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/nativeads/ap;->setAdEventListener(Lcom/yandex/mobile/ads/nativeads/NativeAdEventListener;)V

    .line 158
    return-void
.end method

.method public shouldOpenLinksInApp(Z)V
    .locals 1
    .param p1, "shouldOpenLinksInApp"    # Z

    .prologue
    .line 169
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ao;->c:Lcom/yandex/mobile/ads/nativeads/ap;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/nativeads/ap;->shouldOpenLinksInApp(Z)V

    .line 170
    return-void
.end method
