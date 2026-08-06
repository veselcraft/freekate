.class Lcom/perm/kate/AudioClickHelper$9$1$1;
.super Ljava/lang/Object;
.source "AudioClickHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/AudioClickHelper$9$1;->ready(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/perm/kate/AudioClickHelper$9$1;

.field final synthetic val$a:Lcom/perm/kate/api/Audio;

.field final synthetic val$audios:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioClickHelper$9$1;Lcom/perm/kate/api/Audio;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$2"    # Lcom/perm/kate/AudioClickHelper$9$1;

    .prologue
    .line 438
    iput-object p1, p0, Lcom/perm/kate/AudioClickHelper$9$1$1;->this$2:Lcom/perm/kate/AudioClickHelper$9$1;

    iput-object p2, p0, Lcom/perm/kate/AudioClickHelper$9$1$1;->val$a:Lcom/perm/kate/api/Audio;

    iput-object p3, p0, Lcom/perm/kate/AudioClickHelper$9$1$1;->val$audios:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 441
    iget-object v0, p0, Lcom/perm/kate/AudioClickHelper$9$1$1;->this$2:Lcom/perm/kate/AudioClickHelper$9$1;

    iget-object v0, v0, Lcom/perm/kate/AudioClickHelper$9$1;->this$1:Lcom/perm/kate/AudioClickHelper$9;

    iget-object v0, v0, Lcom/perm/kate/AudioClickHelper$9;->val$callback2:Lcom/perm/kate/AudioClickHelperCallback2;

    iget-object v1, p0, Lcom/perm/kate/AudioClickHelper$9$1$1;->val$a:Lcom/perm/kate/api/Audio;

    iget-object v2, p0, Lcom/perm/kate/AudioClickHelper$9$1$1;->val$audios:Ljava/util/ArrayList;

    invoke-interface {v0, v1, v2}, Lcom/perm/kate/AudioClickHelperCallback2;->audiosDownloaded(Lcom/perm/kate/api/Audio;Ljava/util/ArrayList;)V

    .line 442
    return-void
.end method
