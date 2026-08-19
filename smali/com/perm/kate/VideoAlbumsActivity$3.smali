.class Lcom/perm/kate/VideoAlbumsActivity$3;
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

    .line 124
    iput-object p1, p0, Lcom/perm/kate/VideoAlbumsActivity$3;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 147
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 148
    iget-object p1, p0, Lcom/perm/kate/VideoAlbumsActivity$3;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/perm/kate/VideoAlbumsActivity$3;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/perm/kate/VideoAlbumsActivity;->access$302(Lcom/perm/kate/VideoAlbumsActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 129
    iget-object p1, p0, Lcom/perm/kate/VideoAlbumsActivity$3;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 130
    iget-object p1, p0, Lcom/perm/kate/VideoAlbumsActivity$3;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    new-instance v0, Lcom/perm/kate/VideoAlbumsActivity$3$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/VideoAlbumsActivity$3$1;-><init>(Lcom/perm/kate/VideoAlbumsActivity$3;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
