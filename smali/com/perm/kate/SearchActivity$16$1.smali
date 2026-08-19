.class Lcom/perm/kate/SearchActivity$16$1;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/SearchActivity$16;->ready(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/SearchActivity$16;

.field final synthetic val$page:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/SearchActivity$16;Ljava/util/ArrayList;)V
    .locals 0

    .line 668
    iput-object p1, p0, Lcom/perm/kate/SearchActivity$16$1;->this$1:Lcom/perm/kate/SearchActivity$16;

    iput-object p2, p0, Lcom/perm/kate/SearchActivity$16$1;->val$page:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 671
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$16$1;->this$1:Lcom/perm/kate/SearchActivity$16;

    iget-object v0, v0, Lcom/perm/kate/SearchActivity$16;->this$0:Lcom/perm/kate/SearchActivity;

    iget-object v0, v0, Lcom/perm/kate/SearchActivity;->videos:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/perm/kate/SearchActivity$16$1;->val$page:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 672
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$16$1;->this$1:Lcom/perm/kate/SearchActivity$16;

    iget-object v0, v0, Lcom/perm/kate/SearchActivity$16;->this$0:Lcom/perm/kate/SearchActivity;

    iget-wide v1, v0, Lcom/perm/kate/SearchActivity;->offset:J

    iget-object v3, v0, Lcom/perm/kate/SearchActivity;->video_page_size:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/perm/kate/SearchActivity;->offset:J

    .line 673
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$16$1;->this$1:Lcom/perm/kate/SearchActivity$16;

    iget-object v0, v0, Lcom/perm/kate/SearchActivity$16;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchActivity;->access$5100(Lcom/perm/kate/SearchActivity;)V

    .line 674
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$16$1;->val$page:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$16$1;->this$1:Lcom/perm/kate/SearchActivity$16;

    iget-object v0, v0, Lcom/perm/kate/SearchActivity$16;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v0, v1}, Lcom/perm/kate/SearchActivity;->access$5302(Lcom/perm/kate/SearchActivity;I)I

    goto :goto_0

    .line 677
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$16$1;->this$1:Lcom/perm/kate/SearchActivity$16;

    iget-object v0, v0, Lcom/perm/kate/SearchActivity$16;->this$0:Lcom/perm/kate/SearchActivity;

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/perm/kate/SearchActivity;->access$5302(Lcom/perm/kate/SearchActivity;I)I

    .line 678
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$16$1;->this$1:Lcom/perm/kate/SearchActivity$16;

    iget-object v0, v0, Lcom/perm/kate/SearchActivity$16;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method
