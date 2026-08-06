.class Lcom/perm/kate/GroupBannedActivity$1;
.super Ljava/lang/Thread;
.source "GroupBannedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GroupBannedActivity;->refreshInThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupBannedActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupBannedActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/GroupBannedActivity;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/perm/kate/GroupBannedActivity$1;->this$0:Lcom/perm/kate/GroupBannedActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 59
    iget-object v0, p0, Lcom/perm/kate/GroupBannedActivity$1;->this$0:Lcom/perm/kate/GroupBannedActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/GroupBannedActivity;->showProgressBar(Z)V

    .line 60
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/GroupBannedActivity$1;->this$0:Lcom/perm/kate/GroupBannedActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupBannedActivity;->access$000(Lcom/perm/kate/GroupBannedActivity;)J

    move-result-wide v2

    const-wide/16 v6, 0xc8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-object v0, p0, Lcom/perm/kate/GroupBannedActivity$1;->this$0:Lcom/perm/kate/GroupBannedActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupBannedActivity;->access$100(Lcom/perm/kate/GroupBannedActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v7

    iget-object v8, p0, Lcom/perm/kate/GroupBannedActivity$1;->this$0:Lcom/perm/kate/GroupBannedActivity;

    move-object v6, v4

    invoke-virtual/range {v1 .. v8}, Lcom/perm/kate/session/Session;->getGroupBannedUsers(JLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 61
    return-void
.end method
