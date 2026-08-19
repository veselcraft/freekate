.class Lcom/perm/kate/AudioFragment$24;
.super Ljava/lang/Object;
.source "AudioFragment.java"

# interfaces
.implements Lcom/mobeta/android/dslv/DragSortListView$DropListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioFragment;)V
    .locals 0

    .line 938
    iput-object p1, p0, Lcom/perm/kate/AudioFragment$24;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drop(II)V
    .locals 5

    if-ne p1, p2, :cond_0

    return-void

    .line 943
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$24;->this$0:Lcom/perm/kate/AudioFragment;

    iget-object v0, v0, Lcom/perm/kate/AudioFragment;->audios:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Audio;

    const/4 v1, 0x0

    if-le p1, p2, :cond_1

    .line 948
    iget-object v2, p0, Lcom/perm/kate/AudioFragment$24;->this$0:Lcom/perm/kate/AudioFragment;

    iget-object v2, v2, Lcom/perm/kate/AudioFragment;->audios:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/Audio;

    iget-wide v2, v2, Lcom/perm/kate/api/Audio;->aid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_0

    .line 950
    :cond_1
    iget-object v2, p0, Lcom/perm/kate/AudioFragment$24;->this$0:Lcom/perm/kate/AudioFragment;

    iget-object v2, v2, Lcom/perm/kate/AudioFragment;->audios:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/Audio;

    iget-wide v2, v2, Lcom/perm/kate/api/Audio;->aid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 951
    :goto_0
    iget-object v3, p0, Lcom/perm/kate/AudioFragment$24;->this$0:Lcom/perm/kate/AudioFragment;

    iget-object v3, v3, Lcom/perm/kate/AudioFragment;->audios:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 952
    iget-object p1, p0, Lcom/perm/kate/AudioFragment$24;->this$0:Lcom/perm/kate/AudioFragment;

    iget-object p1, p1, Lcom/perm/kate/AudioFragment;->audios:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 953
    iget-object p1, p0, Lcom/perm/kate/AudioFragment$24;->this$0:Lcom/perm/kate/AudioFragment;

    iget-object p1, p1, Lcom/perm/kate/AudioFragment;->adapter:Lcom/perm/kate/AudioListAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 954
    iget-object p1, p0, Lcom/perm/kate/AudioFragment$24;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {p1, v0, v1, v2}, Lcom/perm/kate/AudioFragment;->access$3100(Lcom/perm/kate/AudioFragment;Lcom/perm/kate/api/Audio;Ljava/lang/Long;Ljava/lang/Long;)V

    return-void
.end method
