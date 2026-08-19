.class Lcom/perm/kate/AlbumCommentsActivity$7;
.super Ljava/lang/Thread;
.source "AlbumCommentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/AlbumCommentsActivity;->setLike(Ljava/lang/Long;Lcom/perm/kate/api/Comment;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AlbumCommentsActivity;

.field final synthetic val$callback_like:Lcom/perm/kate/session/Callback;

.field final synthetic val$comment_id:Ljava/lang/Long;

.field final synthetic val$like:Z


# direct methods
.method constructor <init>(Lcom/perm/kate/AlbumCommentsActivity;ZLjava/lang/Long;Lcom/perm/kate/session/Callback;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/perm/kate/AlbumCommentsActivity$7;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    iput-boolean p2, p0, Lcom/perm/kate/AlbumCommentsActivity$7;->val$like:Z

    iput-object p3, p0, Lcom/perm/kate/AlbumCommentsActivity$7;->val$comment_id:Ljava/lang/Long;

    iput-object p4, p0, Lcom/perm/kate/AlbumCommentsActivity$7;->val$callback_like:Lcom/perm/kate/session/Callback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 197
    iget-boolean v0, p0, Lcom/perm/kate/AlbumCommentsActivity$7;->val$like:Z

    if-eqz v0, :cond_0

    .line 198
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsActivity$7;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    invoke-static {v0}, Lcom/perm/kate/AlbumCommentsActivity;->access$400(Lcom/perm/kate/AlbumCommentsActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/AlbumCommentsActivity$7;->val$comment_id:Ljava/lang/Long;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/perm/kate/AlbumCommentsActivity$7;->val$callback_like:Lcom/perm/kate/session/Callback;

    iget-object v7, p0, Lcom/perm/kate/AlbumCommentsActivity$7;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    const-string v4, "photo_comment"

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/session/Session;->addLike(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    .line 200
    :cond_0
    sget-object v8, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsActivity$7;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    invoke-static {v0}, Lcom/perm/kate/AlbumCommentsActivity;->access$400(Lcom/perm/kate/AlbumCommentsActivity;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget-object v11, p0, Lcom/perm/kate/AlbumCommentsActivity$7;->val$comment_id:Ljava/lang/Long;

    iget-object v12, p0, Lcom/perm/kate/AlbumCommentsActivity$7;->val$callback_like:Lcom/perm/kate/session/Callback;

    iget-object v13, p0, Lcom/perm/kate/AlbumCommentsActivity$7;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    const-string v10, "photo_comment"

    invoke-virtual/range {v8 .. v13}, Lcom/perm/kate/session/Session;->deleteLike(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    :goto_0
    return-void
.end method
