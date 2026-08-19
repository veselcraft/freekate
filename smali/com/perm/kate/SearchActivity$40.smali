.class Lcom/perm/kate/SearchActivity$40;
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

    .line 1473
    iput-object p1, p0, Lcom/perm/kate/SearchActivity$40;->this$0:Lcom/perm/kate/SearchActivity;

    iput-object p2, p0, Lcom/perm/kate/SearchActivity$40;->val$newsfeed:Lcom/perm/kate/api/Newsfeed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1476
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$40;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchActivity;->access$4800(Lcom/perm/kate/SearchActivity;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/SearchActivity$40;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchActivity;->access$4800(Lcom/perm/kate/SearchActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/SearchActivity$40;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchActivity;->access$4800(Lcom/perm/kate/SearchActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/perm/kate/SearchedNewsAdapter;

    if-eqz v0, :cond_0

    .line 1477
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$40;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchActivity;->access$4800(Lcom/perm/kate/SearchActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/SearchedNewsAdapter;

    .line 1478
    iget-object v1, p0, Lcom/perm/kate/SearchActivity$40;->val$newsfeed:Lcom/perm/kate/api/Newsfeed;

    invoke-virtual {v0, v1}, Lcom/perm/kate/SearchedNewsAdapter;->addData(Lcom/perm/kate/api/Newsfeed;)V

    :cond_0
    return-void
.end method
