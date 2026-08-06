.class Lcom/perm/kate/FaveVideosFragment$5;
.super Ljava/lang/Object;
.source "FaveVideosFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/FaveVideosFragment;->requeryOnUiThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FaveVideosFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FaveVideosFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/FaveVideosFragment;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/perm/kate/FaveVideosFragment$5;->this$0:Lcom/perm/kate/FaveVideosFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/perm/kate/FaveVideosFragment$5;->this$0:Lcom/perm/kate/FaveVideosFragment;

    iget-object v0, v0, Lcom/perm/kate/FaveVideosFragment;->videoListAdapter:Lcom/perm/kate/VideoListAdapter;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/perm/kate/FaveVideosFragment$5;->this$0:Lcom/perm/kate/FaveVideosFragment;

    iget-object v0, v0, Lcom/perm/kate/FaveVideosFragment;->videoListAdapter:Lcom/perm/kate/VideoListAdapter;

    iget-object v1, p0, Lcom/perm/kate/FaveVideosFragment$5;->this$0:Lcom/perm/kate/FaveVideosFragment;

    iget-object v1, v1, Lcom/perm/kate/FaveVideosFragment;->videos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/perm/kate/VideoListAdapter;->displayNewData(Ljava/util/ArrayList;)V

    .line 120
    :cond_0
    return-void
.end method
