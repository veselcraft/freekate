.class Lcom/perm/kate/GroupBanActivity$5;
.super Ljava/lang/Object;
.source "GroupBanActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/GroupBanActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupBanActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupBanActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/GroupBanActivity;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/perm/kate/GroupBanActivity$5;->this$0:Lcom/perm/kate/GroupBanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 175
    iget-object v0, p0, Lcom/perm/kate/GroupBanActivity$5;->this$0:Lcom/perm/kate/GroupBanActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupBanActivity;->access$500(Lcom/perm/kate/GroupBanActivity;)Ljava/lang/Long;

    move-result-object v2

    .line 176
    .local v2, "end_date":Ljava/lang/Long;
    iget-object v0, p0, Lcom/perm/kate/GroupBanActivity$5;->this$0:Lcom/perm/kate/GroupBanActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupBanActivity;->access$600(Lcom/perm/kate/GroupBanActivity;)Ljava/lang/Integer;

    move-result-object v3

    .line 177
    .local v3, "reason":Ljava/lang/Integer;
    iget-object v0, p0, Lcom/perm/kate/GroupBanActivity$5;->this$0:Lcom/perm/kate/GroupBanActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupBanActivity;->access$700(Lcom/perm/kate/GroupBanActivity;)Ljava/lang/String;

    move-result-object v4

    .line 178
    .local v4, "comment":Ljava/lang/String;
    iget-object v0, p0, Lcom/perm/kate/GroupBanActivity$5;->this$0:Lcom/perm/kate/GroupBanActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupBanActivity;->access$800(Lcom/perm/kate/GroupBanActivity;)Z

    move-result v5

    .line 179
    .local v5, "comment_visible":Z
    iget-object v0, p0, Lcom/perm/kate/GroupBanActivity$5;->this$0:Lcom/perm/kate/GroupBanActivity;

    invoke-virtual {v0, v7}, Lcom/perm/kate/GroupBanActivity;->showProgressBar(Z)V

    .line 180
    iget-object v0, p0, Lcom/perm/kate/GroupBanActivity$5;->this$0:Lcom/perm/kate/GroupBanActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupBanActivity;->access$900(Lcom/perm/kate/GroupBanActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 181
    iget-object v0, p0, Lcom/perm/kate/GroupBanActivity$5;->this$0:Lcom/perm/kate/GroupBanActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupBanActivity;->access$1000(Lcom/perm/kate/GroupBanActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 182
    iget-object v0, p0, Lcom/perm/kate/GroupBanActivity$5;->this$0:Lcom/perm/kate/GroupBanActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupBanActivity;->access$1100(Lcom/perm/kate/GroupBanActivity;)Lcom/perm/kate/api/BanInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/perm/kate/GroupBanActivity$5;->this$0:Lcom/perm/kate/GroupBanActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupBanActivity;->access$1100(Lcom/perm/kate/GroupBanActivity;)Lcom/perm/kate/api/BanInfo;

    move-result-object v8

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    iput-wide v0, v8, Lcom/perm/kate/api/BanInfo;->end_date:J

    .line 184
    iget-object v0, p0, Lcom/perm/kate/GroupBanActivity$5;->this$0:Lcom/perm/kate/GroupBanActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupBanActivity;->access$1100(Lcom/perm/kate/GroupBanActivity;)Lcom/perm/kate/api/BanInfo;

    move-result-object v1

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    iput v0, v1, Lcom/perm/kate/api/BanInfo;->reason:I

    .line 185
    iget-object v0, p0, Lcom/perm/kate/GroupBanActivity$5;->this$0:Lcom/perm/kate/GroupBanActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupBanActivity;->access$1100(Lcom/perm/kate/GroupBanActivity;)Lcom/perm/kate/api/BanInfo;

    move-result-object v0

    iput-object v4, v0, Lcom/perm/kate/api/BanInfo;->comment:Ljava/lang/String;

    .line 186
    iget-object v0, p0, Lcom/perm/kate/GroupBanActivity$5;->this$0:Lcom/perm/kate/GroupBanActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupBanActivity;->access$1100(Lcom/perm/kate/GroupBanActivity;)Lcom/perm/kate/api/BanInfo;

    move-result-object v0

    if-eqz v5, :cond_0

    move v6, v7

    :cond_0
    iput v6, v0, Lcom/perm/kate/api/BanInfo;->comment_visible:I

    .line 187
    iget-object v0, p0, Lcom/perm/kate/GroupBanActivity$5;->this$0:Lcom/perm/kate/GroupBanActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupBanActivity;->access$1100(Lcom/perm/kate/GroupBanActivity;)Lcom/perm/kate/api/BanInfo;

    move-result-object v0

    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/perm/kate/api/BanInfo;->admin_id:J

    .line 189
    :cond_1
    new-instance v0, Lcom/perm/kate/GroupBanActivity$5$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/GroupBanActivity$5$1;-><init>(Lcom/perm/kate/GroupBanActivity$5;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Z)V

    .line 194
    invoke-virtual {v0}, Lcom/perm/kate/GroupBanActivity$5$1;->start()V

    .line 195
    return-void

    .line 183
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_3
    move v0, v6

    .line 184
    goto :goto_1
.end method
