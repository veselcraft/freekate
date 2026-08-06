.class Lcom/perm/kate/AlbumCommentsActivity$5;
.super Ljava/lang/Thread;
.source "AlbumCommentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/AlbumCommentsActivity;->removeComment(Lcom/perm/kate/api/Comment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AlbumCommentsActivity;

.field final synthetic val$callback_delete:Lcom/perm/kate/session/Callback;

.field final synthetic val$comment:Lcom/perm/kate/api/Comment;


# direct methods
.method constructor <init>(Lcom/perm/kate/AlbumCommentsActivity;Lcom/perm/kate/api/Comment;Lcom/perm/kate/session/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/AlbumCommentsActivity;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/perm/kate/AlbumCommentsActivity$5;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    iput-object p2, p0, Lcom/perm/kate/AlbumCommentsActivity$5;->val$comment:Lcom/perm/kate/api/Comment;

    iput-object p3, p0, Lcom/perm/kate/AlbumCommentsActivity$5;->val$callback_delete:Lcom/perm/kate/session/Callback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 171
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/AlbumCommentsActivity$5;->val$comment:Lcom/perm/kate/api/Comment;

    iget-wide v1, v1, Lcom/perm/kate/api/Comment;->pid:J

    iget-object v3, p0, Lcom/perm/kate/AlbumCommentsActivity$5;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    invoke-static {v3}, Lcom/perm/kate/AlbumCommentsActivity;->access$400(Lcom/perm/kate/AlbumCommentsActivity;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/AlbumCommentsActivity$5;->val$comment:Lcom/perm/kate/api/Comment;

    iget-wide v4, v4, Lcom/perm/kate/api/Comment;->cid:J

    iget-object v6, p0, Lcom/perm/kate/AlbumCommentsActivity$5;->val$callback_delete:Lcom/perm/kate/session/Callback;

    iget-object v7, p0, Lcom/perm/kate/AlbumCommentsActivity$5;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    invoke-virtual/range {v0 .. v7}, Lcom/perm/kate/session/Session;->deletePhotoComment(JLjava/lang/Long;JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 172
    return-void
.end method
