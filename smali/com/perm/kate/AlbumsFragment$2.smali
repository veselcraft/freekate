.class Lcom/perm/kate/AlbumsFragment$2;
.super Lcom/perm/kate/session/Callback;
.source "AlbumsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/AlbumsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AlbumsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/AlbumsFragment;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/AlbumsFragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/perm/kate/AlbumsFragment$2;->this$0:Lcom/perm/kate/AlbumsFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 117
    iget-object v0, p0, Lcom/perm/kate/AlbumsFragment$2;->this$0:Lcom/perm/kate/AlbumsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/AlbumsFragment;->showProgressBar(Z)V

    .line 118
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 107
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    .line 108
    .local v0, "albums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Album;>;"
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, p0, Lcom/perm/kate/AlbumsFragment$2;->this$0:Lcom/perm/kate/AlbumsFragment;

    invoke-static {v2}, Lcom/perm/kate/AlbumsFragment;->access$000(Lcom/perm/kate/AlbumsFragment;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/perm/kate/db/DataHelper;->deleteUserAlbums(J)Z

    .line 109
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v1, v0}, Lcom/perm/kate/db/DataHelper;->createAlbums(Ljava/util/ArrayList;)V

    .line 110
    iget-object v1, p0, Lcom/perm/kate/AlbumsFragment$2;->this$0:Lcom/perm/kate/AlbumsFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/perm/kate/AlbumsFragment;->showProgressBar(Z)V

    .line 111
    iget-object v1, p0, Lcom/perm/kate/AlbumsFragment$2;->this$0:Lcom/perm/kate/AlbumsFragment;

    invoke-static {v1}, Lcom/perm/kate/AlbumsFragment;->access$100(Lcom/perm/kate/AlbumsFragment;)V

    .line 112
    return-void
.end method
