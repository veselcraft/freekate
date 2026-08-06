.class Lcom/perm/kate/AudioClickHelper$5;
.super Ljava/lang/Object;
.source "AudioClickHelper.java"

# interfaces
.implements Lcom/perm/kate/AudioClickHelperCallback2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/AudioClickHelper;->fetchAndPlayAudio(Lcom/perm/kate/api/Audio;Landroid/app/Activity;Ljava/util/ArrayList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioClickHelper;

.field final synthetic val$context:Landroid/app/Activity;

.field final synthetic val$source:I


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioClickHelper;Landroid/app/Activity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/AudioClickHelper;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/perm/kate/AudioClickHelper$5;->this$0:Lcom/perm/kate/AudioClickHelper;

    iput-object p2, p0, Lcom/perm/kate/AudioClickHelper$5;->val$context:Landroid/app/Activity;

    iput p3, p0, Lcom/perm/kate/AudioClickHelper$5;->val$source:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public audiosDownloaded(Lcom/perm/kate/api/Audio;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "audio"    # Lcom/perm/kate/api/Audio;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perm/kate/api/Audio;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Audio;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 286
    .local p2, "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Audio;>;"
    iget-object v0, p0, Lcom/perm/kate/AudioClickHelper$5;->val$context:Landroid/app/Activity;

    const/4 v1, 0x0

    iget v2, p0, Lcom/perm/kate/AudioClickHelper$5;->val$source:I

    invoke-static {p1, v0, p2, v1, v2}, Lcom/perm/kate/AudioClickHelper;->PlayAudio(Lcom/perm/kate/api/Audio;Landroid/content/Context;Ljava/util/ArrayList;ZI)V

    .line 287
    return-void
.end method
