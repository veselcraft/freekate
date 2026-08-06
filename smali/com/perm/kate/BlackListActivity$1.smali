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
    .param p1, "this$0"    # Lcom/perm/kate/BlackListActivity;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/perm/kate/BlackListActivity$1;->this$0:Lcom/perm/kate/BlackListActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 46
    iget-object v0, p0, Lcom/perm/kate/BlackListActivity$1;->this$0:Lcom/perm/kate/BlackListActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/BlackListActivity;->showProgressBar(Z)V

    .line 47
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/perm/kate/BlackListActivity$1;->this$0:Lcom/perm/kate/BlackListActivity;

    invoke-static {v2}, Lcom/perm/kate/BlackListActivity;->access$000(Lcom/perm/kate/BlackListActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/BlackListActivity$1;->this$0:Lcom/perm/kate/BlackListActivity;

    invoke-static {v3}, Lcom/perm/kate/BlackListActivity;->access$100(Lcom/perm/kate/BlackListActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/BlackListActivity$1;->this$0:Lcom/perm/kate/BlackListActivity;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/perm/kate/session/Session;->getBlackList(Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 48
    return-void
.end method
