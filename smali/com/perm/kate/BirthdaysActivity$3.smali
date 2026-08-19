.class Lcom/perm/kate/BirthdaysActivity$3;
.super Ljava/lang/Thread;
.source "BirthdaysActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/BirthdaysActivity;->refreshInThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/BirthdaysActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/BirthdaysActivity;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/perm/kate/BirthdaysActivity$3;->this$0:Lcom/perm/kate/BirthdaysActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 105
    iget-object v0, p0, Lcom/perm/kate/BirthdaysActivity$3;->this$0:Lcom/perm/kate/BirthdaysActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 106
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/BirthdaysActivity$3;->this$0:Lcom/perm/kate/BirthdaysActivity;

    invoke-static {v1}, Lcom/perm/kate/BirthdaysActivity;->access$000(Lcom/perm/kate/BirthdaysActivity;)Ljava/lang/Long;

    move-result-object v1

    sget-object v2, Lcom/perm/kate/BirthdaysActivity;->fields:Ljava/lang/String;

    iget-object v3, p0, Lcom/perm/kate/BirthdaysActivity$3;->this$0:Lcom/perm/kate/BirthdaysActivity;

    invoke-static {v3}, Lcom/perm/kate/BirthdaysActivity;->access$100(Lcom/perm/kate/BirthdaysActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/BirthdaysActivity$3;->this$0:Lcom/perm/kate/BirthdaysActivity;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/perm/kate/session/Session;->getFriends(Ljava/lang/Long;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
