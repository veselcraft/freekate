.class Lcom/perm/kate/VideoAlbumsActivity$6;
.super Ljava/lang/Thread;
.source "VideoAlbumsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/VideoAlbumsActivity;->deleteVideoAlbum(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/VideoAlbumsActivity;

.field final synthetic val$album_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/VideoAlbumsActivity;J)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/perm/kate/VideoAlbumsActivity$6;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    iput-wide p2, p0, Lcom/perm/kate/VideoAlbumsActivity$6;->val$album_id:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 201
    iget-object v0, p0, Lcom/perm/kate/VideoAlbumsActivity$6;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 202
    iget-object v0, p0, Lcom/perm/kate/VideoAlbumsActivity$6;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    invoke-static {v0}, Lcom/perm/kate/VideoAlbumsActivity;->access$100(Lcom/perm/kate/VideoAlbumsActivity;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const-wide/16 v0, -0x1

    iget-object v2, p0, Lcom/perm/kate/VideoAlbumsActivity$6;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    invoke-static {v2}, Lcom/perm/kate/VideoAlbumsActivity;->access$100(Lcom/perm/kate/VideoAlbumsActivity;)J

    move-result-wide v2

    mul-long v2, v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v4, v0

    .line 203
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v2, p0, Lcom/perm/kate/VideoAlbumsActivity$6;->val$album_id:J

    iget-object v0, p0, Lcom/perm/kate/VideoAlbumsActivity$6;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    invoke-static {v0}, Lcom/perm/kate/VideoAlbumsActivity;->access$800(Lcom/perm/kate/VideoAlbumsActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v5

    iget-object v6, p0, Lcom/perm/kate/VideoAlbumsActivity$6;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    invoke-virtual/range {v1 .. v6}, Lcom/perm/kate/session/Session;->deleteVideoAlbum(JLjava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 204
    iget-object v0, p0, Lcom/perm/kate/VideoAlbumsActivity$6;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method
