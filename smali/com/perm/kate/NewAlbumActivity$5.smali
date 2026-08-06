.class Lcom/perm/kate/NewAlbumActivity$5;
.super Lcom/perm/kate/session/Callback;
.source "NewAlbumActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/NewAlbumActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewAlbumActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewAlbumActivity;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/NewAlbumActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/perm/kate/NewAlbumActivity$5;->this$0:Lcom/perm/kate/NewAlbumActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 215
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 216
    iget-object v0, p0, Lcom/perm/kate/NewAlbumActivity$5;->this$0:Lcom/perm/kate/NewAlbumActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/NewAlbumActivity;->showProgressBar(Z)V

    .line 217
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 8
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 178
    iget-object v4, p0, Lcom/perm/kate/NewAlbumActivity$5;->this$0:Lcom/perm/kate/NewAlbumActivity;

    invoke-static {v4}, Lcom/perm/kate/NewAlbumActivity;->access$500(Lcom/perm/kate/NewAlbumActivity;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v3, p1

    .line 179
    check-cast v3, Ljava/lang/String;

    .line 180
    .local v3, "str_res":Ljava/lang/String;
    if-eqz v3, :cond_2

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 181
    sget-object v4, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v5, p0, Lcom/perm/kate/NewAlbumActivity$5;->this$0:Lcom/perm/kate/NewAlbumActivity;

    invoke-static {v5}, Lcom/perm/kate/NewAlbumActivity;->access$600(Lcom/perm/kate/NewAlbumActivity;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/perm/kate/db/DataHelper;->fetchAlbum(J)Lcom/perm/kate/api/Album;

    move-result-object v0

    .line 182
    .local v0, "editable_album":Lcom/perm/kate/api/Album;
    if-eqz v0, :cond_1

    .line 183
    iget-object v4, p0, Lcom/perm/kate/NewAlbumActivity$5;->this$0:Lcom/perm/kate/NewAlbumActivity;

    invoke-static {v4}, Lcom/perm/kate/NewAlbumActivity;->access$800(Lcom/perm/kate/NewAlbumActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/perm/kate/api/Album;->title:Ljava/lang/String;

    .line 184
    iget-object v4, p0, Lcom/perm/kate/NewAlbumActivity$5;->this$0:Lcom/perm/kate/NewAlbumActivity;

    invoke-static {v4}, Lcom/perm/kate/NewAlbumActivity;->access$900(Lcom/perm/kate/NewAlbumActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/perm/kate/api/Album;->description:Ljava/lang/String;

    .line 185
    iget-object v4, v0, Lcom/perm/kate/api/Album;->privacy:Lcom/perm/kate/api/Privacy;

    if-eqz v4, :cond_0

    .line 186
    iget-object v4, v0, Lcom/perm/kate/api/Album;->privacy:Lcom/perm/kate/api/Privacy;

    iget-object v5, p0, Lcom/perm/kate/NewAlbumActivity$5;->this$0:Lcom/perm/kate/NewAlbumActivity;

    invoke-static {v5}, Lcom/perm/kate/NewAlbumActivity;->access$200(Lcom/perm/kate/NewAlbumActivity;)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, v4, Lcom/perm/kate/api/Privacy;->privacy:Ljava/util/ArrayList;

    .line 188
    :cond_0
    sget-object v4, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v4, v0}, Lcom/perm/kate/db/DataHelper;->updateAlbum(Lcom/perm/kate/api/Album;)Z

    .line 190
    :cond_1
    iget-object v4, p0, Lcom/perm/kate/NewAlbumActivity$5;->this$0:Lcom/perm/kate/NewAlbumActivity;

    new-instance v5, Lcom/perm/kate/NewAlbumActivity$5$1;

    invoke-direct {v5, p0}, Lcom/perm/kate/NewAlbumActivity$5$1;-><init>(Lcom/perm/kate/NewAlbumActivity$5;)V

    invoke-virtual {v4, v5}, Lcom/perm/kate/NewAlbumActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 211
    .end local v0    # "editable_album":Lcom/perm/kate/api/Album;
    .end local v3    # "str_res":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    :cond_3
    move-object v2, p1

    .line 198
    check-cast v2, Lcom/perm/kate/api/Album;

    .line 199
    .local v2, "status_res":Lcom/perm/kate/api/Album;
    if-eqz v2, :cond_2

    .line 200
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .local v1, "new_albums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Album;>;"
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    sget-object v4, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v4, v1}, Lcom/perm/kate/db/DataHelper;->createAlbums(Ljava/util/ArrayList;)V

    .line 203
    iget-object v4, p0, Lcom/perm/kate/NewAlbumActivity$5;->this$0:Lcom/perm/kate/NewAlbumActivity;

    new-instance v5, Lcom/perm/kate/NewAlbumActivity$5$2;

    invoke-direct {v5, p0}, Lcom/perm/kate/NewAlbumActivity$5$2;-><init>(Lcom/perm/kate/NewAlbumActivity$5;)V

    invoke-virtual {v4, v5}, Lcom/perm/kate/NewAlbumActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
