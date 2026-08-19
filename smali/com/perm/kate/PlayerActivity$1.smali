.class Lcom/perm/kate/PlayerActivity$1;
.super Ljava/lang/Object;
.source "PlayerActivity.java"

# interfaces
.implements Lcom/mobeta/android/dslv/DragSortListView$DropListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PlayerActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PlayerActivity;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/perm/kate/PlayerActivity$1;->this$0:Lcom/perm/kate/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drop(II)V
    .locals 2

    if-ne p1, p2, :cond_0

    return-void

    .line 171
    :cond_0
    sget-object v0, Lcom/perm/kate/PlaybackService;->audios:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Audio;

    .line 172
    sget-object v1, Lcom/perm/kate/PlaybackService;->audios:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 173
    sget-object p1, Lcom/perm/kate/PlaybackService;->audios:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 177
    iget-object p1, p0, Lcom/perm/kate/PlayerActivity$1;->this$0:Lcom/perm/kate/PlayerActivity;

    invoke-static {p1}, Lcom/perm/kate/PlayerActivity;->access$000(Lcom/perm/kate/PlayerActivity;)Lcom/perm/kate/AudioListAdapter;

    move-result-object p1

    sget-object p2, Lcom/perm/kate/PlaybackService;->audios:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lcom/perm/kate/AudioListAdapter;->displayNewData(Ljava/util/ArrayList;)V

    return-void
.end method
