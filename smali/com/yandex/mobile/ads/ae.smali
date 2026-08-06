.class public Lcom/yandex/mobile/ads/ae;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/ae$b;,
        Lcom/yandex/mobile/ads/ae$a;
    }
.end annotation


# instance fields
.field private final A:Ljava/lang/Long;

.field private final B:Ljava/lang/String;

.field private final C:Ljava/lang/String;

.field private final D:Ljava/lang/String;

.field private final E:Ljava/lang/String;

.field private final F:Ljava/lang/String;

.field private final G:Ljava/lang/String;

.field private final H:Ljava/lang/String;

.field private final I:Ljava/lang/String;

.field private J:Ljava/lang/StringBuilder;

.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/Integer;

.field private final e:Ljava/lang/Integer;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/Integer;

.field private final h:Ljava/lang/Integer;

.field private final i:Ljava/lang/Float;

.field private final j:Landroid/location/Location;

.field private final k:Ljava/lang/Integer;

.field private final l:Ljava/lang/Integer;

.field private final m:Ljava/lang/String;

.field private final n:Ljava/lang/String;

.field private final o:Lcom/yandex/mobile/ads/AdRequest;

.field private final p:Ljava/lang/Integer;

.field private final q:Ljava/lang/Integer;

.field private final r:Ljava/lang/String;

.field private final s:Ljava/lang/Boolean;

.field private final t:Ljava/lang/String;

.field private final u:Ljava/lang/Integer;

.field private final v:Ljava/lang/String;

.field private final w:Ljava/lang/String;

.field private final x:Ljava/lang/String;

.field private final y:Ljava/lang/String;

.field private final z:Ljava/util/Map;
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


# direct methods
.method constructor <init>(Lcom/yandex/mobile/ads/ae$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/ae$a",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    invoke-static {p1}, Lcom/yandex/mobile/ads/ae$a;->a(Lcom/yandex/mobile/ads/ae$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/ae;->a:Ljava/lang/String;

    .line 125
    invoke-static {p1}, Lcom/yandex/mobile/ads/ae$a;->b(Lcom/yandex/mobile/ads/ae$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/ae;->b:Ljava/lang/String;

    .line 126
    invoke-static {p1}, Lcom/yandex/mobile/ads/ae$a;->c(Lcom/yandex/mobile/ads/ae$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/ae;->c:Ljava/lang/String;

    .line 127
    invoke-static {p1}, Lcom/yandex/mobile/ads/ae$a;->d(Lcom/yandex/mobile/ads/ae$a;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/ae;->d:Ljava/lang/Integer;

    .line 128
    invoke-static {p1}, Lcom/yandex/mobile/ads/ae$a;->e(Lcom/yandex/mobile/ads/ae$a;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/ae;->e:Ljava/lang/Integer;

    .line 129
    invoke-static {p1}, Lcom/yandex/mobile/ads/ae$a;->f(Lcom/yandex/mobile/ads/ae$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/ae;->f:Ljava/lang/String;

    .line 130
    invoke-static {p1}, Lcom/yandex/mobile/ads/ae$a;->g(Lcom/yandex/mobile/ads/ae$a;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/ae;->g:Ljava/lang/Integer;

    .line 131
    invoke-static {p1}, Lcom/yandex/mobile/ads/ae$a;->h(Lcom/yandex/mobile/ads/ae$a;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/ae;->h:Ljava/lang/Integer;

    .line 132
    invoke-static {p1}, Lcom/yandex/mobile/ads/ae$a;->i(Lcom/yandex/mobile/ads/ae$a;)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/ae;->i:Ljava/lang/Float;

    .line 133
    invoke-static {p1}, Lcom/yandex/mobile/ads/ae$a;->j(Lcom/yandex/mobile/ads/ae$a;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/ae;->j:Landroid/location/Location;

    .line 134
    invoke-static {p1}, Lcom/yandex/mobile/ads/ae$a;->k(Lcom/yandex/mobile/ads/ae$a;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/ae;->k:Ljava/lang/Integer;

    .line 135
    invoke-static {p1}, Lcom/yandex/mobile/ads/ae$a;->l(Lcom/yandex/mobile/ads/ae$a;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/ae;->l:Ljava/lang/Integer;

    .line 136
    invoke-static {p1}, Lcom/yandex/mobile/ads/ae$a;->m(Lcom/yandex/mobile/ads/ae$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/ae;->m:Ljava/lang/String;

    .line 137
    invoke-static {p1}, Lcom/yandex/mobile/ads/ae$a;->n(Lcom/yandex/mobile/ads/ae$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/ae;->n:Ljava/lang/String;

    .line 138
    invoke-static {p1}, Lcom/yandex/mobile/ads/ae$a;->o(Lcom/yandex/mobile/ads/ae$a;)Lcom/yandex/mobile/ads/AdRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/ae;->o:Lcom/yandex/mobile/ads/AdRequest;

    .line 139
    invoke-static {p1}, Lcom/yandex/mobile/ads/ae$a;->p(Lcom/yandex/mobile/ads/ae$a;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/ae;->p:Ljava/lang/Integer;

    .line 140
    invoke-static {p1}, Lcom/yandex/mobile/ads/ae$a;->q(Lcom/yandex/mobile/ads/ae$a;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/ae;->q:Ljava/lang/Integer;

    .line 141
    invoke-static {p1}, Lcom/yandex/mobile/ads/ae$a;->r(Lcom/yandex/mobile/ads/ae$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/ae;->r:Ljava/lang/String;

    .line 142
    invoke-static {p1}, Lcom/yandex/mobile/ads/ae$a;->s(Lcom/yandex/mobile/ads/ae$a;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/ae;->s:Ljava/lang/Boolean;

    .line 143
    invoke-static {p1}, Lcom/yandex/mobile/ads/ae$a;->t(Lcom/yandex/mobile/ads/ae$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/ae;->t:Ljava/lang/String;

    .line 144
    invoke-static {p1}, Lcom/yandex/mobile/ads/ae$a;->u(Lcom/yandex/mobile/ads/ae$a;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/ae;->u:Ljava/lang/Integer;

    .line 145
    invoke-static {p1}, Lcom/yandex/mobile/ads/ae$a;->v(Lcom/yandex/mobile/ads/ae$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/ae;->v:Ljava/lang/String;

    .line 146
    invoke-static {p1}, Lcom/yandex/mobile/ads/ae$a;->w(Lcom/yandex/mobile/ads/ae$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/ae;->w:Ljava/lang/String;

    .line 147
    invoke-static {p1}, Lcom/yandex/mobile/ads/ae$a;->x(Lcom/yandex/mobile/ads/ae$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/ae;->x:Ljava/lang/String;

    .line 148
    invoke-static {p1}, Lcom/yandex/mobile/ads/ae$a;->y(Lcom/yandex/mobile/ads/ae$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/ae;->y:Ljava/lang/String;

    .line 149
    invoke-static {p1}, Lcom/yandex/mobile/ads/ae$a;->z(Lcom/yandex/mobile/ads/ae$a;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/ae;->z:Ljava/util/Map;

    .line 150
    invoke-static {p1}, Lcom/yandex/mobile/ads/ae$a;->A(Lcom/yandex/mobile/ads/ae$a;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/ae;->A:Ljava/lang/Long;

    .line 151
    invoke-static {p1}, Lcom/yandex/mobile/ads/ae$a;->B(Lcom/yandex/mobile/ads/ae$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/ae;->B:Ljava/lang/String;

    .line 152
    invoke-static {p1}, Lcom/yandex/mobile/ads/ae$a;->C(Lcom/yandex/mobile/ads/ae$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/ae;->C:Ljava/lang/String;

    .line 154
    invoke-static {p1}, Lcom/yandex/mobile/ads/ae$a;->D(Lcom/yandex/mobile/ads/ae$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/ae;->D:Ljava/lang/String;

    .line 155
    invoke-static {p1}, Lcom/yandex/mobile/ads/ae$a;->E(Lcom/yandex/mobile/ads/ae$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/ae;->E:Ljava/lang/String;

    .line 156
    invoke-static {p1}, Lcom/yandex/mobile/ads/ae$a;->F(Lcom/yandex/mobile/ads/ae$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/ae;->F:Ljava/lang/String;

    .line 157
    invoke-static {p1}, Lcom/yandex/mobile/ads/ae$a;->G(Lcom/yandex/mobile/ads/ae$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/ae;->G:Ljava/lang/String;

    .line 158
    invoke-static {p1}, Lcom/yandex/mobile/ads/ae$a;->H(Lcom/yandex/mobile/ads/ae$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/ae;->H:Ljava/lang/String;

    .line 159
    invoke-static {p1}, Lcom/yandex/mobile/ads/ae$a;->I(Lcom/yandex/mobile/ads/ae$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/ae;->I:Ljava/lang/String;

    .line 160
    return-void
.end method

.method private a(Landroid/location/Location;)V
    .locals 4

    .prologue
    .line 506
    if-eqz p1, :cond_0

    .line 507
    const-string v0, "lat"

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/yandex/mobile/ads/ae;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 508
    const-string v0, "lon"

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/yandex/mobile/ads/ae;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 509
    const-string v0, "precision"

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/yandex/mobile/ads/ae;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 511
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 493
    if-eqz p2, :cond_0

    .line 494
    iget-object v1, p0, Lcom/yandex/mobile/ads/ae;->J:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/yandex/mobile/ads/ae;->J:Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    iget-object v0, p0, Lcom/yandex/mobile/ads/ae;->J:Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    :cond_0
    return-void

    .line 494
    :cond_1
    const-string v0, "&"

    goto :goto_0
.end method

.method private a(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 485
    if-eqz p1, :cond_0

    .line 486
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 487
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/yandex/mobile/ads/ae;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 490
    :cond_0
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 431
    iget-object v0, p0, Lcom/yandex/mobile/ads/ae;->J:Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/yandex/mobile/ads/ae;->J:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 481
    :goto_0
    return-object v0

    .line 435
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/ae;->J:Ljava/lang/StringBuilder;

    .line 436
    const-string v0, "ad_unit_id"

    iget-object v1, p0, Lcom/yandex/mobile/ads/ae;->a:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/yandex/mobile/ads/ae;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 437
    const-string v0, "uuid"

    iget-object v1, p0, Lcom/yandex/mobile/ads/ae;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/yandex/mobile/ads/ae;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 438
    const-string v0, "width"

    iget-object v1, p0, Lcom/yandex/mobile/ads/ae;->d:Ljava/lang/Integer;

    invoke-direct {p0, v0, v1}, Lcom/yandex/mobile/ads/ae;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 439
    const-string v0, "height"

    iget-object v1, p0, Lcom/yandex/mobile/ads/ae;->e:Ljava/lang/Integer;

    invoke-direct {p0, v0, v1}, Lcom/yandex/mobile/ads/ae;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 440
    const-string v0, "orientation"

    iget-object v1, p0, Lcom/yandex/mobile/ads/ae;->f:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/yandex/mobile/ads/ae;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 441
    const-string v0, "screen_width"

    iget-object v1, p0, Lcom/yandex/mobile/ads/ae;->g:Ljava/lang/Integer;

    invoke-direct {p0, v0, v1}, Lcom/yandex/mobile/ads/ae;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 442
    const-string v0, "screen_height"

    iget-object v1, p0, Lcom/yandex/mobile/ads/ae;->h:Ljava/lang/Integer;

    invoke-direct {p0, v0, v1}, Lcom/yandex/mobile/ads/ae;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 443
    const-string v0, "scalefactor"

    iget-object v1, p0, Lcom/yandex/mobile/ads/ae;->i:Ljava/lang/Float;

    invoke-direct {p0, v0, v1}, Lcom/yandex/mobile/ads/ae;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 444
    const-string v0, "mcc"

    iget-object v1, p0, Lcom/yandex/mobile/ads/ae;->k:Ljava/lang/Integer;

    invoke-direct {p0, v0, v1}, Lcom/yandex/mobile/ads/ae;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 445
    const-string v0, "mnc"

    iget-object v1, p0, Lcom/yandex/mobile/ads/ae;->l:Ljava/lang/Integer;

    invoke-direct {p0, v0, v1}, Lcom/yandex/mobile/ads/ae;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 446
    const-string v0, "ad_type"

    iget-object v1, p0, Lcom/yandex/mobile/ads/ae;->c:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/yandex/mobile/ads/ae;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 447
    const-string v0, "network_type"

    iget-object v1, p0, Lcom/yandex/mobile/ads/ae;->m:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/yandex/mobile/ads/ae;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 448
    const-string v0, "carrier"

    iget-object v1, p0, Lcom/yandex/mobile/ads/ae;->n:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/yandex/mobile/ads/ae;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 449
    const-string v0, "cellid"

    iget-object v1, p0, Lcom/yandex/mobile/ads/ae;->p:Ljava/lang/Integer;

    invoke-direct {p0, v0, v1}, Lcom/yandex/mobile/ads/ae;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 450
    const-string v0, "lac"

    iget-object v1, p0, Lcom/yandex/mobile/ads/ae;->q:Ljava/lang/Integer;

    invoke-direct {p0, v0, v1}, Lcom/yandex/mobile/ads/ae;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 451
    const-string v0, "wifi"

    iget-object v1, p0, Lcom/yandex/mobile/ads/ae;->r:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/yandex/mobile/ads/ae;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 452
    const-string v1, "dnt"

    iget-object v0, p0, Lcom/yandex/mobile/ads/ae;->s:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/yandex/mobile/ads/ae;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 453
    :cond_1
    const-string v0, "google_aid"

    iget-object v1, p0, Lcom/yandex/mobile/ads/ae;->t:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/yandex/mobile/ads/ae;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 454
    const-string v0, "battery_charge"

    iget-object v1, p0, Lcom/yandex/mobile/ads/ae;->u:Ljava/lang/Integer;

    invoke-direct {p0, v0, v1}, Lcom/yandex/mobile/ads/ae;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 455
    const-string v0, "context_query"

    iget-object v1, p0, Lcom/yandex/mobile/ads/ae;->v:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/yandex/mobile/ads/ae;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 456
    const-string v0, "context_taglist"

    iget-object v1, p0, Lcom/yandex/mobile/ads/ae;->w:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/yandex/mobile/ads/ae;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 457
    const-string v0, "image_sizes"

    iget-object v1, p0, Lcom/yandex/mobile/ads/ae;->x:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/yandex/mobile/ads/ae;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 458
    const-string v0, "response_ad_format"

    iget-object v1, p0, Lcom/yandex/mobile/ads/ae;->y:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/yandex/mobile/ads/ae;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 459
    const-string v0, "debug_yandexuid"

    iget-object v1, p0, Lcom/yandex/mobile/ads/ae;->C:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/yandex/mobile/ads/ae;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 460
    const-string v0, "session_random"

    iget-object v1, p0, Lcom/yandex/mobile/ads/ae;->A:Ljava/lang/Long;

    invoke-direct {p0, v0, v1}, Lcom/yandex/mobile/ads/ae;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 461
    const-string v0, "charset"

    iget-object v1, p0, Lcom/yandex/mobile/ads/ae;->B:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/yandex/mobile/ads/ae;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 463
    const-string v0, "device_type"

    iget-object v1, p0, Lcom/yandex/mobile/ads/ae;->D:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/yandex/mobile/ads/ae;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 464
    const-string v0, "os_name"

    iget-object v1, p0, Lcom/yandex/mobile/ads/ae;->E:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/yandex/mobile/ads/ae;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 465
    const-string v0, "os_version"

    iget-object v1, p0, Lcom/yandex/mobile/ads/ae;->F:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/yandex/mobile/ads/ae;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 466
    const-string v0, "manufacturer"

    iget-object v1, p0, Lcom/yandex/mobile/ads/ae;->G:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/yandex/mobile/ads/ae;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 467
    const-string v0, "model"

    iget-object v1, p0, Lcom/yandex/mobile/ads/ae;->H:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/yandex/mobile/ads/ae;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 468
    const-string v0, "locale"

    iget-object v1, p0, Lcom/yandex/mobile/ads/ae;->I:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/yandex/mobile/ads/ae;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 470
    iget-object v0, p0, Lcom/yandex/mobile/ads/ae;->z:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/ae;->a(Ljava/util/Map;)V

    .line 475
    iget-object v0, p0, Lcom/yandex/mobile/ads/ae;->o:Lcom/yandex/mobile/ads/AdRequest;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/yandex/mobile/ads/AdRequest;->c:Landroid/location/Location;

    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/ae;->a(Landroid/location/Location;)V

    .line 477
    :cond_2
    iget-object v0, p0, Lcom/yandex/mobile/ads/ae;->o:Lcom/yandex/mobile/ads/AdRequest;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yandex/mobile/ads/ae;->o:Lcom/yandex/mobile/ads/AdRequest;

    iget-object v0, v0, Lcom/yandex/mobile/ads/AdRequest;->c:Landroid/location/Location;

    if-nez v0, :cond_4

    .line 478
    :cond_3
    iget-object v0, p0, Lcom/yandex/mobile/ads/ae;->j:Landroid/location/Location;

    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/ae;->a(Landroid/location/Location;)V

    .line 481
    :cond_4
    iget-object v0, p0, Lcom/yandex/mobile/ads/ae;->J:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 452
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_1
.end method
