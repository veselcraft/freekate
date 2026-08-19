.class Lcom/perm/kate/CommentsSearchActivity$2;
.super Lcom/perm/kate/session/Callback;
.source "CommentsSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/CommentsSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/CommentsSearchActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/CommentsSearchActivity;Landroid/app/Activity;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/perm/kate/CommentsSearchActivity$2;->this$0:Lcom/perm/kate/CommentsSearchActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 98
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 99
    iget-object p1, p0, Lcom/perm/kate/CommentsSearchActivity$2;->this$0:Lcom/perm/kate/CommentsSearchActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 100
    iget-object p1, p0, Lcom/perm/kate/CommentsSearchActivity$2;->this$0:Lcom/perm/kate/CommentsSearchActivity;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/perm/kate/CommentsSearchActivity;->access$102(Lcom/perm/kate/CommentsSearchActivity;I)I

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 4

    .line 88
    check-cast p1, Lcom/perm/kate/api/CommentList;

    .line 89
    iget-object v0, p0, Lcom/perm/kate/CommentsSearchActivity$2;->this$0:Lcom/perm/kate/CommentsSearchActivity;

    iget-object v1, p1, Lcom/perm/kate/api/CommentList;->comments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/perm/kate/CommentsSearchActivity$2;->this$0:Lcom/perm/kate/CommentsSearchActivity;

    iget v2, v2, Lcom/perm/kate/CommentsSearchActivity;->page_size:I

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/perm/kate/CommentsSearchActivity;->access$102(Lcom/perm/kate/CommentsSearchActivity;I)I

    .line 90
    iget-object v0, p0, Lcom/perm/kate/CommentsSearchActivity$2;->this$0:Lcom/perm/kate/CommentsSearchActivity;

    iget-object v0, v0, Lcom/perm/kate/CommentsSearchActivity;->comments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 91
    iget-object v0, p0, Lcom/perm/kate/CommentsSearchActivity$2;->this$0:Lcom/perm/kate/CommentsSearchActivity;

    iget-object v0, v0, Lcom/perm/kate/CommentsSearchActivity;->comments:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/perm/kate/api/CommentList;->comments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 92
    iget-object p1, p0, Lcom/perm/kate/CommentsSearchActivity$2;->this$0:Lcom/perm/kate/CommentsSearchActivity;

    invoke-static {p1}, Lcom/perm/kate/CommentsSearchActivity;->access$200(Lcom/perm/kate/CommentsSearchActivity;)V

    .line 93
    iget-object p1, p0, Lcom/perm/kate/CommentsSearchActivity$2;->this$0:Lcom/perm/kate/CommentsSearchActivity;

    invoke-virtual {p1, v3}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method
