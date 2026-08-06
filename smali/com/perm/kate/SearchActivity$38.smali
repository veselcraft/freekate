.class Lcom/perm/kate/SearchActivity$38;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/SearchActivity;->newsRequeryOnUiThread(Lcom/perm/kate/api/Newsfeed;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SearchActivity;

.field final synthetic val$newsfeed:Lcom/perm/kate/api/Newsfeed;


# direct methods
.method constructor <init>(Lcom/perm/kate/SearchActivity;Lcom/perm/kate/api/Newsfeed;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 1361
    iput-object p1, p0, Lcom/perm/kate/SearchActivity$38;->this$0:Lcom/perm/kate/SearchActivity;

    iput-object p2, p0, Lcom/perm/kate/SearchActivity$38;->val$newsfeed:Lcom/perm/kate/api/Newsfeed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1364
    iget-object v1, p0, Lcom/perm/kate/SearchActivity$38;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$4700(Lcom/perm/kate/SearchActivity;)Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/perm/kate/SearchActivity$38;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$4700(Lcom/perm/kate/SearchActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/perm/kate/SearchActivity$38;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$4700(Lcom/perm/kate/SearchActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    instance-of v1, v1, Lcom/perm/kate/SearchedNewsAdapter;

    if-eqz v1, :cond_0

    .line 1365
    iget-object v1, p0, Lcom/perm/kate/SearchActivity$38;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$4700(Lcom/perm/kate/SearchActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/SearchedNewsAdapter;

    .line 1366
    .local v0, "searched_news_adapter":Lcom/perm/kate/SearchedNewsAdapter;
    iget-object v1, p0, Lcom/perm/kate/SearchActivity$38;->val$newsfeed:Lcom/perm/kate/api/Newsfeed;

    invoke-virtual {v0, v1}, Lcom/perm/kate/SearchedNewsAdapter;->addData(Lcom/perm/kate/api/Newsfeed;)V

    .line 1368
    .end local v0    # "searched_news_adapter":Lcom/perm/kate/SearchedNewsAdapter;
    :cond_0
    return-void
.end method
