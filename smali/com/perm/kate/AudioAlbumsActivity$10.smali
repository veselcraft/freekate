.class Lcom/perm/kate/AudioAlbumsActivity$10;
.super Lcom/perm/kate/session/Callback;
.source "AudioAlbumsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/AudioAlbumsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioAlbumsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioAlbumsActivity;Landroid/app/Activity;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/perm/kate/AudioAlbumsActivity$10;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 328
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 329
    iget-object p1, p0, Lcom/perm/kate/AudioAlbumsActivity$10;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 330
    iget-object p1, p0, Lcom/perm/kate/AudioAlbumsActivity$10;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/perm/kate/AudioAlbumsActivity;->access$602(Lcom/perm/kate/AudioAlbumsActivity;I)I

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2

    .line 308
    check-cast p1, Ljava/util/ArrayList;

    .line 309
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v0, p1}, Lcom/perm/kate/db/DataHelper;->createAudioAlbums(Ljava/util/ArrayList;)V

    .line 310
    iget-object v0, p0, Lcom/perm/kate/AudioAlbumsActivity$10;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    invoke-static {v0}, Lcom/perm/kate/AudioAlbumsActivity;->access$400(Lcom/perm/kate/AudioAlbumsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 311
    iget-object v0, p0, Lcom/perm/kate/AudioAlbumsActivity$10;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 312
    iget-object v0, p0, Lcom/perm/kate/AudioAlbumsActivity$10;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    new-instance v1, Lcom/perm/kate/AudioAlbumsActivity$10$1;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/AudioAlbumsActivity$10$1;-><init>(Lcom/perm/kate/AudioAlbumsActivity$10;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
