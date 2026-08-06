.class Lcom/perm/kate/history/HistoryActivity$1;
.super Ljava/lang/Object;
.source "HistoryActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/history/HistoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/history/HistoryActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/history/HistoryActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/history/HistoryActivity;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/perm/kate/history/HistoryActivity$1;->this$0:Lcom/perm/kate/history/HistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/history/HistoryItem;

    .line 41
    .local v1, "item":Lcom/perm/kate/history/HistoryItem;
    if-eqz v1, :cond_0

    .line 42
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 43
    .local v0, "intent":Landroid/content/Intent;
    iget v2, v1, Lcom/perm/kate/history/HistoryItem;->type:I

    const/16 v3, 0x64

    if-ne v2, v3, :cond_1

    .line 44
    iget-object v2, p0, Lcom/perm/kate/history/HistoryActivity$1;->this$0:Lcom/perm/kate/history/HistoryActivity;

    const-class v3, Lcom/perm/kate/ProfileInfoActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 45
    const-string v2, "com.perm.kate.user_id"

    iget-wide v4, v1, Lcom/perm/kate/history/HistoryItem;->content_id:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    :goto_0
    iget-object v2, p0, Lcom/perm/kate/history/HistoryActivity$1;->this$0:Lcom/perm/kate/history/HistoryActivity;

    invoke-virtual {v2, v0}, Lcom/perm/kate/history/HistoryActivity;->startActivity(Landroid/content/Intent;)V

    .line 51
    iget-object v2, p0, Lcom/perm/kate/history/HistoryActivity$1;->this$0:Lcom/perm/kate/history/HistoryActivity;

    invoke-virtual {v2}, Lcom/perm/kate/history/HistoryActivity;->finish()V

    .line 53
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void

    .line 47
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v2, p0, Lcom/perm/kate/history/HistoryActivity$1;->this$0:Lcom/perm/kate/history/HistoryActivity;

    const-class v3, Lcom/perm/kate/GroupActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 48
    const-string v2, "com.perm.kate.group_id"

    iget-wide v4, v1, Lcom/perm/kate/history/HistoryItem;->content_id:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_0
.end method
