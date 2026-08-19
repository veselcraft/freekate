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

    .line 56
    iput-object p1, p0, Lcom/perm/kate/GroupBannedActivity$1;->this$0:Lcom/perm/kate/GroupBannedActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 59
    iget-object v0, p0, Lcom/perm/kate/GroupBannedActivity$1;->this$0:Lcom/perm/kate/GroupBannedActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 60
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/GroupBannedActivity$1;->this$0:Lcom/perm/kate/GroupBannedActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupBannedActivity;->access$000(Lcom/perm/kate/GroupBannedActivity;)J

    move-result-wide v3

    const-wide/16 v0, 0xc8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-object v0, p0, Lcom/perm/kate/GroupBannedActivity$1;->this$0:Lcom/perm/kate/GroupBannedActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupBannedActivity;->access$100(Lcom/perm/kate/GroupBannedActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v8

    iget-object v9, p0, Lcom/perm/kate/GroupBannedActivity$1;->this$0:Lcom/perm/kate/GroupBannedActivity;

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/perm/kate/session/Session;->getGroupBannedUsers(JLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
