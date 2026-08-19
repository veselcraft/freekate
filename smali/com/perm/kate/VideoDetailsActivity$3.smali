.class Lcom/perm/kate/VideoDetailsActivity$3;
.super Lcom/perm/kate/session/Callback;
.source "VideoDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/VideoDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/VideoDetailsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/VideoDetailsActivity;Landroid/app/Activity;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/perm/kate/VideoDetailsActivity$3;->this$0:Lcom/perm/kate/VideoDetailsActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 135
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 136
    iget-object p1, p0, Lcom/perm/kate/VideoDetailsActivity$3;->this$0:Lcom/perm/kate/VideoDetailsActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/perm/kate/VideoDetailsActivity$3;->this$0:Lcom/perm/kate/VideoDetailsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 126
    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 127
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 128
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/User;

    invoke-virtual {v0, p1, v1}, Lcom/perm/kate/db/DataHelper;->createOrUpdateUser(Lcom/perm/kate/api/User;Z)V

    .line 129
    iget-object p1, p0, Lcom/perm/kate/VideoDetailsActivity$3;->this$0:Lcom/perm/kate/VideoDetailsActivity;

    invoke-static {p1}, Lcom/perm/kate/VideoDetailsActivity;->access$300(Lcom/perm/kate/VideoDetailsActivity;)V

    :cond_0
    return-void
.end method
