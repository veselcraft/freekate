.class Lcom/perm/kate/GroupActivity$25;
.super Ljava/lang/Thread;
.source "GroupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GroupActivity;->denyMessages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupActivity;)V
    .locals 0

    .line 848
    iput-object p1, p0, Lcom/perm/kate/GroupActivity$25;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 851
    iget-object v0, p0, Lcom/perm/kate/GroupActivity$25;->this$0:Lcom/perm/kate/GroupActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 852
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/GroupActivity$25;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {v1}, Lcom/perm/kate/GroupActivity;->access$500(Lcom/perm/kate/GroupActivity;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    new-instance v3, Lcom/perm/kate/GroupActivity$25$1;

    iget-object v4, p0, Lcom/perm/kate/GroupActivity$25;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-direct {v3, p0, v4}, Lcom/perm/kate/GroupActivity$25$1;-><init>(Lcom/perm/kate/GroupActivity$25;Landroid/app/Activity;)V

    iget-object v4, p0, Lcom/perm/kate/GroupActivity$25;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/perm/kate/session/Session;->denyMessagesFromGroup(JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 859
    iget-object v0, p0, Lcom/perm/kate/GroupActivity$25;->this$0:Lcom/perm/kate/GroupActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method
