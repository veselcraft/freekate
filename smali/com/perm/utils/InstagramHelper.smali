.class public Lcom/perm/utils/InstagramHelper;
.super Ljava/lang/Object;
.source "InstagramHelper.java"


# instance fields
.field private callback:Lcom/perm/utils/InstagramHelper$Callback;


# direct methods
.method public constructor <init>(Lcom/perm/utils/InstagramHelper$Callback;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/perm/utils/InstagramHelper;->callback:Lcom/perm/utils/InstagramHelper$Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/utils/InstagramHelper;)Lcom/perm/utils/InstagramHelper$Callback;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/perm/utils/InstagramHelper;->callback:Lcom/perm/utils/InstagramHelper$Callback;

    return-object p0
.end method

.method public static isInstagramLink(Ljava/lang/String;)Z
    .locals 1

    .line 56
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "instagram.com"

    .line 57
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private preparePhotoUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "/"

    .line 48
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v0, "instagram.com/p"

    .line 50
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "instagram.com"

    .line 51
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 52
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "media/?size=l"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getPhotoUrl(Ljava/lang/String;)V
    .locals 1

    .line 20
    invoke-direct {p0, p1}, Lcom/perm/utils/InstagramHelper;->preparePhotoUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 21
    new-instance v0, Lcom/perm/utils/InstagramHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/perm/utils/InstagramHelper$1;-><init>(Lcom/perm/utils/InstagramHelper;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
