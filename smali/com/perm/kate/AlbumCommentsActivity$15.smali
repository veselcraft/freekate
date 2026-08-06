.class Lcom/perm/kate/AlbumCommentsActivity$15;
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
    .line 400
    iput-object p1, p0, Lcom/perm/kate/AlbumCommentsActivity$15;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 404
    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsActivity$15;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/AlbumCommentsActivity;->showProgressBar(Z)V

    .line 405
    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsActivity$15;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "data":Ljava/lang/Object;
    invoke-static {v0, p1}, Lcom/perm/kate/AlbumCommentsActivity;->access$1200(Lcom/perm/kate/AlbumCommentsActivity;Ljava/util/ArrayList;)V

    .line 406
    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsActivity$15;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    invoke-static {v0}, Lcom/perm/kate/AlbumCommentsActivity;->access$600(Lcom/perm/kate/AlbumCommentsActivity;)V

    .line 407
    return-void
.end method
