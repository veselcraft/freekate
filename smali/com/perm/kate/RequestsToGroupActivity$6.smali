.class Lcom/perm/kate/RequestsToGroupActivity$6;
.super Ljava/lang/Object;
.source "RequestsToGroupActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/RequestsToGroupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/RequestsToGroupActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/RequestsToGroupActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/RequestsToGroupActivity;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/perm/kate/RequestsToGroupActivity$6;->this$0:Lcom/perm/kate/RequestsToGroupActivity;

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

    .line 169
    if-nez p4, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    add-int v2, p2, p3

    add-int/lit8 v3, p4, -0x2

    if-lt v2, v3, :cond_2

    move v0, v1

    .line 172
    .local v0, "loadMore":Z
    :goto_1
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/perm/kate/RequestsToGroupActivity$6;->this$0:Lcom/perm/kate/RequestsToGroupActivity;

    invoke-static {v2}, Lcom/perm/kate/RequestsToGroupActivity;->access$600(Lcom/perm/kate/RequestsToGroupActivity;)I

    move-result v2

    if-nez v2, :cond_0

    .line 173
    iget-object v2, p0, Lcom/perm/kate/RequestsToGroupActivity$6;->this$0:Lcom/perm/kate/RequestsToGroupActivity;

    invoke-static {v2, v1}, Lcom/perm/kate/RequestsToGroupActivity;->access$602(Lcom/perm/kate/RequestsToGroupActivity;I)I

    .line 174
    iget-object v2, p0, Lcom/perm/kate/RequestsToGroupActivity$6;->this$0:Lcom/perm/kate/RequestsToGroupActivity;

    invoke-static {v2}, Lcom/perm/kate/RequestsToGroupActivity;->access$700(Lcom/perm/kate/RequestsToGroupActivity;)V

    .line 175
    iget-object v2, p0, Lcom/perm/kate/RequestsToGroupActivity$6;->this$0:Lcom/perm/kate/RequestsToGroupActivity;

    invoke-virtual {v2, v1}, Lcom/perm/kate/RequestsToGroupActivity;->showProgressBar(Z)V

    goto :goto_0

    .line 171
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
    .line 180
    iget-object v0, p0, Lcom/perm/kate/RequestsToGroupActivity$6;->this$0:Lcom/perm/kate/RequestsToGroupActivity;

    invoke-static {v0}, Lcom/perm/kate/RequestsToGroupActivity;->access$800(Lcom/perm/kate/RequestsToGroupActivity;)Lcom/perm/utils/ScrollPauser;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/perm/utils/ScrollPauser;->scrollStateChanged(I)V

    .line 181
    return-void
.end method
