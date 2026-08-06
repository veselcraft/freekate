.class Lcom/perm/kate/AlbumCommentsActivity$9;
.super Lcom/perm/kate/session/Callback;
.source "AlbumCommentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/AlbumCommentsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AlbumCommentsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/AlbumCommentsActivity;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/AlbumCommentsActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/perm/kate/AlbumCommentsActivity$9;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 242
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 243
    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsActivity$9;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/perm/kate/AlbumCommentsActivity;->access$1102(Lcom/perm/kate/AlbumCommentsActivity;I)I

    .line 244
    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsActivity$9;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/AlbumCommentsActivity;->showProgressBar(Z)V

    .line 245
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 6
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 230
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    .line 231
    .local v0, "comments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Comment;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 232
    iget-object v3, p0, Lcom/perm/kate/AlbumCommentsActivity$9;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    invoke-static {v3, v0}, Lcom/perm/kate/AlbumCommentsActivity;->access$1000(Lcom/perm/kate/AlbumCommentsActivity;Ljava/util/ArrayList;)V

    .line 233
    iget-object v3, p0, Lcom/perm/kate/AlbumCommentsActivity$9;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v5, p0, Lcom/perm/kate/AlbumCommentsActivity$9;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    invoke-static {v5}, Lcom/perm/kate/AlbumCommentsActivity;->access$800(Lcom/perm/kate/AlbumCommentsActivity;)I

    move-result v5

    if-ge v4, v5, :cond_0

    :goto_0
    invoke-static {v3, v1}, Lcom/perm/kate/AlbumCommentsActivity;->access$1102(Lcom/perm/kate/AlbumCommentsActivity;I)I

    .line 238
    :goto_1
    return-void

    :cond_0
    move v1, v2

    .line 233
    goto :goto_0

    .line 235
    :cond_1
    iget-object v3, p0, Lcom/perm/kate/AlbumCommentsActivity$9;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    invoke-virtual {v3, v2}, Lcom/perm/kate/AlbumCommentsActivity;->showProgressBar(Z)V

    .line 236
    iget-object v2, p0, Lcom/perm/kate/AlbumCommentsActivity$9;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    invoke-static {v2, v1}, Lcom/perm/kate/AlbumCommentsActivity;->access$1102(Lcom/perm/kate/AlbumCommentsActivity;I)I

    goto :goto_1
.end method
