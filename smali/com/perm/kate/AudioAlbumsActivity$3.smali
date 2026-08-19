.class Lcom/perm/kate/AudioAlbumsActivity$3;
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

    .line 126
    iput-object p1, p0, Lcom/perm/kate/AudioAlbumsActivity$3;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 150
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 151
    iget-object p1, p0, Lcom/perm/kate/AudioAlbumsActivity$3;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 152
    iget-object p1, p0, Lcom/perm/kate/AudioAlbumsActivity$3;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/perm/kate/AudioAlbumsActivity;->access$602(Lcom/perm/kate/AudioAlbumsActivity;I)I

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/perm/kate/AudioAlbumsActivity$3;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/perm/kate/AudioAlbumsActivity;->access$402(Lcom/perm/kate/AudioAlbumsActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 131
    sget-object p1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v0, p0, Lcom/perm/kate/AudioAlbumsActivity$3;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    invoke-static {v0}, Lcom/perm/kate/AudioAlbumsActivity;->access$100(Lcom/perm/kate/AudioAlbumsActivity;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/perm/kate/db/DataHelper;->deleteAudioAlbums(J)Z

    .line 132
    sget-object p1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v0, p0, Lcom/perm/kate/AudioAlbumsActivity$3;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    invoke-static {v0}, Lcom/perm/kate/AudioAlbumsActivity;->access$400(Lcom/perm/kate/AudioAlbumsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/perm/kate/db/DataHelper;->createAudioAlbums(Ljava/util/ArrayList;)V

    .line 133
    iget-object p1, p0, Lcom/perm/kate/AudioAlbumsActivity$3;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 134
    iget-object p1, p0, Lcom/perm/kate/AudioAlbumsActivity$3;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    new-instance v0, Lcom/perm/kate/AudioAlbumsActivity$3$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/AudioAlbumsActivity$3$1;-><init>(Lcom/perm/kate/AudioAlbumsActivity$3;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
