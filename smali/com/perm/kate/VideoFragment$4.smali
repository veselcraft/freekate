.class Lcom/perm/kate/VideoFragment$4;
.super Ljava/lang/Object;
.source "VideoFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/VideoFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/VideoFragment;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/perm/kate/VideoFragment$4;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/perm/kate/VideoFragment$4;->this$0:Lcom/perm/kate/VideoFragment;

    iget-object v1, v0, Lcom/perm/kate/VideoFragment;->videoListAdapter:Lcom/perm/kate/VideoListAdapter;

    if-nez v1, :cond_0

    return-void

    .line 182
    :cond_0
    iget-object v0, v0, Lcom/perm/kate/VideoFragment;->videos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Lcom/perm/kate/VideoListAdapter;->displayNewData(Ljava/util/ArrayList;)V

    return-void
.end method
