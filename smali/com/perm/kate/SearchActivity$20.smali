.class Lcom/perm/kate/SearchActivity$20;
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
    .line 851
    iput-object p1, p0, Lcom/perm/kate/SearchActivity$20;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 868
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 869
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$20;->this$0:Lcom/perm/kate/SearchActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/perm/kate/SearchActivity;->access$5202(Lcom/perm/kate/SearchActivity;I)I

    .line 870
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$20;->this$0:Lcom/perm/kate/SearchActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/SearchActivity;->showProgressBar(Z)V

    .line 871
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 7
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 855
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    .line 856
    .local v0, "page":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/User;>;"
    iget-object v1, p0, Lcom/perm/kate/SearchActivity$20;->this$0:Lcom/perm/kate/SearchActivity;

    iget-wide v2, v1, Lcom/perm/kate/SearchActivity;->offset:J

    iget-object v4, p0, Lcom/perm/kate/SearchActivity$20;->this$0:Lcom/perm/kate/SearchActivity;

    iget-object v4, v4, Lcom/perm/kate/SearchActivity;->user_page_size:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/perm/kate/SearchActivity;->offset:J

    .line 857
    iget-object v1, p0, Lcom/perm/kate/SearchActivity$20;->this$0:Lcom/perm/kate/SearchActivity;

    iget-object v1, v1, Lcom/perm/kate/SearchActivity;->users:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 858
    iget-object v1, p0, Lcom/perm/kate/SearchActivity$20;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$5000(Lcom/perm/kate/SearchActivity;)V

    .line 859
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 860
    iget-object v1, p0, Lcom/perm/kate/SearchActivity$20;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1, v6}, Lcom/perm/kate/SearchActivity;->access$5202(Lcom/perm/kate/SearchActivity;I)I

    .line 863
    :goto_0
    iget-object v1, p0, Lcom/perm/kate/SearchActivity$20;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-virtual {v1, v6}, Lcom/perm/kate/SearchActivity;->showProgressBar(Z)V

    .line 864
    return-void

    .line 862
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/SearchActivity$20;->this$0:Lcom/perm/kate/SearchActivity;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/perm/kate/SearchActivity;->access$5202(Lcom/perm/kate/SearchActivity;I)I

    goto :goto_0
.end method
