.class Lcom/perm/kate/AlbumCommentsActivity$14;
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

    .line 397
    iput-object p1, p0, Lcom/perm/kate/AlbumCommentsActivity$14;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 2

    .line 401
    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsActivity$14;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 402
    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsActivity$14;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/perm/kate/AlbumCommentsActivity;->access$1200(Lcom/perm/kate/AlbumCommentsActivity;Ljava/util/ArrayList;)V

    .line 403
    iget-object p1, p0, Lcom/perm/kate/AlbumCommentsActivity$14;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    invoke-static {p1}, Lcom/perm/kate/AlbumCommentsActivity;->access$600(Lcom/perm/kate/AlbumCommentsActivity;)V

    return-void
.end method
