.class Lcom/perm/kate/FaveVideosFragment$5;
.super Ljava/lang/Object;
.source "FaveVideosFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FaveVideosFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FaveVideosFragment;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/perm/kate/FaveVideosFragment$5;->this$0:Lcom/perm/kate/FaveVideosFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/perm/kate/FaveVideosFragment$5;->this$0:Lcom/perm/kate/FaveVideosFragment;

    iget-object v1, v0, Lcom/perm/kate/FaveVideosFragment;->videoListAdapter:Lcom/perm/kate/VideoListAdapter;

    if-eqz v1, :cond_0

    .line 144
    iget-object v0, v0, Lcom/perm/kate/FaveVideosFragment;->videos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Lcom/perm/kate/VideoListAdapter;->displayNewData(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method
