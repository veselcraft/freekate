.class Lcom/perm/kate/PhotosActivity$14;
.super Lcom/perm/kate/session/Callback;
.source "PhotosActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PhotosActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PhotosActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotosActivity;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/PhotosActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 656
    iput-object p1, p0, Lcom/perm/kate/PhotosActivity$14;->this$0:Lcom/perm/kate/PhotosActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 683
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 684
    iget-object v0, p0, Lcom/perm/kate/PhotosActivity$14;->this$0:Lcom/perm/kate/PhotosActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/perm/kate/PhotosActivity;->access$202(Lcom/perm/kate/PhotosActivity;I)I

    .line 685
    iget-object v0, p0, Lcom/perm/kate/PhotosActivity$14;->this$0:Lcom/perm/kate/PhotosActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/PhotosActivity;->showProgressBar(Z)V

    .line 686
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 14
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 660
    move-object v1, p1

    check-cast v1, Ljava/util/ArrayList;

    .line 661
    .local v1, "new_photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Photo;>;"
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 662
    .local v6, "account_id":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 663
    .local v8, "t1":J
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v0, v1, v6, v7}, Lcom/perm/kate/db/DataHelper;->createOrUpdatePhotos(Ljava/util/ArrayList;J)V

    .line 664
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, p0, Lcom/perm/kate/PhotosActivity$14;->this$0:Lcom/perm/kate/PhotosActivity;

    iget-wide v2, v2, Lcom/perm/kate/PhotosActivity;->aid:J

    iget-object v4, p0, Lcom/perm/kate/PhotosActivity$14;->this$0:Lcom/perm/kate/PhotosActivity;

    iget-wide v4, v4, Lcom/perm/kate/PhotosActivity;->album_owner_id:J

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/db/DataHelper;->createAlbumPhotos(Ljava/util/ArrayList;JJ)V

    .line 665
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    .line 666
    .local v10, "t2":J
    const-string v0, "Kate.PhotosActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Create album photos duration "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-long v4, v10, v8

    const-wide/32 v12, 0xf4240

    div-long/2addr v4, v12

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    iget-object v0, p0, Lcom/perm/kate/PhotosActivity$14;->this$0:Lcom/perm/kate/PhotosActivity;

    iget-object v0, v0, Lcom/perm/kate/PhotosActivity;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 668
    iget-object v0, p0, Lcom/perm/kate/PhotosActivity$14;->this$0:Lcom/perm/kate/PhotosActivity;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/perm/kate/PhotosActivity;->showProgressBar(Z)V

    .line 669
    iget-object v0, p0, Lcom/perm/kate/PhotosActivity$14;->this$0:Lcom/perm/kate/PhotosActivity;

    new-instance v2, Lcom/perm/kate/PhotosActivity$14$1;

    invoke-direct {v2, p0, v1}, Lcom/perm/kate/PhotosActivity$14$1;-><init>(Lcom/perm/kate/PhotosActivity$14;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v2}, Lcom/perm/kate/PhotosActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 679
    return-void
.end method
