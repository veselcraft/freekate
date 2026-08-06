.class Lcom/perm/kate/RequestsToGroupListAdapter$1;
.super Ljava/lang/Object;
.source "RequestsToGroupListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/RequestsToGroupListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/RequestsToGroupListAdapter;


# direct methods
.method constructor <init>(Lcom/perm/kate/RequestsToGroupListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/RequestsToGroupListAdapter;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/perm/kate/RequestsToGroupListAdapter$1;->this$0:Lcom/perm/kate/RequestsToGroupListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 117
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 118
    .local v0, "ll_add_region":Landroid/widget/LinearLayout;
    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/User;

    .line 120
    .local v1, "user":Lcom/perm/kate/api/User;
    if-eqz v1, :cond_0

    .line 121
    iget-object v2, p0, Lcom/perm/kate/RequestsToGroupListAdapter$1;->this$0:Lcom/perm/kate/RequestsToGroupListAdapter;

    iget-wide v4, v1, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v2, v4, v5}, Lcom/perm/kate/RequestsToGroupListAdapter;->access$000(Lcom/perm/kate/RequestsToGroupListAdapter;J)V

    .line 122
    iget-object v2, p0, Lcom/perm/kate/RequestsToGroupListAdapter$1;->this$0:Lcom/perm/kate/RequestsToGroupListAdapter;

    invoke-static {v2}, Lcom/perm/kate/RequestsToGroupListAdapter;->access$100(Lcom/perm/kate/RequestsToGroupListAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 123
    iget-object v2, p0, Lcom/perm/kate/RequestsToGroupListAdapter$1;->this$0:Lcom/perm/kate/RequestsToGroupListAdapter;

    invoke-virtual {v2}, Lcom/perm/kate/RequestsToGroupListAdapter;->notifyDataSetChanged()V

    .line 126
    .end local v1    # "user":Lcom/perm/kate/api/User;
    :cond_0
    return-void
.end method
