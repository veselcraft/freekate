.class Lcom/perm/kate/BlackListActivity$1;
.super Ljava/lang/Thread;
.source "BlackListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/BlackListActivity;->refreshInThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/BlackListActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/BlackListActivity;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/perm/kate/BlackListActivity$1;->this$0:Lcom/perm/kate/BlackListActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 46
    iget-object v0, p0, Lcom/perm/kate/BlackListActivity$1;->this$0:Lcom/perm/kate/BlackListActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 47
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/BlackListActivity$1;->this$0:Lcom/perm/kate/BlackListActivity;

    invoke-static {v1}, Lcom/perm/kate/BlackListActivity;->access$000(Lcom/perm/kate/BlackListActivity;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/BlackListActivity$1;->this$0:Lcom/perm/kate/BlackListActivity;

    invoke-static {v2}, Lcom/perm/kate/BlackListActivity;->access$100(Lcom/perm/kate/BlackListActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/BlackListActivity$1;->this$0:Lcom/perm/kate/BlackListActivity;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/perm/kate/session/Session;->getBlackList(Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
