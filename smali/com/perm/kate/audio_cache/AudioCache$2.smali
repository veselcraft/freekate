.class Lcom/perm/kate/audio_cache/AudioCache$2;
.super Lcom/perm/kate/session/Callback;
.source "AudioCache.java"


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 246
    invoke-direct {p0, p1}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 1

    .line 250
    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    .line 251
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 253
    :cond_0
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v0, p1}, Lcom/perm/kate/db/DataHelper;->createOrUpdateAudios(Ljava/util/ArrayList;)V

    :cond_1
    :goto_0
    return-void
.end method
