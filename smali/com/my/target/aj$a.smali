.class Lcom/my/target/aj$a;
.super Ljava/lang/Object;
.source "InstreamAdAudioController.java"

# interfaces
.implements Lcom/my/target/instreamads/InstreamAudioAdPlayer$AdPlayerListener;


# instance fields
.field final synthetic K:Lcom/my/target/aj;


# direct methods
.method private constructor <init>(Lcom/my/target/aj;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/my/target/aj$a;->K:Lcom/my/target/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/my/target/aj;Lcom/my/target/aj$1;)V
    .locals 0

    .line 308
    invoke-direct {p0, p1}, Lcom/my/target/aj$a;-><init>(Lcom/my/target/aj;)V

    return-void
.end method


# virtual methods
.method public onAdAudioCompleted()V
    .locals 4

    .line 376
    iget-object v0, p0, Lcom/my/target/aj$a;->K:Lcom/my/target/aj;

    invoke-static {v0}, Lcom/my/target/aj;->g(Lcom/my/target/aj;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 378
    iget-object v0, p0, Lcom/my/target/aj$a;->K:Lcom/my/target/aj;

    invoke-static {v0}, Lcom/my/target/aj;->e(Lcom/my/target/aj;)Lcom/my/target/co;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/aj$a;->K:Lcom/my/target/aj;

    invoke-static {v0}, Lcom/my/target/aj;->h(Lcom/my/target/aj;)Lcom/my/target/aj$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/my/target/aj$a;->K:Lcom/my/target/aj;

    invoke-static {v0}, Lcom/my/target/aj;->i(Lcom/my/target/aj;)V

    .line 381
    iget-object v0, p0, Lcom/my/target/aj$a;->K:Lcom/my/target/aj;

    invoke-static {v0}, Lcom/my/target/aj;->e(Lcom/my/target/aj;)Lcom/my/target/co;

    move-result-object v0

    .line 382
    iget-object v2, p0, Lcom/my/target/aj$a;->K:Lcom/my/target/aj;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/my/target/aj;->a(Lcom/my/target/aj;Lcom/my/target/co;)Lcom/my/target/co;

    if-eqz v0, :cond_0

    .line 385
    iget-object v2, p0, Lcom/my/target/aj$a;->K:Lcom/my/target/aj;

    invoke-static {v2}, Lcom/my/target/aj;->f(Lcom/my/target/aj;)Lcom/my/target/iq;

    move-result-object v2

    invoke-virtual {v0}, Lcom/my/target/ch;->getDuration()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/my/target/iq;->trackProgress(F)V

    .line 386
    iget-object v2, p0, Lcom/my/target/aj$a;->K:Lcom/my/target/aj;

    invoke-static {v2}, Lcom/my/target/aj;->h(Lcom/my/target/aj;)Lcom/my/target/aj$b;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/my/target/aj$b;->d(Lcom/my/target/co;)V

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/my/target/aj$a;->K:Lcom/my/target/aj;

    invoke-static {v0, v1}, Lcom/my/target/aj;->a(Lcom/my/target/aj;I)I

    .line 391
    :cond_1
    iget-object v0, p0, Lcom/my/target/aj$a;->K:Lcom/my/target/aj;

    invoke-static {v0}, Lcom/my/target/aj;->d(Lcom/my/target/aj;)Lcom/my/target/is;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/aj$a;->K:Lcom/my/target/aj;

    invoke-static {v1}, Lcom/my/target/aj;->c(Lcom/my/target/aj;)Lcom/my/target/aj$c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/is;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdAudioError(Ljava/lang/String;)V
    .locals 2

    .line 366
    iget-object v0, p0, Lcom/my/target/aj$a;->K:Lcom/my/target/aj;

    invoke-static {v0}, Lcom/my/target/aj;->e(Lcom/my/target/aj;)Lcom/my/target/co;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/aj$a;->K:Lcom/my/target/aj;

    invoke-static {v0}, Lcom/my/target/aj;->h(Lcom/my/target/aj;)Lcom/my/target/aj$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/my/target/aj$a;->K:Lcom/my/target/aj;

    invoke-static {v0}, Lcom/my/target/aj;->h(Lcom/my/target/aj;)Lcom/my/target/aj$b;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/aj$a;->K:Lcom/my/target/aj;

    invoke-static {v1}, Lcom/my/target/aj;->e(Lcom/my/target/aj;)Lcom/my/target/co;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/my/target/aj$b;->a(Ljava/lang/String;Lcom/my/target/co;)V

    .line 370
    :cond_0
    iget-object p1, p0, Lcom/my/target/aj$a;->K:Lcom/my/target/aj;

    invoke-static {p1}, Lcom/my/target/aj;->d(Lcom/my/target/aj;)Lcom/my/target/is;

    move-result-object p1

    iget-object v0, p0, Lcom/my/target/aj$a;->K:Lcom/my/target/aj;

    invoke-static {v0}, Lcom/my/target/aj;->c(Lcom/my/target/aj;)Lcom/my/target/aj$c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/my/target/is;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdAudioStarted()V
    .locals 2

    .line 315
    iget-object v0, p0, Lcom/my/target/aj$a;->K:Lcom/my/target/aj;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/my/target/aj;->a(Lcom/my/target/aj;I)I

    .line 316
    iget-object v0, p0, Lcom/my/target/aj$a;->K:Lcom/my/target/aj;

    invoke-static {v0}, Lcom/my/target/aj;->a(Lcom/my/target/aj;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/my/target/aj$a;->K:Lcom/my/target/aj;

    invoke-static {v0}, Lcom/my/target/aj;->b(Lcom/my/target/aj;)Lcom/my/target/instreamads/InstreamAudioAdPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/my/target/aj$a;->K:Lcom/my/target/aj;

    invoke-static {v0}, Lcom/my/target/aj;->b(Lcom/my/target/aj;)Lcom/my/target/instreamads/InstreamAudioAdPlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/my/target/instreamads/InstreamAudioAdPlayer;->getAdAudioDuration()F

    move-result v1

    invoke-static {v0, v1}, Lcom/my/target/aj;->a(Lcom/my/target/aj;F)V

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/my/target/aj$a;->K:Lcom/my/target/aj;

    invoke-static {v0}, Lcom/my/target/aj;->d(Lcom/my/target/aj;)Lcom/my/target/is;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/aj$a;->K:Lcom/my/target/aj;

    invoke-static {v1}, Lcom/my/target/aj;->c(Lcom/my/target/aj;)Lcom/my/target/aj$c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/is;->d(Ljava/lang/Runnable;)V

    return-void
.end method
