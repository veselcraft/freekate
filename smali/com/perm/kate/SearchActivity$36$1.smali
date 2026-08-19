.class Lcom/perm/kate/SearchActivity$36$1;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/SearchActivity$36;->ready(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/SearchActivity$36;

.field final synthetic val$newsfeed:Lcom/perm/kate/api/Newsfeed;


# direct methods
.method constructor <init>(Lcom/perm/kate/SearchActivity$36;Lcom/perm/kate/api/Newsfeed;)V
    .locals 0

    .line 1385
    iput-object p1, p0, Lcom/perm/kate/SearchActivity$36$1;->this$1:Lcom/perm/kate/SearchActivity$36;

    iput-object p2, p0, Lcom/perm/kate/SearchActivity$36$1;->val$newsfeed:Lcom/perm/kate/api/Newsfeed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1388
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$36$1;->this$1:Lcom/perm/kate/SearchActivity$36;

    iget-object v0, v0, Lcom/perm/kate/SearchActivity$36;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchActivity;->access$4800(Lcom/perm/kate/SearchActivity;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1389
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$36$1;->this$1:Lcom/perm/kate/SearchActivity$36;

    iget-object v0, v0, Lcom/perm/kate/SearchActivity$36;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchActivity;->access$4800(Lcom/perm/kate/SearchActivity;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/SearchedNewsAdapter;

    iget-object v2, p0, Lcom/perm/kate/SearchActivity$36$1;->this$1:Lcom/perm/kate/SearchActivity$36;

    iget-object v2, v2, Lcom/perm/kate/SearchActivity$36;->this$0:Lcom/perm/kate/SearchActivity;

    iget-object v3, p0, Lcom/perm/kate/SearchActivity$36$1;->val$newsfeed:Lcom/perm/kate/api/Newsfeed;

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/SearchedNewsAdapter;-><init>(Landroid/app/Activity;Lcom/perm/kate/api/Newsfeed;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    return-void
.end method
