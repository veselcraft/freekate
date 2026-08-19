.class Lcom/perm/kate/GroupBannedActivity$5;
.super Ljava/lang/Thread;
.source "GroupBannedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GroupBannedActivity;->deleteInThread(Ljava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupBannedActivity;

.field final synthetic val$user_id:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupBannedActivity;Ljava/lang/Long;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/perm/kate/GroupBannedActivity$5;->this$0:Lcom/perm/kate/GroupBannedActivity;

    iput-object p2, p0, Lcom/perm/kate/GroupBannedActivity$5;->val$user_id:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 159
    iget-object v0, p0, Lcom/perm/kate/GroupBannedActivity$5;->this$0:Lcom/perm/kate/GroupBannedActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 160
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/GroupBannedActivity$5;->this$0:Lcom/perm/kate/GroupBannedActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupBannedActivity;->access$000(Lcom/perm/kate/GroupBannedActivity;)J

    move-result-wide v3

    iget-object v0, p0, Lcom/perm/kate/GroupBannedActivity$5;->val$user_id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v0, p0, Lcom/perm/kate/GroupBannedActivity$5;->this$0:Lcom/perm/kate/GroupBannedActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupBannedActivity;->access$900(Lcom/perm/kate/GroupBannedActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v7

    iget-object v8, p0, Lcom/perm/kate/GroupBannedActivity$5;->this$0:Lcom/perm/kate/GroupBannedActivity;

    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/session/Session;->deleteGroupBanUser(JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
