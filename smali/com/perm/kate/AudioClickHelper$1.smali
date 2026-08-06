.class Lcom/perm/kate/AudioClickHelper$1;
.super Ljava/lang/Object;
.source "AudioClickHelper.java"

# interfaces
.implements Lcom/perm/kate/AudioClickHelperCallback2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/AudioClickHelper;->click(Lcom/perm/kate/api/Audio;Ljava/util/ArrayList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioClickHelper;

.field final synthetic val$source:I


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioClickHelper;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/AudioClickHelper;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/perm/kate/AudioClickHelper$1;->this$0:Lcom/perm/kate/AudioClickHelper;

    iput p2, p0, Lcom/perm/kate/AudioClickHelper$1;->val$source:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public audiosDownloaded(Lcom/perm/kate/api/Audio;Ljava/util/ArrayList;)V
    .locals 6
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
    .local p2, "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Audio;>;"
    const/4 v2, 0x0

    .line 62
    iget-object v0, p0, Lcom/perm/kate/AudioClickHelper$1;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object v0, v0, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    invoke-virtual {v0}, Lcom/perm/kate/BaseActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/AudioClickHelper$1;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget v5, p0, Lcom/perm/kate/AudioClickHelper$1;->val$source:I

    move-object v1, p1

    move-object v3, p2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/AudioClickHelper;->CreateContextMenu(Lcom/perm/kate/api/Audio;ZLjava/util/ArrayList;ZI)V

    goto :goto_0
.end method
