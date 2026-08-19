.class Lcom/perm/kate/RequestsToGroupListAdapter$2;
.super Ljava/lang/Object;
.source "RequestsToGroupListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/RequestsToGroupListAdapter;


# direct methods
.method constructor <init>(Lcom/perm/kate/RequestsToGroupListAdapter;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/perm/kate/RequestsToGroupListAdapter$2;->this$0:Lcom/perm/kate/RequestsToGroupListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 131
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    .line 133
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/User;

    if-eqz p1, :cond_0

    .line 135
    iget-object v0, p0, Lcom/perm/kate/RequestsToGroupListAdapter$2;->this$0:Lcom/perm/kate/RequestsToGroupListAdapter;

    iget-wide v1, p1, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v0, v1, v2}, Lcom/perm/kate/RequestsToGroupListAdapter;->access$200(Lcom/perm/kate/RequestsToGroupListAdapter;J)V

    .line 136
    iget-object v0, p0, Lcom/perm/kate/RequestsToGroupListAdapter$2;->this$0:Lcom/perm/kate/RequestsToGroupListAdapter;

    invoke-static {v0}, Lcom/perm/kate/RequestsToGroupListAdapter;->access$100(Lcom/perm/kate/RequestsToGroupListAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 137
    iget-object p1, p0, Lcom/perm/kate/RequestsToGroupListAdapter$2;->this$0:Lcom/perm/kate/RequestsToGroupListAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
