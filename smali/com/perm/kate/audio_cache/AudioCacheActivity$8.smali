.class Lcom/perm/kate/audio_cache/AudioCacheActivity$8;
.super Ljava/lang/Object;
.source "AudioCacheActivity.java"

# interfaces
.implements Lcom/mobeta/android/dslv/DragSortListView$DropListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/audio_cache/AudioCacheActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/audio_cache/AudioCacheActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/audio_cache/AudioCacheActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/audio_cache/AudioCacheActivity;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/perm/kate/audio_cache/AudioCacheActivity$8;->this$0:Lcom/perm/kate/audio_cache/AudioCacheActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drop(II)V
    .locals 3
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 252
    iget-object v1, p0, Lcom/perm/kate/audio_cache/AudioCacheActivity$8;->this$0:Lcom/perm/kate/audio_cache/AudioCacheActivity;

    iget-object v1, v1, Lcom/perm/kate/audio_cache/AudioCacheActivity;->audios:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Audio;

    .line 253
    .local v0, "a":Lcom/perm/kate/api/Audio;
    iget-object v1, p0, Lcom/perm/kate/audio_cache/AudioCacheActivity$8;->this$0:Lcom/perm/kate/audio_cache/AudioCacheActivity;

    iget-object v1, v1, Lcom/perm/kate/audio_cache/AudioCacheActivity;->audios:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 254
    iget-object v1, p0, Lcom/perm/kate/audio_cache/AudioCacheActivity$8;->this$0:Lcom/perm/kate/audio_cache/AudioCacheActivity;

    iget-object v1, v1, Lcom/perm/kate/audio_cache/AudioCacheActivity;->audios:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 255
    iget-object v1, p0, Lcom/perm/kate/audio_cache/AudioCacheActivity$8;->this$0:Lcom/perm/kate/audio_cache/AudioCacheActivity;

    invoke-static {v1}, Lcom/perm/kate/audio_cache/AudioCacheActivity;->access$100(Lcom/perm/kate/audio_cache/AudioCacheActivity;)Lcom/perm/kate/AudioListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/perm/kate/AudioListAdapter;->notifyDataSetChanged()V

    .line 256
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, p0, Lcom/perm/kate/audio_cache/AudioCacheActivity$8;->this$0:Lcom/perm/kate/audio_cache/AudioCacheActivity;

    iget-object v2, v2, Lcom/perm/kate/audio_cache/AudioCacheActivity;->audios:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/perm/kate/db/DataHelper;->updateOrder(Ljava/util/ArrayList;)V

    .line 257
    return-void
.end method
