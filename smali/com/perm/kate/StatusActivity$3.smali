.class Lcom/perm/kate/StatusActivity$3;
.super Ljava/lang/Object;
.source "StatusActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/StatusActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/StatusActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/StatusActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/StatusActivity;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/perm/kate/StatusActivity$3;->this$0:Lcom/perm/kate/StatusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/perm/kate/StatusActivity$3;->this$0:Lcom/perm/kate/StatusActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/StatusActivity;->showProgressBar(Z)V

    .line 105
    iget-object v0, p0, Lcom/perm/kate/StatusActivity$3;->this$0:Lcom/perm/kate/StatusActivity;

    iget-object v1, p0, Lcom/perm/kate/StatusActivity$3;->this$0:Lcom/perm/kate/StatusActivity;

    invoke-static {v1}, Lcom/perm/kate/StatusActivity;->access$200(Lcom/perm/kate/StatusActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/StatusActivity;->access$302(Lcom/perm/kate/StatusActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    iget-object v0, p0, Lcom/perm/kate/StatusActivity$3;->this$0:Lcom/perm/kate/StatusActivity;

    invoke-static {v0}, Lcom/perm/kate/StatusActivity;->access$000(Lcom/perm/kate/StatusActivity;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/StatusActivity$3;->this$0:Lcom/perm/kate/StatusActivity;

    invoke-static {v0}, Lcom/perm/kate/StatusActivity;->access$000(Lcom/perm/kate/StatusActivity;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 107
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/StatusActivity$3;->this$0:Lcom/perm/kate/StatusActivity;

    invoke-static {v1}, Lcom/perm/kate/StatusActivity;->access$000(Lcom/perm/kate/StatusActivity;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v1, p0, Lcom/perm/kate/StatusActivity$3;->this$0:Lcom/perm/kate/StatusActivity;

    invoke-static {v1}, Lcom/perm/kate/StatusActivity;->access$300(Lcom/perm/kate/StatusActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/perm/kate/db/DataHelper;->updateGroupStatus(JLjava/lang/String;)V

    .line 110
    :goto_0
    new-instance v0, Lcom/perm/kate/StatusActivity$3$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/StatusActivity$3$1;-><init>(Lcom/perm/kate/StatusActivity$3;)V

    .line 115
    invoke-virtual {v0}, Lcom/perm/kate/StatusActivity$3$1;->start()V

    .line 116
    return-void

    .line 109
    :cond_0
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/StatusActivity$3;->this$0:Lcom/perm/kate/StatusActivity;

    invoke-static {v1}, Lcom/perm/kate/StatusActivity;->access$100(Lcom/perm/kate/StatusActivity;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/perm/kate/StatusActivity$3;->this$0:Lcom/perm/kate/StatusActivity;

    invoke-static {v1}, Lcom/perm/kate/StatusActivity;->access$300(Lcom/perm/kate/StatusActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/perm/kate/db/DataHelper;->updateStatus(JLjava/lang/String;)V

    goto :goto_0
.end method
