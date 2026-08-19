.class Lcom/perm/kate/PhotoDetailsActivity$7;
.super Lcom/perm/kate/session/Callback;
.source "PhotoDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PhotoDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PhotoDetailsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotoDetailsActivity;Landroid/app/Activity;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/perm/kate/PhotoDetailsActivity$7;->this$0:Lcom/perm/kate/PhotoDetailsActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 211
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 212
    iget-object p1, p0, Lcom/perm/kate/PhotoDetailsActivity$7;->this$0:Lcom/perm/kate/PhotoDetailsActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/perm/kate/PhotoDetailsActivity$7;->this$0:Lcom/perm/kate/PhotoDetailsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 204
    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 205
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/perm/kate/PhotoDetailsActivity$7;->this$0:Lcom/perm/kate/PhotoDetailsActivity;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/Album;

    iget-object p1, p1, Lcom/perm/kate/api/Album;->title:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/perm/kate/PhotoDetailsActivity;->access$800(Lcom/perm/kate/PhotoDetailsActivity;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
