.class Lcom/perm/kate/audio_cache/AudioCacheActivity$3;
.super Ljava/lang/Object;
.source "AudioCacheActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 119
    iput-object p1, p0, Lcom/perm/kate/audio_cache/AudioCacheActivity$3;->this$0:Lcom/perm/kate/audio_cache/AudioCacheActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/perm/kate/audio_cache/AudioCacheActivity$3;->this$0:Lcom/perm/kate/audio_cache/AudioCacheActivity;

    invoke-static {v0}, Lcom/perm/kate/audio_cache/AudioCacheActivity;->access$100(Lcom/perm/kate/audio_cache/AudioCacheActivity;)Lcom/perm/kate/AudioListAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/perm/kate/AudioListAdapter;->audios:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Audio;

    .line 125
    .local v1, "a":Lcom/perm/kate/api/Audio;
    const/4 v2, 0x0

    .line 126
    .local v2, "show_delete":Z
    const/4 v4, 0x0

    .line 127
    .local v4, "show_delete_from_album":Z
    iget-object v0, p0, Lcom/perm/kate/audio_cache/AudioCacheActivity$3;->this$0:Lcom/perm/kate/audio_cache/AudioCacheActivity;

    iget-object v0, v0, Lcom/perm/kate/audio_cache/AudioCacheActivity;->audioHelper:Lcom/perm/kate/AudioClickHelper;

    iget-object v3, p0, Lcom/perm/kate/audio_cache/AudioCacheActivity$3;->this$0:Lcom/perm/kate/audio_cache/AudioCacheActivity;

    iget-object v3, v3, Lcom/perm/kate/audio_cache/AudioCacheActivity;->audios:Ljava/util/ArrayList;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/16 v8, 0xe

    invoke-virtual/range {v0 .. v8}, Lcom/perm/kate/AudioClickHelper;->CreateContextMenu(Lcom/perm/kate/api/Audio;ZLjava/util/ArrayList;ZLcom/perm/kate/AudioFragment;ZZI)V

    .line 128
    return-void
.end method
