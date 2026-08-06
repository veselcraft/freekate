.class Lcom/perm/kate/PollVotersActivity$5;
.super Ljava/lang/Object;
.source "PollVotersActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PollVotersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PollVotersActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PollVotersActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/PollVotersActivity;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/perm/kate/PollVotersActivity$5;->this$0:Lcom/perm/kate/PollVotersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 4
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisible"    # I
    .param p3, "visibleCount"    # I
    .param p4, "totalCount"    # I

    .prologue
    const/4 v1, 0x1

    .line 172
    if-nez p4, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    add-int v2, p2, p3

    add-int/lit8 v3, p4, -0x2

    if-lt v2, v3, :cond_2

    move v0, v1

    .line 175
    .local v0, "loadMore":Z
    :goto_1
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/perm/kate/PollVotersActivity$5;->this$0:Lcom/perm/kate/PollVotersActivity;

    invoke-static {v2}, Lcom/perm/kate/PollVotersActivity;->access$900(Lcom/perm/kate/PollVotersActivity;)I

    move-result v2

    if-nez v2, :cond_0

    .line 176
    const-string v2, "Kate.PollVotersActivity"

    const-string v3, "Loading more"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v2, p0, Lcom/perm/kate/PollVotersActivity$5;->this$0:Lcom/perm/kate/PollVotersActivity;

    invoke-static {v2, v1}, Lcom/perm/kate/PollVotersActivity;->access$902(Lcom/perm/kate/PollVotersActivity;I)I

    .line 178
    iget-object v2, p0, Lcom/perm/kate/PollVotersActivity$5;->this$0:Lcom/perm/kate/PollVotersActivity;

    invoke-static {v2}, Lcom/perm/kate/PollVotersActivity;->access$1000(Lcom/perm/kate/PollVotersActivity;)V

    .line 179
    iget-object v2, p0, Lcom/perm/kate/PollVotersActivity$5;->this$0:Lcom/perm/kate/PollVotersActivity;

    invoke-virtual {v2, v1}, Lcom/perm/kate/PollVotersActivity;->showProgressBar(Z)V

    goto :goto_0

    .line 174
    .end local v0    # "loadMore":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 184
    iget-object v0, p0, Lcom/perm/kate/PollVotersActivity$5;->this$0:Lcom/perm/kate/PollVotersActivity;

    invoke-static {v0}, Lcom/perm/kate/PollVotersActivity;->access$1100(Lcom/perm/kate/PollVotersActivity;)Lcom/perm/utils/ScrollPauser;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/perm/utils/ScrollPauser;->scrollStateChanged(I)V

    .line 185
    return-void
.end method
