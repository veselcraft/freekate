.class Lcom/perm/kate/VideoFragment$4;
.super Ljava/lang/Object;
.source "VideoFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/VideoFragment;->requeryOnUiThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/VideoFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/VideoFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/VideoFragment;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/perm/kate/VideoFragment$4;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/perm/kate/VideoFragment$4;->this$0:Lcom/perm/kate/VideoFragment;

    iget-object v0, v0, Lcom/perm/kate/VideoFragment;->videoListAdapter:Lcom/perm/kate/VideoListAdapter;

    if-nez v0, :cond_0

    .line 185
    :goto_0
    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/VideoFragment$4;->this$0:Lcom/perm/kate/VideoFragment;

    iget-object v0, v0, Lcom/perm/kate/VideoFragment;->videoListAdapter:Lcom/perm/kate/VideoListAdapter;

    iget-object v1, p0, Lcom/perm/kate/VideoFragment$4;->this$0:Lcom/perm/kate/VideoFragment;

    iget-object v1, v1, Lcom/perm/kate/VideoFragment;->videos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/perm/kate/VideoListAdapter;->displayNewData(Ljava/util/ArrayList;)V

    goto :goto_0
.end method
