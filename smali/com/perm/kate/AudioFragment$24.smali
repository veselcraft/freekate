.class Lcom/perm/kate/AudioFragment$24;
.super Ljava/lang/Object;
.source "AudioFragment.java"

# interfaces
.implements Lcom/mobeta/android/dslv/DragSortListView$DropListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/AudioFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/AudioFragment;

    .prologue
    .line 806
    iput-object p1, p0, Lcom/perm/kate/AudioFragment$24;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drop(II)V
    .locals 6
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 809
    if-ne p1, p2, :cond_0

    .line 823
    :goto_0
    return-void

    .line 811
    :cond_0
    iget-object v3, p0, Lcom/perm/kate/AudioFragment$24;->this$0:Lcom/perm/kate/AudioFragment;

    iget-object v3, v3, Lcom/perm/kate/AudioFragment;->audios:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Audio;

    .line 812
    .local v0, "a":Lcom/perm/kate/api/Audio;
    const/4 v2, 0x0

    .line 813
    .local v2, "before_audio_id":Ljava/lang/Long;
    const/4 v1, 0x0

    .line 815
    .local v1, "after_audio_id":Ljava/lang/Long;
    if-le p1, p2, :cond_1

    .line 816
    iget-object v3, p0, Lcom/perm/kate/AudioFragment$24;->this$0:Lcom/perm/kate/AudioFragment;

    iget-object v3, v3, Lcom/perm/kate/AudioFragment;->audios:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/api/Audio;

    iget-wide v4, v3, Lcom/perm/kate/api/Audio;->aid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 819
    :goto_1
    iget-object v3, p0, Lcom/perm/kate/AudioFragment$24;->this$0:Lcom/perm/kate/AudioFragment;

    iget-object v3, v3, Lcom/perm/kate/AudioFragment;->audios:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 820
    iget-object v3, p0, Lcom/perm/kate/AudioFragment$24;->this$0:Lcom/perm/kate/AudioFragment;

    iget-object v3, v3, Lcom/perm/kate/AudioFragment;->audios:Ljava/util/ArrayList;

    invoke-virtual {v3, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 821
    iget-object v3, p0, Lcom/perm/kate/AudioFragment$24;->this$0:Lcom/perm/kate/AudioFragment;

    iget-object v3, v3, Lcom/perm/kate/AudioFragment;->adapter:Lcom/perm/kate/AudioListAdapter;

    invoke-virtual {v3}, Lcom/perm/kate/AudioListAdapter;->notifyDataSetChanged()V

    .line 822
    iget-object v3, p0, Lcom/perm/kate/AudioFragment$24;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v3, v0, v2, v1}, Lcom/perm/kate/AudioFragment;->access$2600(Lcom/perm/kate/AudioFragment;Lcom/perm/kate/api/Audio;Ljava/lang/Long;Ljava/lang/Long;)V

    goto :goto_0

    .line 818
    :cond_1
    iget-object v3, p0, Lcom/perm/kate/AudioFragment$24;->this$0:Lcom/perm/kate/AudioFragment;

    iget-object v3, v3, Lcom/perm/kate/AudioFragment;->audios:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/api/Audio;

    iget-wide v4, v3, Lcom/perm/kate/api/Audio;->aid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_1
.end method
