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

    .line 178
    iput-object p1, p0, Lcom/perm/kate/NewAlbumActivity$5;->this$0:Lcom/perm/kate/NewAlbumActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 219
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 220
    iget-object p1, p0, Lcom/perm/kate/NewAlbumActivity$5;->this$0:Lcom/perm/kate/NewAlbumActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/perm/kate/NewAlbumActivity$5;->this$0:Lcom/perm/kate/NewAlbumActivity;

    invoke-static {v0}, Lcom/perm/kate/NewAlbumActivity;->access$500(Lcom/perm/kate/NewAlbumActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 182
    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_4

    const-string v0, "1"

    .line 183
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 184
    sget-object p1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v0, p0, Lcom/perm/kate/NewAlbumActivity$5;->this$0:Lcom/perm/kate/NewAlbumActivity;

    invoke-static {v0}, Lcom/perm/kate/NewAlbumActivity;->access$600(Lcom/perm/kate/NewAlbumActivity;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/perm/kate/db/DataHelper;->fetchAlbum(J)Lcom/perm/kate/api/Album;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 186
    iget-object v0, p0, Lcom/perm/kate/NewAlbumActivity$5;->this$0:Lcom/perm/kate/NewAlbumActivity;

    invoke-static {v0}, Lcom/perm/kate/NewAlbumActivity;->access$800(Lcom/perm/kate/NewAlbumActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/perm/kate/api/Album;->title:Ljava/lang/String;

    .line 187
    iget-object v0, p0, Lcom/perm/kate/NewAlbumActivity$5;->this$0:Lcom/perm/kate/NewAlbumActivity;

    invoke-static {v0}, Lcom/perm/kate/NewAlbumActivity;->access$900(Lcom/perm/kate/NewAlbumActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/perm/kate/api/Album;->description:Ljava/lang/String;

    .line 188
    iget-object v0, p1, Lcom/perm/kate/api/Album;->privacy:Lcom/perm/kate/api/Privacy;

    if-eqz v0, :cond_0

    .line 189
    iget-object v1, p0, Lcom/perm/kate/NewAlbumActivity$5;->this$0:Lcom/perm/kate/NewAlbumActivity;

    invoke-static {v1}, Lcom/perm/kate/NewAlbumActivity;->access$200(Lcom/perm/kate/NewAlbumActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Privacy;->privacy:Ljava/util/ArrayList;

    .line 190
    :cond_0
    iget-object v0, p1, Lcom/perm/kate/api/Album;->comment_privacy:Lcom/perm/kate/api/Privacy;

    if-eqz v0, :cond_1

    .line 191
    iget-object v1, p0, Lcom/perm/kate/NewAlbumActivity$5;->this$0:Lcom/perm/kate/NewAlbumActivity;

    invoke-static {v1}, Lcom/perm/kate/NewAlbumActivity;->access$400(Lcom/perm/kate/NewAlbumActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Privacy;->privacy:Ljava/util/ArrayList;

    .line 192
    :cond_1
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v0, p1}, Lcom/perm/kate/db/DataHelper;->updateAlbum(Lcom/perm/kate/api/Album;)Z

    .line 194
    :cond_2
    iget-object p1, p0, Lcom/perm/kate/NewAlbumActivity$5;->this$0:Lcom/perm/kate/NewAlbumActivity;

    new-instance v0, Lcom/perm/kate/NewAlbumActivity$5$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewAlbumActivity$5$1;-><init>(Lcom/perm/kate/NewAlbumActivity$5;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 202
    :cond_3
    check-cast p1, Lcom/perm/kate/api/Album;

    if-eqz p1, :cond_4

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 205
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    sget-object p1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {p1, v0}, Lcom/perm/kate/db/DataHelper;->createAlbums(Ljava/util/ArrayList;)V

    .line 207
    iget-object p1, p0, Lcom/perm/kate/NewAlbumActivity$5;->this$0:Lcom/perm/kate/NewAlbumActivity;

    new-instance v0, Lcom/perm/kate/NewAlbumActivity$5$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewAlbumActivity$5$2;-><init>(Lcom/perm/kate/NewAlbumActivity$5;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_4
    :goto_0
    return-void
.end method
