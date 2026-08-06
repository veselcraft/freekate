.class Lcom/perm/kate/BlackListActivity$5;
.super Ljava/lang/Object;
.source "BlackListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/BlackListActivity;->displayData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/BlackListActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/BlackListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/BlackListActivity;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/perm/kate/BlackListActivity$5;->this$0:Lcom/perm/kate/BlackListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 136
    iget-object v0, p0, Lcom/perm/kate/BlackListActivity$5;->this$0:Lcom/perm/kate/BlackListActivity;

    new-instance v1, Lcom/perm/kate/FriendsListAdapter;

    iget-object v2, p0, Lcom/perm/kate/BlackListActivity$5;->this$0:Lcom/perm/kate/BlackListActivity;

    invoke-static {v2}, Lcom/perm/kate/BlackListActivity;->access$300(Lcom/perm/kate/BlackListActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/BlackListActivity$5;->this$0:Lcom/perm/kate/BlackListActivity;

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/FriendsListAdapter;-><init>(Ljava/util/ArrayList;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/perm/kate/BlackListActivity;->access$602(Lcom/perm/kate/BlackListActivity;Lcom/perm/kate/FriendsListAdapter;)Lcom/perm/kate/FriendsListAdapter;

    .line 137
    iget-object v0, p0, Lcom/perm/kate/BlackListActivity$5;->this$0:Lcom/perm/kate/BlackListActivity;

    invoke-static {v0}, Lcom/perm/kate/BlackListActivity;->access$700(Lcom/perm/kate/BlackListActivity;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/perm/kate/BlackListActivity$5;->this$0:Lcom/perm/kate/BlackListActivity;

    invoke-static {v0}, Lcom/perm/kate/BlackListActivity;->access$700(Lcom/perm/kate/BlackListActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/BlackListActivity$5;->this$0:Lcom/perm/kate/BlackListActivity;

    invoke-static {v1}, Lcom/perm/kate/BlackListActivity;->access$600(Lcom/perm/kate/BlackListActivity;)Lcom/perm/kate/FriendsListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 139
    :cond_0
    return-void
.end method
