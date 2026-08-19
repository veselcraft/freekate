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

    .line 183
    iput-object p1, p0, Lcom/perm/kate/GroupBanActivity$5;->this$0:Lcom/perm/kate/GroupBanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 186
    iget-object p1, p0, Lcom/perm/kate/GroupBanActivity$5;->this$0:Lcom/perm/kate/GroupBanActivity;

    invoke-static {p1}, Lcom/perm/kate/GroupBanActivity;->access$500(Lcom/perm/kate/GroupBanActivity;)Ljava/lang/Long;

    move-result-object v2

    .line 187
    iget-object p1, p0, Lcom/perm/kate/GroupBanActivity$5;->this$0:Lcom/perm/kate/GroupBanActivity;

    invoke-static {p1}, Lcom/perm/kate/GroupBanActivity;->access$600(Lcom/perm/kate/GroupBanActivity;)Ljava/lang/Integer;

    move-result-object v3

    .line 188
    iget-object p1, p0, Lcom/perm/kate/GroupBanActivity$5;->this$0:Lcom/perm/kate/GroupBanActivity;

    invoke-static {p1}, Lcom/perm/kate/GroupBanActivity;->access$700(Lcom/perm/kate/GroupBanActivity;)Ljava/lang/String;

    move-result-object v4

    .line 189
    iget-object p1, p0, Lcom/perm/kate/GroupBanActivity$5;->this$0:Lcom/perm/kate/GroupBanActivity;

    invoke-static {p1}, Lcom/perm/kate/GroupBanActivity;->access$800(Lcom/perm/kate/GroupBanActivity;)Z

    move-result v5

    .line 190
    iget-object p1, p0, Lcom/perm/kate/GroupBanActivity$5;->this$0:Lcom/perm/kate/GroupBanActivity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 191
    iget-object p1, p0, Lcom/perm/kate/GroupBanActivity$5;->this$0:Lcom/perm/kate/GroupBanActivity;

    invoke-static {p1}, Lcom/perm/kate/GroupBanActivity;->access$900(Lcom/perm/kate/GroupBanActivity;)Landroid/widget/Button;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 192
    iget-object p1, p0, Lcom/perm/kate/GroupBanActivity$5;->this$0:Lcom/perm/kate/GroupBanActivity;

    invoke-static {p1}, Lcom/perm/kate/GroupBanActivity;->access$1000(Lcom/perm/kate/GroupBanActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 193
    iget-object p1, p0, Lcom/perm/kate/GroupBanActivity$5;->this$0:Lcom/perm/kate/GroupBanActivity;

    invoke-static {p1}, Lcom/perm/kate/GroupBanActivity;->access$1100(Lcom/perm/kate/GroupBanActivity;)Lcom/perm/kate/api/BanInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 194
    iget-object p1, p0, Lcom/perm/kate/GroupBanActivity$5;->this$0:Lcom/perm/kate/GroupBanActivity;

    invoke-static {p1}, Lcom/perm/kate/GroupBanActivity;->access$1100(Lcom/perm/kate/GroupBanActivity;)Lcom/perm/kate/api/BanInfo;

    move-result-object p1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_0

    :cond_0
    const-wide/16 v6, 0x0

    :goto_0
    iput-wide v6, p1, Lcom/perm/kate/api/BanInfo;->end_date:J

    .line 195
    iget-object p1, p0, Lcom/perm/kate/GroupBanActivity$5;->this$0:Lcom/perm/kate/GroupBanActivity;

    invoke-static {p1}, Lcom/perm/kate/GroupBanActivity;->access$1100(Lcom/perm/kate/GroupBanActivity;)Lcom/perm/kate/api/BanInfo;

    move-result-object p1

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_1
    iput v0, p1, Lcom/perm/kate/api/BanInfo;->reason:I

    .line 196
    iget-object p1, p0, Lcom/perm/kate/GroupBanActivity$5;->this$0:Lcom/perm/kate/GroupBanActivity;

    invoke-static {p1}, Lcom/perm/kate/GroupBanActivity;->access$1100(Lcom/perm/kate/GroupBanActivity;)Lcom/perm/kate/api/BanInfo;

    move-result-object p1

    iput-object v4, p1, Lcom/perm/kate/api/BanInfo;->comment:Ljava/lang/String;

    .line 197
    iget-object p1, p0, Lcom/perm/kate/GroupBanActivity$5;->this$0:Lcom/perm/kate/GroupBanActivity;

    invoke-static {p1}, Lcom/perm/kate/GroupBanActivity;->access$1100(Lcom/perm/kate/GroupBanActivity;)Lcom/perm/kate/api/BanInfo;

    move-result-object p1

    iput-boolean v5, p1, Lcom/perm/kate/api/BanInfo;->comment_visible:Z

    .line 198
    iget-object p1, p0, Lcom/perm/kate/GroupBanActivity$5;->this$0:Lcom/perm/kate/GroupBanActivity;

    invoke-static {p1}, Lcom/perm/kate/GroupBanActivity;->access$1100(Lcom/perm/kate/GroupBanActivity;)Lcom/perm/kate/api/BanInfo;

    move-result-object p1

    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/perm/kate/api/BanInfo;->admin_id:J

    .line 200
    :cond_2
    new-instance p1, Lcom/perm/kate/GroupBanActivity$5$1;

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/GroupBanActivity$5$1;-><init>(Lcom/perm/kate/GroupBanActivity$5;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Z)V

    .line 205
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
