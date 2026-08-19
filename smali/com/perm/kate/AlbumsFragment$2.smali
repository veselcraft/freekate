.class Lcom/perm/kate/AlbumsFragment$2;
.super Lcom/perm/kate/session/Callback;
.source "AlbumsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AlbumsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/AlbumsFragment;Landroid/app/Activity;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/perm/kate/AlbumsFragment$2;->this$0:Lcom/perm/kate/AlbumsFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 129
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 130
    iget-object p1, p0, Lcom/perm/kate/AlbumsFragment$2;->this$0:Lcom/perm/kate/AlbumsFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 5

    .line 118
    check-cast p1, Ljava/util/ArrayList;

    .line 119
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 120
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v3, p0, Lcom/perm/kate/AlbumsFragment$2;->this$0:Lcom/perm/kate/AlbumsFragment;

    invoke-static {v3}, Lcom/perm/kate/AlbumsFragment;->access$000(Lcom/perm/kate/AlbumsFragment;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/perm/kate/db/DataHelper;->deleteUserAlbums(J)Z

    .line 121
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v2, p1}, Lcom/perm/kate/db/DataHelper;->createAlbums(Ljava/util/ArrayList;)V

    const-string p1, "alf_recreateAlbums"

    .line 122
    invoke-static {v0, v1, p1}, Lcom/perm/kate/Helper;->reportDbWriteDuration(JLjava/lang/String;)V

    .line 123
    iget-object p1, p0, Lcom/perm/kate/AlbumsFragment$2;->this$0:Lcom/perm/kate/AlbumsFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 124
    iget-object p1, p0, Lcom/perm/kate/AlbumsFragment$2;->this$0:Lcom/perm/kate/AlbumsFragment;

    invoke-static {p1}, Lcom/perm/kate/AlbumsFragment;->access$100(Lcom/perm/kate/AlbumsFragment;)V

    return-void
.end method
