.class Lcom/perm/kate/GroupActivity$39;
.super Ljava/lang/Thread;
.source "GroupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GroupActivity;->groupsInvite(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupActivity;

.field final synthetic val$member_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupActivity;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/GroupActivity;

    .prologue
    .line 1144
    iput-object p1, p0, Lcom/perm/kate/GroupActivity$39;->this$0:Lcom/perm/kate/GroupActivity;

    iput-wide p2, p0, Lcom/perm/kate/GroupActivity$39;->val$member_id:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 1147
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/GroupActivity$39;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupActivity;->access$500(Lcom/perm/kate/GroupActivity;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/perm/kate/GroupActivity$39;->val$member_id:J

    iget-object v0, p0, Lcom/perm/kate/GroupActivity$39;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupActivity;->access$3800(Lcom/perm/kate/GroupActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v6

    iget-object v7, p0, Lcom/perm/kate/GroupActivity$39;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/session/Session;->groupsInvite(JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 1148
    iget-object v0, p0, Lcom/perm/kate/GroupActivity$39;->this$0:Lcom/perm/kate/GroupActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/GroupActivity;->showProgressBar(Z)V

    .line 1149
    return-void
.end method
