.class public Lcom/my/target/iq;
.super Ljava/lang/Object;
.source "PlaybackTracker.java"


# instance fields
.field private context:Landroid/content/Context;

.field private pw:Z

.field private px:Ljava/util/Set;

.field private statHolder:Lcom/my/target/di;


# direct methods
.method private constructor <init>(Lcom/my/target/co;Landroid/content/Context;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 66
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/my/target/iq;->context:Landroid/content/Context;

    :cond_0
    if-eqz p1, :cond_1

    .line 71
    invoke-virtual {p1}, Lcom/my/target/ch;->getStatHolder()Lcom/my/target/di;

    move-result-object p2

    iput-object p2, p0, Lcom/my/target/iq;->statHolder:Lcom/my/target/di;

    .line 72
    invoke-virtual {p1}, Lcom/my/target/ch;->getStatHolder()Lcom/my/target/di;

    move-result-object p1

    invoke-virtual {p1}, Lcom/my/target/di;->cz()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/my/target/iq;->px:Ljava/util/Set;

    :cond_1
    return-void
.end method

.method public static eJ()Lcom/my/target/iq;
    .locals 2

    .line 20
    new-instance v0, Lcom/my/target/iq;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/my/target/iq;-><init>(Lcom/my/target/co;Landroid/content/Context;)V

    return-object v0
.end method

.method private eO()Z
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/my/target/iq;->context:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/my/target/iq;->statHolder:Lcom/my/target/di;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/my/target/iq;->px:Ljava/util/Set;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public eL()V
    .locals 2

    .line 124
    invoke-direct {p0}, Lcom/my/target/iq;->eO()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/my/target/iq;->statHolder:Lcom/my/target/di;

    const-string v1, "playbackStopped"

    invoke-virtual {v0, v1}, Lcom/my/target/di;->N(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/iq;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/my/target/it;->a(Ljava/util/List;Landroid/content/Context;)V

    return-void
.end method

.method public i(Lcom/my/target/co;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 47
    invoke-virtual {p1}, Lcom/my/target/ch;->getStatHolder()Lcom/my/target/di;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/iq;->statHolder:Lcom/my/target/di;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/my/target/iq;->pw:Z

    .line 51
    :cond_0
    invoke-virtual {p1}, Lcom/my/target/ch;->getStatHolder()Lcom/my/target/di;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/iq;->statHolder:Lcom/my/target/di;

    .line 52
    invoke-virtual {p1}, Lcom/my/target/ch;->getStatHolder()Lcom/my/target/di;

    move-result-object p1

    invoke-virtual {p1}, Lcom/my/target/di;->cz()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/my/target/iq;->px:Ljava/util/Set;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 57
    iput-object p1, p0, Lcom/my/target/iq;->statHolder:Lcom/my/target/di;

    .line 58
    iput-object p1, p0, Lcom/my/target/iq;->px:Ljava/util/Set;

    :goto_0
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/my/target/iq;->context:Landroid/content/Context;

    return-void
.end method

.method public trackProgress(F)V
    .locals 3

    .line 78
    invoke-direct {p0}, Lcom/my/target/iq;->eO()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 83
    :cond_0
    iget-boolean v0, p0, Lcom/my/target/iq;->pw:Z

    if-nez v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/my/target/iq;->statHolder:Lcom/my/target/di;

    const-string v1, "playbackStarted"

    invoke-virtual {v0, v1}, Lcom/my/target/di;->N(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/iq;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/my/target/it;->a(Ljava/util/List;Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lcom/my/target/iq;->pw:Z

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/my/target/iq;->px:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 90
    iget-object v0, p0, Lcom/my/target/iq;->px:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 91
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 93
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/my/target/dg;

    .line 95
    invoke-virtual {v1}, Lcom/my/target/dg;->cu()F

    move-result v2

    cmpg-float v2, v2, p1

    if-gtz v2, :cond_2

    .line 97
    iget-object v2, p0, Lcom/my/target/iq;->context:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/my/target/it;->a(Lcom/my/target/dh;Landroid/content/Context;)V

    .line 98
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-void
.end method
