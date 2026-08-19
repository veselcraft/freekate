.class public Lcom/my/target/it;
.super Ljava/lang/Object;
.source "StatResolver.java"


# static fields
.field private static final pF:Lcom/my/target/it;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lcom/my/target/it;

    invoke-direct {v0}, Lcom/my/target/it;-><init>()V

    sput-object v0, Lcom/my/target/it;->pF:Lcom/my/target/it;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/my/target/it;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/my/target/it;->al(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/my/target/dh;Landroid/content/Context;)V
    .locals 1

    .line 32
    sget-object v0, Lcom/my/target/it;->pF:Lcom/my/target/it;

    invoke-virtual {v0, p0, p1}, Lcom/my/target/it;->b(Lcom/my/target/dh;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/my/target/it;Lcom/my/target/dh;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/my/target/it;->c(Lcom/my/target/dh;)V

    return-void
.end method

.method public static a(Ljava/util/List;Landroid/content/Context;)V
    .locals 1

    .line 37
    sget-object v0, Lcom/my/target/it;->pF:Lcom/my/target/it;

    invoke-virtual {v0, p0, p1}, Lcom/my/target/it;->c(Ljava/util/List;Landroid/content/Context;)V

    return-void
.end method

.method private al(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 147
    invoke-static {p1}, Lcom/my/target/iv;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 148
    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 154
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid stat url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/my/target/ah;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private c(Lcom/my/target/dh;)V
    .locals 6

    .line 161
    instance-of v0, p1, Lcom/my/target/dg;

    const-string v1, " url:"

    if-eqz v0, :cond_0

    .line 163
    move-object v0, p1

    check-cast v0, Lcom/my/target/dg;

    invoke-virtual {v0}, Lcom/my/target/dg;->cu()F

    move-result v0

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tracking progress stat value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/my/target/dh;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/my/target/ah;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 166
    :cond_0
    instance-of v0, p1, Lcom/my/target/df;

    if-eqz v0, :cond_1

    .line 168
    move-object v0, p1

    check-cast v0, Lcom/my/target/df;

    .line 169
    invoke-virtual {v0}, Lcom/my/target/dj;->cC()I

    move-result v2

    .line 170
    invoke-virtual {v0}, Lcom/my/target/dj;->cu()F

    move-result v3

    .line 171
    invoke-virtual {v0}, Lcom/my/target/df;->ct()Z

    move-result v0

    .line 172
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tracking ovv stat percent:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " value:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " ovv:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/my/target/dh;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/my/target/ah;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 174
    :cond_1
    instance-of v0, p1, Lcom/my/target/de;

    if-eqz v0, :cond_2

    .line 176
    move-object v0, p1

    check-cast v0, Lcom/my/target/de;

    .line 177
    invoke-virtual {v0}, Lcom/my/target/dj;->cC()I

    move-result v2

    .line 178
    invoke-virtual {v0}, Lcom/my/target/dj;->cu()F

    move-result v3

    .line 179
    invoke-virtual {v0}, Lcom/my/target/de;->getDuration()F

    move-result v0

    .line 180
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tracking mrc stat percent: value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " percent "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " duration:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/my/target/dh;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/my/target/ah;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 184
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tracking stat type:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/my/target/dh;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/my/target/dh;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/my/target/ah;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method b(Lcom/my/target/dh;Landroid/content/Context;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 59
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    .line 60
    new-instance v0, Lcom/my/target/it$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/my/target/it$1;-><init>(Lcom/my/target/it;Lcom/my/target/dh;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/my/target/ai;->b(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method c(Ljava/util/List;Landroid/content/Context;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 78
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 80
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    .line 81
    new-instance v0, Lcom/my/target/it$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/my/target/it$2;-><init>(Lcom/my/target/it;Ljava/util/List;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/my/target/ai;->b(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
