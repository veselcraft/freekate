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
    .param p1, "this$0"    # Lcom/perm/kate/PhotoDetailsActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/perm/kate/PhotoDetailsActivity$7;->this$0:Lcom/perm/kate/PhotoDetailsActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 211
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 212
    iget-object v0, p0, Lcom/perm/kate/PhotoDetailsActivity$7;->this$0:Lcom/perm/kate/PhotoDetailsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/PhotoDetailsActivity;->showProgressBar(Z)V

    .line 213
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 202
    iget-object v1, p0, Lcom/perm/kate/PhotoDetailsActivity$7;->this$0:Lcom/perm/kate/PhotoDetailsActivity;

    invoke-virtual {v1, v3}, Lcom/perm/kate/PhotoDetailsActivity;->showProgressBar(Z)V

    move-object v0, p1

    .line 204
    check-cast v0, Ljava/util/ArrayList;

    .line 205
    .local v0, "albums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Album;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 206
    iget-object v2, p0, Lcom/perm/kate/PhotoDetailsActivity$7;->this$0:Lcom/perm/kate/PhotoDetailsActivity;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Album;

    iget-object v1, v1, Lcom/perm/kate/api/Album;->title:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/perm/kate/PhotoDetailsActivity;->access$800(Lcom/perm/kate/PhotoDetailsActivity;Ljava/lang/String;)V

    .line 207
    :cond_0
    return-void
.end method
