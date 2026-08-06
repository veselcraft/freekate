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
    .param p1, "this$1"    # Lcom/perm/kate/SearchActivity$16;

    .prologue
    .line 642
    iput-object p1, p0, Lcom/perm/kate/SearchActivity$16$1;->this$1:Lcom/perm/kate/SearchActivity$16;

    iput-object p2, p0, Lcom/perm/kate/SearchActivity$16$1;->val$page:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 645
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$16$1;->this$1:Lcom/perm/kate/SearchActivity$16;

    iget-object v0, v0, Lcom/perm/kate/SearchActivity$16;->this$0:Lcom/perm/kate/SearchActivity;

    iget-object v0, v0, Lcom/perm/kate/SearchActivity;->videos:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/perm/kate/SearchActivity$16$1;->val$page:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 646
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$16$1;->this$1:Lcom/perm/kate/SearchActivity$16;

    iget-object v0, v0, Lcom/perm/kate/SearchActivity$16;->this$0:Lcom/perm/kate/SearchActivity;

    iget-wide v2, v0, Lcom/perm/kate/SearchActivity;->offset:J

    iget-object v1, p0, Lcom/perm/kate/SearchActivity$16$1;->this$1:Lcom/perm/kate/SearchActivity$16;

    iget-object v1, v1, Lcom/perm/kate/SearchActivity$16;->this$0:Lcom/perm/kate/SearchActivity;

    iget-object v1, v1, Lcom/perm/kate/SearchActivity;->video_page_size:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/perm/kate/SearchActivity;->offset:J

    .line 647
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$16$1;->this$1:Lcom/perm/kate/SearchActivity$16;

    iget-object v0, v0, Lcom/perm/kate/SearchActivity$16;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchActivity;->access$5000(Lcom/perm/kate/SearchActivity;)V

    .line 648
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$16$1;->val$page:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$16$1;->this$1:Lcom/perm/kate/SearchActivity$16;

    iget-object v0, v0, Lcom/perm/kate/SearchActivity$16;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v0, v6}, Lcom/perm/kate/SearchActivity;->access$5202(Lcom/perm/kate/SearchActivity;I)I

    .line 652
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$16$1;->this$1:Lcom/perm/kate/SearchActivity$16;

    iget-object v0, v0, Lcom/perm/kate/SearchActivity$16;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-virtual {v0, v6}, Lcom/perm/kate/SearchActivity;->showProgressBar(Z)V

    .line 653
    return-void

    .line 651
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$16$1;->this$1:Lcom/perm/kate/SearchActivity$16;

    iget-object v0, v0, Lcom/perm/kate/SearchActivity$16;->this$0:Lcom/perm/kate/SearchActivity;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/perm/kate/SearchActivity;->access$5202(Lcom/perm/kate/SearchActivity;I)I

    goto :goto_0
.end method
