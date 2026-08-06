.class Lcom/perm/kate/SearchActivity$16;
.super Lcom/perm/kate/session/Callback;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SearchActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/SearchActivity;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/SearchActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 636
    iput-object p1, p0, Lcom/perm/kate/SearchActivity$16;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 658
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 659
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$16;->this$0:Lcom/perm/kate/SearchActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/perm/kate/SearchActivity;->access$5202(Lcom/perm/kate/SearchActivity;I)I

    .line 660
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$16;->this$0:Lcom/perm/kate/SearchActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/SearchActivity;->showProgressBar(Z)V

    .line 661
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 640
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    .line 642
    .local v0, "page":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Video;>;"
    iget-object v1, p0, Lcom/perm/kate/SearchActivity$16;->this$0:Lcom/perm/kate/SearchActivity;

    new-instance v2, Lcom/perm/kate/SearchActivity$16$1;

    invoke-direct {v2, p0, v0}, Lcom/perm/kate/SearchActivity$16$1;-><init>(Lcom/perm/kate/SearchActivity$16;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lcom/perm/kate/SearchActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 654
    return-void
.end method
