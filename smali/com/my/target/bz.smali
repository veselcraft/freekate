.class public Lcom/my/target/bz;
.super Ljava/lang/Object;
.source "AdService.java"


# instance fields
.field private allowCloseDelay:F

.field private final cH:Ljava/util/ArrayList;

.field private final cI:Ljava/util/ArrayList;

.field private final cJ:Lcom/my/target/di;

.field private cK:Ljava/util/ArrayList;

.field private cL:Lcom/my/target/bz;

.field private cM:Ljava/lang/String;

.field private cN:I

.field private cO:I

.field private cQ:Z

.field private cR:Z

.field private cS:Ljava/lang/Boolean;

.field private cT:Ljava/lang/Boolean;

.field private cU:Ljava/lang/Boolean;

.field private cV:Ljava/lang/Boolean;

.field private cW:Ljava/lang/Boolean;

.field private cX:Ljava/lang/Boolean;

.field private cY:Ljava/lang/Boolean;

.field private companionBanners:Ljava/util/ArrayList;

.field private ctaText:Ljava/lang/String;

.field private id:I

.field private point:F

.field private pointP:F

.field private position:I

.field private final url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/my/target/bz;->cH:Ljava/util/ArrayList;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/my/target/bz;->cI:Ljava/util/ArrayList;

    .line 29
    invoke-static {}, Lcom/my/target/di;->cw()Lcom/my/target/di;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/bz;->cJ:Lcom/my/target/di;

    const/4 v0, -0x1

    .line 37
    iput v0, p0, Lcom/my/target/bz;->id:I

    .line 38
    iput v0, p0, Lcom/my/target/bz;->position:I

    .line 39
    iput v0, p0, Lcom/my/target/bz;->cO:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 40
    iput v0, p0, Lcom/my/target/bz;->point:F

    .line 41
    iput v0, p0, Lcom/my/target/bz;->pointP:F

    .line 45
    iput v0, p0, Lcom/my/target/bz;->allowCloseDelay:F

    .line 56
    iput-object p1, p0, Lcom/my/target/bz;->url:Ljava/lang/String;

    return-void
.end method

.method public static q(Ljava/lang/String;)Lcom/my/target/bz;
    .locals 1

    .line 23
    new-instance v0, Lcom/my/target/bz;

    invoke-direct {v0, p0}, Lcom/my/target/bz;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/my/target/bz;)V
    .locals 1

    .line 91
    iput-object p1, p0, Lcom/my/target/bz;->cL:Lcom/my/target/bz;

    if-eqz p1, :cond_0

    .line 94
    iget v0, p0, Lcom/my/target/bz;->position:I

    invoke-virtual {p1, v0}, Lcom/my/target/bz;->setPosition(I)V

    :cond_0
    return-void
.end method

.method public a(Lcom/my/target/dh;)V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/my/target/bz;->cI:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/my/target/bz;->cS:Ljava/lang/Boolean;

    return-void
.end method

.method public aZ()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/my/target/bz;->cQ:Z

    return v0
.end method

.method public b(Lcom/my/target/bz;)V
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/my/target/bz;->cH:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Ljava/lang/Boolean;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/my/target/bz;->cT:Ljava/lang/Boolean;

    return-void
.end method

.method public b(Ljava/util/ArrayList;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/my/target/bz;->companionBanners:Ljava/util/ArrayList;

    return-void
.end method

.method public ba()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/my/target/bz;->cO:I

    return v0
.end method

.method public bb()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lcom/my/target/bz;->cR:Z

    return v0
.end method

.method public bc()Lcom/my/target/bz;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/my/target/bz;->cL:Lcom/my/target/bz;

    return-object v0
.end method

.method public be()Ljava/util/ArrayList;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/my/target/bz;->cH:Ljava/util/ArrayList;

    return-object v0
.end method

.method public bf()Ljava/util/ArrayList;
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/my/target/bz;->cK:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/my/target/bz;->cK:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bg()I
    .locals 1

    .line 167
    iget v0, p0, Lcom/my/target/bz;->cN:I

    return v0
.end method

.method public bh()Ljava/lang/String;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/my/target/bz;->cM:Ljava/lang/String;

    return-object v0
.end method

.method public bi()Ljava/lang/Boolean;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/my/target/bz;->cS:Ljava/lang/Boolean;

    return-object v0
.end method

.method public bj()Ljava/lang/Boolean;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/my/target/bz;->cT:Ljava/lang/Boolean;

    return-object v0
.end method

.method public bk()Ljava/lang/Boolean;
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/my/target/bz;->cU:Ljava/lang/Boolean;

    return-object v0
.end method

.method public bl()Ljava/lang/Boolean;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/my/target/bz;->cV:Ljava/lang/Boolean;

    return-object v0
.end method

.method public bm()Ljava/lang/Boolean;
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/my/target/bz;->cW:Ljava/lang/Boolean;

    return-object v0
.end method

.method public bn()Lcom/my/target/di;
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/my/target/bz;->cJ:Lcom/my/target/di;

    return-object v0
.end method

.method public bo()Ljava/lang/Boolean;
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/my/target/bz;->cX:Ljava/lang/Boolean;

    return-object v0
.end method

.method public bp()Ljava/lang/Boolean;
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/my/target/bz;->cY:Ljava/lang/Boolean;

    return-object v0
.end method

.method public c(Ljava/lang/Boolean;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/my/target/bz;->cU:Ljava/lang/Boolean;

    return-void
.end method

.method public c(Ljava/util/ArrayList;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/my/target/bz;->cK:Ljava/util/ArrayList;

    return-void
.end method

.method public d(Ljava/lang/Boolean;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/my/target/bz;->cV:Ljava/lang/Boolean;

    return-void
.end method

.method public d(Ljava/util/ArrayList;)V
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/my/target/bz;->cK:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 238
    iput-object p1, p0, Lcom/my/target/bz;->cK:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 244
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public e(Ljava/lang/Boolean;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lcom/my/target/bz;->cW:Ljava/lang/Boolean;

    return-void
.end method

.method public f(I)V
    .locals 0

    .line 172
    iput p1, p0, Lcom/my/target/bz;->cN:I

    return-void
.end method

.method public f(Ljava/lang/Boolean;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/my/target/bz;->cX:Ljava/lang/Boolean;

    return-void
.end method

.method public g(I)V
    .locals 0

    .line 221
    iput p1, p0, Lcom/my/target/bz;->cO:I

    return-void
.end method

.method public g(Ljava/lang/Boolean;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lcom/my/target/bz;->cY:Ljava/lang/Boolean;

    return-void
.end method

.method public getAllowCloseDelay()F
    .locals 1

    .line 261
    iget v0, p0, Lcom/my/target/bz;->allowCloseDelay:F

    return v0
.end method

.method public getCompanionBanners()Ljava/util/ArrayList;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/my/target/bz;->companionBanners:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCtaText()Ljava/lang/String;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/my/target/bz;->ctaText:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/my/target/bz;->id:I

    return v0
.end method

.method public getPoint()F
    .locals 1

    .line 177
    iget v0, p0, Lcom/my/target/bz;->point:F

    return v0
.end method

.method public getPointP()F
    .locals 1

    .line 187
    iget v0, p0, Lcom/my/target/bz;->pointP:F

    return v0
.end method

.method public getPosition()I
    .locals 1

    .line 197
    iget v0, p0, Lcom/my/target/bz;->position:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/my/target/bz;->url:Ljava/lang/String;

    return-object v0
.end method

.method public m(Z)V
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/my/target/bz;->cQ:Z

    return-void
.end method

.method public o(Z)V
    .locals 0

    .line 226
    iput-boolean p1, p0, Lcom/my/target/bz;->cR:Z

    return-void
.end method

.method public r(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 131
    iget-object v1, p0, Lcom/my/target/bz;->cI:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/my/target/dh;

    .line 133
    invoke-virtual {v2}, Lcom/my/target/dh;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 135
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public s(Ljava/lang/String;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/my/target/bz;->cM:Ljava/lang/String;

    return-void
.end method

.method public setAllowCloseDelay(F)V
    .locals 0

    .line 266
    iput p1, p0, Lcom/my/target/bz;->allowCloseDelay:F

    return-void
.end method

.method public setCtaText(Ljava/lang/String;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/my/target/bz;->ctaText:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 86
    iput p1, p0, Lcom/my/target/bz;->id:I

    return-void
.end method

.method public setPoint(F)V
    .locals 0

    .line 182
    iput p1, p0, Lcom/my/target/bz;->point:F

    return-void
.end method

.method public setPointP(F)V
    .locals 0

    .line 192
    iput p1, p0, Lcom/my/target/bz;->pointP:F

    return-void
.end method

.method public setPosition(I)V
    .locals 1

    .line 202
    iput p1, p0, Lcom/my/target/bz;->position:I

    .line 203
    iget-object v0, p0, Lcom/my/target/bz;->cL:Lcom/my/target/bz;

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v0, p1}, Lcom/my/target/bz;->setPosition(I)V

    :cond_0
    return-void
.end method
