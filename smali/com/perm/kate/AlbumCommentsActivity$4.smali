.class Lcom/perm/kate/AlbumCommentsActivity$4;
.super Lcom/perm/kate/session/Callback;
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

.field final synthetic val$comment:Lcom/perm/kate/api/Comment;


# direct methods
.method constructor <init>(Lcom/perm/kate/AlbumCommentsActivity;Landroid/app/Activity;Lcom/perm/kate/api/Comment;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/perm/kate/AlbumCommentsActivity$4;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    iput-object p3, p0, Lcom/perm/kate/AlbumCommentsActivity$4;->val$comment:Lcom/perm/kate/api/Comment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 164
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 165
    iget-object p1, p0, Lcom/perm/kate/AlbumCommentsActivity$4;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsActivity$4;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 158
    check-cast p1, Ljava/lang/Boolean;

    .line 159
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 160
    iget-object p1, p0, Lcom/perm/kate/AlbumCommentsActivity$4;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsActivity$4;->val$comment:Lcom/perm/kate/api/Comment;

    invoke-static {p1, v0}, Lcom/perm/kate/AlbumCommentsActivity;->access$500(Lcom/perm/kate/AlbumCommentsActivity;Lcom/perm/kate/api/Comment;)V

    :cond_0
    return-void
.end method
