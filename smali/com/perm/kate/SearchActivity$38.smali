.class Lcom/perm/kate/SearchActivity$38;
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
.method public static synthetic $r8$lambda$-tigXAe0LiUtUIhGNnt6qi79Ws4(Lcom/perm/kate/SearchActivity$38;Lcom/perm/kate/api/Newsfeed;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/perm/kate/SearchActivity$38;->lambda$ready$0(Lcom/perm/kate/api/Newsfeed;)V

    return-void
.end method

.method constructor <init>(Lcom/perm/kate/SearchActivity;Landroid/app/Activity;)V
    .locals 0

    .line 1423
    iput-object p1, p0, Lcom/perm/kate/SearchActivity$38;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method

.method private synthetic lambda$ready$0(Lcom/perm/kate/api/Newsfeed;)V
    .locals 3

    .line 1429
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$38;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchActivity;->access$4800(Lcom/perm/kate/SearchActivity;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1430
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$38;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchActivity;->access$4800(Lcom/perm/kate/SearchActivity;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/SearchedNewsAdapter;

    iget-object v2, p0, Lcom/perm/kate/SearchActivity$38;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-direct {v1, v2, p1}, Lcom/perm/kate/SearchedNewsAdapter;-><init>(Landroid/app/Activity;Lcom/perm/kate/api/Newsfeed;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1431
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$38;->this$0:Lcom/perm/kate/SearchActivity;

    iget-object p1, p1, Lcom/perm/kate/api/Newsfeed;->items:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x3

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, p1}, Lcom/perm/kate/SearchActivity;->access$5302(Lcom/perm/kate/SearchActivity;I)I

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 1437
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 1438
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$38;->this$0:Lcom/perm/kate/SearchActivity;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/perm/kate/SearchActivity;->access$5302(Lcom/perm/kate/SearchActivity;I)I

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2

    .line 1426
    check-cast p1, Lcom/perm/kate/api/Newsfeed;

    .line 1427
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$38;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v0, p1}, Lcom/perm/kate/SearchActivity;->access$7900(Lcom/perm/kate/SearchActivity;Lcom/perm/kate/api/Newsfeed;)V

    .line 1428
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$38;->this$0:Lcom/perm/kate/SearchActivity;

    new-instance v1, Lcom/perm/kate/SearchActivity$38$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/SearchActivity$38$$ExternalSyntheticLambda0;-><init>(Lcom/perm/kate/SearchActivity$38;Lcom/perm/kate/api/Newsfeed;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
