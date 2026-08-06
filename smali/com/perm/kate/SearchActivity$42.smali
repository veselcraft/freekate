.class Lcom/perm/kate/SearchActivity$42;
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
    .line 1477
    iput-object p1, p0, Lcom/perm/kate/SearchActivity$42;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 1493
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 1494
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$42;->this$0:Lcom/perm/kate/SearchActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/perm/kate/SearchActivity;->access$5202(Lcom/perm/kate/SearchActivity;I)I

    .line 1495
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$42;->this$0:Lcom/perm/kate/SearchActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/SearchActivity;->showProgressBar(Z)V

    .line 1496
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 1481
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    .line 1482
    .local v0, "page":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Document;>;"
    iget-object v1, p0, Lcom/perm/kate/SearchActivity$42;->this$0:Lcom/perm/kate/SearchActivity;

    iget-object v1, v1, Lcom/perm/kate/SearchActivity;->docs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1483
    iget-object v1, p0, Lcom/perm/kate/SearchActivity$42;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$5000(Lcom/perm/kate/SearchActivity;)V

    .line 1484
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1485
    iget-object v1, p0, Lcom/perm/kate/SearchActivity$42;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1, v3}, Lcom/perm/kate/SearchActivity;->access$5202(Lcom/perm/kate/SearchActivity;I)I

    .line 1488
    :goto_0
    iget-object v1, p0, Lcom/perm/kate/SearchActivity$42;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-virtual {v1, v3}, Lcom/perm/kate/SearchActivity;->showProgressBar(Z)V

    .line 1489
    return-void

    .line 1487
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/SearchActivity$42;->this$0:Lcom/perm/kate/SearchActivity;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/perm/kate/SearchActivity;->access$5202(Lcom/perm/kate/SearchActivity;I)I

    goto :goto_0
.end method
