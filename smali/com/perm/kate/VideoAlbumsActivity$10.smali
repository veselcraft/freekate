.class Lcom/perm/kate/VideoAlbumsActivity$10;
.super Lcom/perm/kate/session/Callback;
.source "VideoAlbumsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/VideoAlbumsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/VideoAlbumsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/VideoAlbumsActivity;Landroid/app/Activity;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/perm/kate/VideoAlbumsActivity$10;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 271
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 272
    iget-object p1, p0, Lcom/perm/kate/VideoAlbumsActivity$10;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 273
    iget-object p1, p0, Lcom/perm/kate/VideoAlbumsActivity$10;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/perm/kate/VideoAlbumsActivity;->access$502(Lcom/perm/kate/VideoAlbumsActivity;I)I

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2

    .line 251
    check-cast p1, Ljava/util/ArrayList;

    .line 252
    iget-object v0, p0, Lcom/perm/kate/VideoAlbumsActivity$10;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    invoke-static {v0}, Lcom/perm/kate/VideoAlbumsActivity;->access$300(Lcom/perm/kate/VideoAlbumsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 253
    iget-object v0, p0, Lcom/perm/kate/VideoAlbumsActivity$10;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 254
    iget-object v0, p0, Lcom/perm/kate/VideoAlbumsActivity$10;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    new-instance v1, Lcom/perm/kate/VideoAlbumsActivity$10$1;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/VideoAlbumsActivity$10$1;-><init>(Lcom/perm/kate/VideoAlbumsActivity$10;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
