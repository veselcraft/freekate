.class Lcom/perm/kate/AlbumCommentsActivity$6;
.super Lcom/perm/kate/session/Callback;
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

.field final synthetic val$comment:Lcom/perm/kate/api/Comment;

.field final synthetic val$like:Z


# direct methods
.method constructor <init>(Lcom/perm/kate/AlbumCommentsActivity;Landroid/app/Activity;Lcom/perm/kate/api/Comment;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/AlbumCommentsActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/perm/kate/AlbumCommentsActivity$6;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    iput-object p3, p0, Lcom/perm/kate/AlbumCommentsActivity$6;->val$comment:Lcom/perm/kate/api/Comment;

    iput-boolean p4, p0, Lcom/perm/kate/AlbumCommentsActivity$6;->val$like:Z

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsActivity$6;->val$comment:Lcom/perm/kate/api/Comment;

    iget-boolean v1, p0, Lcom/perm/kate/AlbumCommentsActivity$6;->val$like:Z

    iput-boolean v1, v0, Lcom/perm/kate/api/Comment;->user_like:Z

    .line 187
    iget-boolean v0, p0, Lcom/perm/kate/AlbumCommentsActivity$6;->val$like:Z

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsActivity$6;->val$comment:Lcom/perm/kate/api/Comment;

    iget v1, v0, Lcom/perm/kate/api/Comment;->like_count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/perm/kate/api/Comment;->like_count:I

    .line 191
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsActivity$6;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    invoke-static {v0}, Lcom/perm/kate/AlbumCommentsActivity;->access$600(Lcom/perm/kate/AlbumCommentsActivity;)V

    .line 192
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsActivity$6;->val$comment:Lcom/perm/kate/api/Comment;

    iget v1, v0, Lcom/perm/kate/api/Comment;->like_count:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/perm/kate/api/Comment;->like_count:I

    goto :goto_0
.end method
