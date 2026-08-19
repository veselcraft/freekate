.class public Lcom/my/target/aj;
.super Ljava/lang/Object;
.source "InstreamAdAudioController.java"


# instance fields
.field private final A:Lcom/my/target/aj$c;

.field private final B:Ljava/util/Stack;

.field private final C:Lcom/my/target/iq;

.field private D:Lcom/my/target/aj$b;

.field private E:Lcom/my/target/co;

.field private F:I

.field private G:F

.field private H:I

.field private I:Z

.field private J:I

.field private player:Lcom/my/target/instreamads/InstreamAudioAdPlayer;

.field private volume:F

.field private final y:Lcom/my/target/aj$a;

.field private final z:Lcom/my/target/is;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 45
    iput v0, p0, Lcom/my/target/aj;->volume:F

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lcom/my/target/aj;->J:I

    .line 57
    new-instance v0, Lcom/my/target/aj$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/my/target/aj$a;-><init>(Lcom/my/target/aj;Lcom/my/target/aj$1;)V

    iput-object v0, p0, Lcom/my/target/aj;->y:Lcom/my/target/aj$a;

    const/16 v0, 0xc8

    .line 58
    invoke-static {v0}, Lcom/my/target/is;->N(I)Lcom/my/target/is;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/aj;->z:Lcom/my/target/is;

    .line 59
    new-instance v0, Lcom/my/target/aj$c;

    invoke-direct {v0, p0, v1}, Lcom/my/target/aj$c;-><init>(Lcom/my/target/aj;Lcom/my/target/aj$1;)V

    iput-object v0, p0, Lcom/my/target/aj;->A:Lcom/my/target/aj$c;

    .line 60
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/my/target/aj;->B:Ljava/util/Stack;

    .line 61
    invoke-static {}, Lcom/my/target/iq;->eJ()Lcom/my/target/iq;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/aj;->C:Lcom/my/target/iq;

    return-void
.end method

.method static synthetic a(Lcom/my/target/aj;I)I
    .locals 0

    .line 27
    iput p1, p0, Lcom/my/target/aj;->J:I

    return p1
.end method

.method static synthetic a(Lcom/my/target/aj;Lcom/my/target/co;)Lcom/my/target/co;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/my/target/aj;->E:Lcom/my/target/co;

    return-object p1
.end method

.method private a(F)V
    .locals 3

    .line 238
    iget-object v0, p0, Lcom/my/target/aj;->C:Lcom/my/target/iq;

    invoke-virtual {v0, p1}, Lcom/my/target/iq;->trackProgress(F)V

    .line 239
    iget-object v0, p0, Lcom/my/target/aj;->D:Lcom/my/target/aj$b;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/my/target/aj;->E:Lcom/my/target/co;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 241
    invoke-interface {v0, v2, p1, v1}, Lcom/my/target/aj$b;->a(FFLcom/my/target/co;)V

    .line 243
    :cond_0
    invoke-direct {p0}, Lcom/my/target/aj;->t()V

    return-void
.end method

.method private a(FFF)V
    .locals 1

    const/4 v0, 0x0

    .line 219
    iput v0, p0, Lcom/my/target/aj;->F:I

    .line 220
    iput p2, p0, Lcom/my/target/aj;->G:F

    cmpg-float v0, p2, p3

    if-gez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/my/target/aj;->C:Lcom/my/target/iq;

    invoke-virtual {v0, p2}, Lcom/my/target/iq;->trackProgress(F)V

    .line 225
    iget-object p2, p0, Lcom/my/target/aj;->D:Lcom/my/target/aj$b;

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/my/target/aj;->E:Lcom/my/target/co;

    if-eqz v0, :cond_1

    .line 227
    invoke-interface {p2, p1, p3, v0}, Lcom/my/target/aj$b;->a(FFLcom/my/target/co;)V

    goto :goto_0

    .line 232
    :cond_0
    invoke-direct {p0, p3}, Lcom/my/target/aj;->a(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/my/target/aj;F)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/my/target/aj;->b(F)V

    return-void
.end method

.method static synthetic a(Lcom/my/target/aj;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/my/target/aj;->I:Z

    return p0
.end method

.method static synthetic b(Lcom/my/target/aj;)Lcom/my/target/instreamads/InstreamAudioAdPlayer;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/my/target/aj;->player:Lcom/my/target/instreamads/InstreamAudioAdPlayer;

    return-object p0
.end method

.method private b(F)V
    .locals 3

    .line 258
    iget-object v0, p0, Lcom/my/target/aj;->E:Lcom/my/target/co;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/my/target/aj;->D:Lcom/my/target/aj$b;

    if-eqz v1, :cond_0

    .line 260
    invoke-interface {v1, v0}, Lcom/my/target/aj$b;->b(Lcom/my/target/co;)V

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/my/target/aj;->D:Lcom/my/target/aj$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/my/target/aj;->E:Lcom/my/target/co;

    if-eqz v2, :cond_1

    .line 264
    invoke-interface {v0, v1, p1, v2}, Lcom/my/target/aj$b;->a(FFLcom/my/target/co;)V

    .line 266
    :cond_1
    iget-object p1, p0, Lcom/my/target/aj;->C:Lcom/my/target/iq;

    invoke-virtual {p1, v1}, Lcom/my/target/iq;->trackProgress(F)V

    const/4 p1, 0x1

    .line 267
    iput-boolean p1, p0, Lcom/my/target/aj;->I:Z

    return-void
.end method

.method static synthetic c(Lcom/my/target/aj;)Lcom/my/target/aj$c;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/my/target/aj;->A:Lcom/my/target/aj$c;

    return-object p0
.end method

.method static synthetic d(Lcom/my/target/aj;)Lcom/my/target/is;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/my/target/aj;->z:Lcom/my/target/is;

    return-object p0
.end method

.method static synthetic e(Lcom/my/target/aj;)Lcom/my/target/co;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/my/target/aj;->E:Lcom/my/target/co;

    return-object p0
.end method

.method static synthetic f(Lcom/my/target/aj;)Lcom/my/target/iq;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/my/target/aj;->C:Lcom/my/target/iq;

    return-object p0
.end method

.method static synthetic g(Lcom/my/target/aj;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/my/target/aj;->J:I

    return p0
.end method

.method static synthetic h(Lcom/my/target/aj;)Lcom/my/target/aj$b;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/my/target/aj;->D:Lcom/my/target/aj$b;

    return-object p0
.end method

.method static synthetic i(Lcom/my/target/aj;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/my/target/aj;->r()V

    return-void
.end method

.method public static q()Lcom/my/target/aj;
    .locals 1

    .line 37
    new-instance v0, Lcom/my/target/aj;

    invoke-direct {v0}, Lcom/my/target/aj;-><init>()V

    return-object v0
.end method

.method private r()V
    .locals 7

    .line 185
    iget-object v0, p0, Lcom/my/target/aj;->E:Lcom/my/target/co;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0}, Lcom/my/target/ch;->getDuration()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 189
    :goto_0
    iget-object v2, p0, Lcom/my/target/aj;->E:Lcom/my/target/co;

    if-nez v2, :cond_1

    .line 191
    iget-object v0, p0, Lcom/my/target/aj;->z:Lcom/my/target/is;

    iget-object v1, p0, Lcom/my/target/aj;->A:Lcom/my/target/aj$c;

    invoke-virtual {v0, v1}, Lcom/my/target/is;->e(Ljava/lang/Runnable;)V

    return-void

    .line 195
    :cond_1
    iget v2, p0, Lcom/my/target/aj;->J:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/my/target/aj;->player:Lcom/my/target/instreamads/InstreamAudioAdPlayer;

    if-eqz v2, :cond_2

    .line 197
    invoke-interface {v2}, Lcom/my/target/instreamads/InstreamAudioAdPlayer;->getAdAudioDuration()F

    move-result v2

    .line 198
    iget-object v4, p0, Lcom/my/target/aj;->player:Lcom/my/target/instreamads/InstreamAudioAdPlayer;

    invoke-interface {v4}, Lcom/my/target/instreamads/InstreamAudioAdPlayer;->getAdAudioPosition()F

    move-result v4

    sub-float v5, v0, v4

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 202
    :goto_1
    iget v6, p0, Lcom/my/target/aj;->J:I

    if-ne v6, v3, :cond_3

    iget v6, p0, Lcom/my/target/aj;->G:F

    cmpl-float v6, v6, v4

    if-eqz v6, :cond_3

    cmpl-float v1, v2, v1

    if-lez v1, :cond_3

    .line 204
    invoke-direct {p0, v5, v4, v0}, Lcom/my/target/aj;->a(FFF)V

    goto :goto_2

    .line 208
    :cond_3
    iget v0, p0, Lcom/my/target/aj;->F:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/my/target/aj;->F:I

    .line 211
    :goto_2
    iget v0, p0, Lcom/my/target/aj;->F:I

    iget v1, p0, Lcom/my/target/aj;->H:I

    mul-int/lit16 v1, v1, 0x3e8

    div-int/lit16 v1, v1, 0xc8

    if-lt v0, v1, :cond_4

    .line 213
    invoke-direct {p0}, Lcom/my/target/aj;->s()V

    :cond_4
    return-void
.end method

.method private s()V
    .locals 3

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "video freeze more then "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/my/target/aj;->H:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " seconds, stopping"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/ah;->a(Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/my/target/aj;->z:Lcom/my/target/is;

    iget-object v1, p0, Lcom/my/target/aj;->A:Lcom/my/target/aj$c;

    invoke-virtual {v0, v1}, Lcom/my/target/is;->e(Ljava/lang/Runnable;)V

    .line 250
    iget-object v0, p0, Lcom/my/target/aj;->D:Lcom/my/target/aj$b;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/my/target/aj;->E:Lcom/my/target/co;

    if-eqz v1, :cond_0

    const-string v2, "Timeout"

    .line 252
    invoke-interface {v0, v2, v1}, Lcom/my/target/aj$b;->a(Ljava/lang/String;Lcom/my/target/co;)V

    :cond_0
    return-void
.end method

.method private t()V
    .locals 3

    .line 272
    iget-object v0, p0, Lcom/my/target/aj;->z:Lcom/my/target/is;

    iget-object v1, p0, Lcom/my/target/aj;->A:Lcom/my/target/aj$c;

    invoke-virtual {v0, v1}, Lcom/my/target/is;->e(Ljava/lang/Runnable;)V

    .line 274
    iget v0, p0, Lcom/my/target/aj;->J:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 276
    iput v1, p0, Lcom/my/target/aj;->J:I

    .line 277
    iget-object v0, p0, Lcom/my/target/aj;->player:Lcom/my/target/instreamads/InstreamAudioAdPlayer;

    if-eqz v0, :cond_0

    .line 279
    invoke-interface {v0}, Lcom/my/target/instreamads/InstreamAudioAdPlayer;->stopAdAudio()V

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/my/target/aj;->E:Lcom/my/target/co;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/my/target/aj;->D:Lcom/my/target/aj$b;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 284
    iput-object v2, p0, Lcom/my/target/aj;->E:Lcom/my/target/co;

    .line 285
    invoke-interface {v1, v0}, Lcom/my/target/aj$b;->d(Lcom/my/target/co;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lcom/my/target/aj$b;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/my/target/aj;->D:Lcom/my/target/aj$b;

    return-void
.end method

.method public a(Lcom/my/target/co;)V
    .locals 2

    .line 108
    iput-object p1, p0, Lcom/my/target/aj;->E:Lcom/my/target/co;

    .line 109
    iget-object v0, p0, Lcom/my/target/aj;->C:Lcom/my/target/iq;

    invoke-virtual {v0, p1}, Lcom/my/target/iq;->i(Lcom/my/target/co;)V

    const/4 v0, 0x0

    .line 110
    iput-boolean v0, p0, Lcom/my/target/aj;->I:Z

    .line 111
    invoke-virtual {p1}, Lcom/my/target/ch;->getStatHolder()Lcom/my/target/di;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/aj;->B:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Lcom/my/target/di;->a(Ljava/util/List;)V

    .line 113
    invoke-virtual {p1}, Lcom/my/target/co;->getMediaData()Lcom/my/target/cd;

    move-result-object p1

    check-cast p1, Lcom/my/target/common/models/AudioData;

    if-nez p1, :cond_0

    return-void

    .line 119
    :cond_0
    invoke-virtual {p1}, Lcom/my/target/cd;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 120
    iget-object v0, p0, Lcom/my/target/aj;->player:Lcom/my/target/instreamads/InstreamAudioAdPlayer;

    if-eqz v0, :cond_1

    .line 122
    iget v1, p0, Lcom/my/target/aj;->volume:F

    invoke-interface {v0, v1}, Lcom/my/target/instreamads/InstreamAudioAdPlayer;->setVolume(F)V

    .line 123
    iget-object v0, p0, Lcom/my/target/aj;->player:Lcom/my/target/instreamads/InstreamAudioAdPlayer;

    invoke-interface {v0, p1}, Lcom/my/target/instreamads/InstreamAudioAdPlayer;->playAdAudio(Landroid/net/Uri;)V

    :cond_1
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/my/target/aj;->player:Lcom/my/target/instreamads/InstreamAudioAdPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/my/target/instreamads/InstreamAudioAdPlayer;->getCurrentContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getPlayer()Lcom/my/target/instreamads/InstreamAudioAdPlayer;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/my/target/aj;->player:Lcom/my/target/instreamads/InstreamAudioAdPlayer;

    return-object v0
.end method

.method public setConnectionTimeout(I)V
    .locals 0

    .line 171
    iput p1, p0, Lcom/my/target/aj;->H:I

    return-void
.end method

.method public setPlayer(Lcom/my/target/instreamads/InstreamAudioAdPlayer;)V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/my/target/aj;->player:Lcom/my/target/instreamads/InstreamAudioAdPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 82
    invoke-interface {v0, v1}, Lcom/my/target/instreamads/InstreamAudioAdPlayer;->setAdPlayerListener(Lcom/my/target/instreamads/InstreamAudioAdPlayer$AdPlayerListener;)V

    .line 84
    :cond_0
    iput-object p1, p0, Lcom/my/target/aj;->player:Lcom/my/target/instreamads/InstreamAudioAdPlayer;

    if-eqz p1, :cond_1

    .line 87
    iget-object v0, p0, Lcom/my/target/aj;->y:Lcom/my/target/aj$a;

    invoke-interface {p1, v0}, Lcom/my/target/instreamads/InstreamAudioAdPlayer;->setAdPlayerListener(Lcom/my/target/instreamads/InstreamAudioAdPlayer$AdPlayerListener;)V

    .line 88
    iget-object v0, p0, Lcom/my/target/aj;->C:Lcom/my/target/iq;

    invoke-interface {p1}, Lcom/my/target/instreamads/InstreamAudioAdPlayer;->getCurrentContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/my/target/iq;->setContext(Landroid/content/Context;)V

    goto :goto_0

    .line 92
    :cond_1
    iget-object p1, p0, Lcom/my/target/aj;->C:Lcom/my/target/iq;

    invoke-virtual {p1, v1}, Lcom/my/target/iq;->setContext(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public setVolume(F)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/my/target/aj;->player:Lcom/my/target/instreamads/InstreamAudioAdPlayer;

    if-eqz v0, :cond_0

    .line 68
    invoke-interface {v0, p1}, Lcom/my/target/instreamads/InstreamAudioAdPlayer;->setVolume(F)V

    .line 70
    :cond_0
    iput p1, p0, Lcom/my/target/aj;->volume:F

    return-void
.end method

.method public stop()V
    .locals 2

    .line 145
    iget v0, p0, Lcom/my/target/aj;->J:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 147
    iget-object v0, p0, Lcom/my/target/aj;->E:Lcom/my/target/co;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/aj;->D:Lcom/my/target/aj$b;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/my/target/aj;->C:Lcom/my/target/iq;

    invoke-virtual {v0}, Lcom/my/target/iq;->eL()V

    .line 150
    iget-object v0, p0, Lcom/my/target/aj;->D:Lcom/my/target/aj$b;

    iget-object v1, p0, Lcom/my/target/aj;->E:Lcom/my/target/co;

    invoke-interface {v0, v1}, Lcom/my/target/aj$b;->c(Lcom/my/target/co;)V

    :cond_0
    const/4 v0, 0x0

    .line 152
    iput v0, p0, Lcom/my/target/aj;->J:I

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/my/target/aj;->player:Lcom/my/target/instreamads/InstreamAudioAdPlayer;

    if-eqz v0, :cond_2

    .line 156
    invoke-interface {v0}, Lcom/my/target/instreamads/InstreamAudioAdPlayer;->stopAdAudio()V

    :cond_2
    return-void
.end method
