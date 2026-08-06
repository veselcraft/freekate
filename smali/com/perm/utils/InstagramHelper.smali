.class public Lcom/perm/utils/InstagramHelper;
.super Ljava/lang/Object;
.source "InstagramHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/utils/InstagramHelper$Callback;
    }
.end annotation


# instance fields
.field private callback:Lcom/perm/utils/InstagramHelper$Callback;


# direct methods
.method public constructor <init>(Lcom/perm/utils/InstagramHelper$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/perm/utils/InstagramHelper$Callback;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/perm/utils/InstagramHelper;->callback:Lcom/perm/utils/InstagramHelper$Callback;

    .line 17
    return-void
.end method

.method static synthetic access$000(Lcom/perm/utils/InstagramHelper;)Lcom/perm/utils/InstagramHelper$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/utils/InstagramHelper;

    .prologue
    .line 8
    iget-object v0, p0, Lcom/perm/utils/InstagramHelper;->callback:Lcom/perm/utils/InstagramHelper$Callback;

    return-object v0
.end method

.method public static isInstagramLink(Ljava/lang/String;)Z
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 57
    const-string v0, "instagram.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    const/4 v0, 0x1

    .line 59
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private preparePhotoUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 48
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 50
    :cond_0
    const-string v0, "instagram.com/p"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    const-string v0, "instagram.com"

    const-string v1, "instagram.com/p"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 52
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "media/?size=l"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getPhotoUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "str_url"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/perm/utils/InstagramHelper;->preparePhotoUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, "url":Ljava/lang/String;
    new-instance v1, Lcom/perm/utils/InstagramHelper$1;

    invoke-direct {v1, p0, v0}, Lcom/perm/utils/InstagramHelper$1;-><init>(Lcom/perm/utils/InstagramHelper;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v1}, Lcom/perm/utils/InstagramHelper$1;->start()V

    .line 45
    return-void
.end method
