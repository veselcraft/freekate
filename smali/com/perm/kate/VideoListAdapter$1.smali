.class Lcom/perm/kate/VideoListAdapter$1;
.super Ljava/lang/Object;
.source "VideoListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/VideoListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/VideoListAdapter;


# direct methods
.method constructor <init>(Lcom/perm/kate/VideoListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/VideoListAdapter;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/perm/kate/VideoListAdapter$1;->this$0:Lcom/perm/kate/VideoListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 175
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perm/kate/api/Video;

    .line 176
    .local v6, "video":Lcom/perm/kate/api/Video;
    iget-wide v0, v6, Lcom/perm/kate/api/Video;->vid:J

    iget-wide v2, v6, Lcom/perm/kate/api/Video;->owner_id:J

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/perm/kate/VideoListAdapter$1;->this$0:Lcom/perm/kate/VideoListAdapter;

    invoke-static {v5}, Lcom/perm/kate/VideoListAdapter;->access$000(Lcom/perm/kate/VideoListAdapter;)Landroid/app/Activity;

    move-result-object v5

    check-cast v5, Lcom/perm/kate/BaseActivity;

    invoke-static/range {v0 .. v5}, Lcom/perm/kate/VideoLogic;->fetchAndPlay(JJLjava/lang/String;Lcom/perm/kate/BaseActivity;)V

    .line 177
    return-void
.end method
