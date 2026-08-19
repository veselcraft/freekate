.class Lcom/perm/kate/VideoListAdapter$1;
.super Ljava/lang/Object;
.source "VideoListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/VideoListAdapter;


# direct methods
.method constructor <init>(Lcom/perm/kate/VideoListAdapter;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/perm/kate/VideoListAdapter$1;->this$0:Lcom/perm/kate/VideoListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 189
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/Video;

    .line 190
    iget-wide v0, p1, Lcom/perm/kate/api/Video;->vid:J

    iget-wide v2, p1, Lcom/perm/kate/api/Video;->owner_id:J

    iget-object p1, p0, Lcom/perm/kate/VideoListAdapter$1;->this$0:Lcom/perm/kate/VideoListAdapter;

    invoke-static {p1}, Lcom/perm/kate/VideoListAdapter;->access$000(Lcom/perm/kate/VideoListAdapter;)Landroid/app/Activity;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lcom/perm/kate/BaseActivity;

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcom/perm/kate/VideoLogic;->fetchAndPlay(JJLjava/lang/String;Lcom/perm/kate/BaseActivity;)V

    return-void
.end method
