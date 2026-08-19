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

    .line 226
    iput-object p1, p0, Lcom/perm/kate/AlbumCommentsActivity$9;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 242
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 243
    iget-object p1, p0, Lcom/perm/kate/AlbumCommentsActivity$9;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/perm/kate/AlbumCommentsActivity;->access$1102(Lcom/perm/kate/AlbumCommentsActivity;I)I

    .line 244
    iget-object p1, p0, Lcom/perm/kate/AlbumCommentsActivity$9;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 4

    .line 230
    check-cast p1, Ljava/util/ArrayList;

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 231
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 232
    iget-object v2, p0, Lcom/perm/kate/AlbumCommentsActivity$9;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    invoke-static {v2, p1}, Lcom/perm/kate/AlbumCommentsActivity;->access$1000(Lcom/perm/kate/AlbumCommentsActivity;Ljava/util/ArrayList;)V

    .line 233
    iget-object v2, p0, Lcom/perm/kate/AlbumCommentsActivity$9;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v3, p0, Lcom/perm/kate/AlbumCommentsActivity$9;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    invoke-static {v3}, Lcom/perm/kate/AlbumCommentsActivity;->access$800(Lcom/perm/kate/AlbumCommentsActivity;)I

    move-result v3

    if-ge p1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v2, v0}, Lcom/perm/kate/AlbumCommentsActivity;->access$1102(Lcom/perm/kate/AlbumCommentsActivity;I)I

    goto :goto_1

    .line 235
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/AlbumCommentsActivity$9;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    invoke-virtual {p1, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 236
    iget-object p1, p0, Lcom/perm/kate/AlbumCommentsActivity$9;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    invoke-static {p1, v0}, Lcom/perm/kate/AlbumCommentsActivity;->access$1102(Lcom/perm/kate/AlbumCommentsActivity;I)I

    :goto_1
    return-void
.end method
