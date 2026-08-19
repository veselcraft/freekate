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

    .line 37
    iput-object p1, p0, Lcom/perm/kate/history/HistoryActivity$1;->this$0:Lcom/perm/kate/history/HistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 40
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/history/HistoryItem;

    if-eqz p1, :cond_1

    .line 42
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 43
    iget p3, p1, Lcom/perm/kate/history/HistoryItem;->type:I

    const/16 p4, 0x64

    if-ne p3, p4, :cond_0

    .line 44
    iget-object p3, p0, Lcom/perm/kate/history/HistoryActivity$1;->this$0:Lcom/perm/kate/history/HistoryActivity;

    const-class p4, Lcom/perm/kate/ProfileInfoActivity;

    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 45
    iget-wide p3, p1, Lcom/perm/kate/history/HistoryItem;->content_id:J

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p3, "com.perm.kate.user_id"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 47
    :cond_0
    iget-object p3, p0, Lcom/perm/kate/history/HistoryActivity$1;->this$0:Lcom/perm/kate/history/HistoryActivity;

    const-class p4, Lcom/perm/kate/GroupActivity;

    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 48
    iget-wide p3, p1, Lcom/perm/kate/history/HistoryItem;->content_id:J

    const-string p1, "com.perm.kate.group_id"

    invoke-virtual {p2, p1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 50
    :goto_0
    iget-object p1, p0, Lcom/perm/kate/history/HistoryActivity$1;->this$0:Lcom/perm/kate/history/HistoryActivity;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 51
    iget-object p1, p0, Lcom/perm/kate/history/HistoryActivity$1;->this$0:Lcom/perm/kate/history/HistoryActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method
