.class Lcom/perm/kate/GroupActivity$41;
.super Ljava/lang/Thread;
.source "GroupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GroupActivity;->groupsInvite(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupActivity;

.field final synthetic val$invite_callback:Lcom/perm/kate/session/Callback;

.field final synthetic val$user_ids:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupActivity;Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;)V
    .locals 0

    .line 1220
    iput-object p1, p0, Lcom/perm/kate/GroupActivity$41;->this$0:Lcom/perm/kate/GroupActivity;

    iput-object p2, p0, Lcom/perm/kate/GroupActivity$41;->val$user_ids:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/perm/kate/GroupActivity$41;->val$invite_callback:Lcom/perm/kate/session/Callback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1223
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/GroupActivity$41;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {v1}, Lcom/perm/kate/GroupActivity;->access$500(Lcom/perm/kate/GroupActivity;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lcom/perm/kate/GroupActivity$41;->val$user_ids:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/perm/kate/GroupActivity$41;->val$invite_callback:Lcom/perm/kate/session/Callback;

    iget-object v5, p0, Lcom/perm/kate/GroupActivity$41;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/session/Session;->groupsInvite(JLjava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 1224
    iget-object v0, p0, Lcom/perm/kate/GroupActivity$41;->this$0:Lcom/perm/kate/GroupActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method
