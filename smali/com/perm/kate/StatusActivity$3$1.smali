.class Lcom/perm/kate/StatusActivity$3$1;
.super Ljava/lang/Thread;
.source "StatusActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/StatusActivity$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/StatusActivity$3;


# direct methods
.method constructor <init>(Lcom/perm/kate/StatusActivity$3;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/perm/kate/StatusActivity$3$1;->this$1:Lcom/perm/kate/StatusActivity$3;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 113
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/StatusActivity$3$1;->this$1:Lcom/perm/kate/StatusActivity$3;

    iget-object v1, v1, Lcom/perm/kate/StatusActivity$3;->this$0:Lcom/perm/kate/StatusActivity;

    invoke-static {v1}, Lcom/perm/kate/StatusActivity;->access$300(Lcom/perm/kate/StatusActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/StatusActivity$3$1;->this$1:Lcom/perm/kate/StatusActivity$3;

    iget-object v2, v2, Lcom/perm/kate/StatusActivity$3;->this$0:Lcom/perm/kate/StatusActivity;

    invoke-static {v2}, Lcom/perm/kate/StatusActivity;->access$000(Lcom/perm/kate/StatusActivity;)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/StatusActivity$3$1;->this$1:Lcom/perm/kate/StatusActivity$3;

    iget-object v3, v3, Lcom/perm/kate/StatusActivity$3;->this$0:Lcom/perm/kate/StatusActivity;

    iget-object v4, v3, Lcom/perm/kate/StatusActivity;->callback_save:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/perm/kate/session/Session;->setStatus(Ljava/lang/String;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
