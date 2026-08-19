.class Lcom/perm/kate/SearchActivity$10$1;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/SearchActivity$10;->ready(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/SearchActivity$10;


# direct methods
.method constructor <init>(Lcom/perm/kate/SearchActivity$10;)V
    .locals 0

    .line 506
    iput-object p1, p0, Lcom/perm/kate/SearchActivity$10$1;->this$1:Lcom/perm/kate/SearchActivity$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 509
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$10$1;->this$1:Lcom/perm/kate/SearchActivity$10;

    iget-object v0, v0, Lcom/perm/kate/SearchActivity$10;->this$0:Lcom/perm/kate/SearchActivity;

    iget-object v0, v0, Lcom/perm/kate/SearchActivity;->videos:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 510
    new-instance v0, Lcom/perm/kate/VideoListAdapter;

    iget-object v1, p0, Lcom/perm/kate/SearchActivity$10$1;->this$1:Lcom/perm/kate/SearchActivity$10;

    iget-object v1, v1, Lcom/perm/kate/SearchActivity$10;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-direct {v0, v1}, Lcom/perm/kate/VideoListAdapter;-><init>(Landroid/app/Activity;)V

    .line 511
    iget-object v1, p0, Lcom/perm/kate/SearchActivity$10$1;->this$1:Lcom/perm/kate/SearchActivity$10;

    iget-object v1, v1, Lcom/perm/kate/SearchActivity$10;->this$0:Lcom/perm/kate/SearchActivity;

    iget-object v1, v1, Lcom/perm/kate/SearchActivity;->videos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/perm/kate/VideoListAdapter;->displayNewData(Ljava/util/ArrayList;)V

    .line 512
    iget-object v1, p0, Lcom/perm/kate/SearchActivity$10$1;->this$1:Lcom/perm/kate/SearchActivity$10;

    iget-object v1, v1, Lcom/perm/kate/SearchActivity$10;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$4800(Lcom/perm/kate/SearchActivity;)Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 513
    iget-object v1, p0, Lcom/perm/kate/SearchActivity$10$1;->this$1:Lcom/perm/kate/SearchActivity$10;

    iget-object v1, v1, Lcom/perm/kate/SearchActivity$10;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$4800(Lcom/perm/kate/SearchActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$10$1;->this$1:Lcom/perm/kate/SearchActivity$10;

    iget-object v0, v0, Lcom/perm/kate/SearchActivity$10;->this$0:Lcom/perm/kate/SearchActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method
