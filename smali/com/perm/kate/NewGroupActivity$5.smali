.class Lcom/perm/kate/NewGroupActivity$5;
.super Ljava/lang/Thread;
.source "NewGroupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/NewGroupActivity;->createGroup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewGroupActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewGroupActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/NewGroupActivity;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/perm/kate/NewGroupActivity$5;->this$0:Lcom/perm/kate/NewGroupActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 92
    iget-object v0, p0, Lcom/perm/kate/NewGroupActivity$5;->this$0:Lcom/perm/kate/NewGroupActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/NewGroupActivity;->showProgressBar(Z)V

    .line 93
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/NewGroupActivity$5;->this$0:Lcom/perm/kate/NewGroupActivity;

    invoke-static {v1}, Lcom/perm/kate/NewGroupActivity;->access$400(Lcom/perm/kate/NewGroupActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/NewGroupActivity$5;->this$0:Lcom/perm/kate/NewGroupActivity;

    invoke-static {v2}, Lcom/perm/kate/NewGroupActivity;->access$500(Lcom/perm/kate/NewGroupActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/NewGroupActivity$5;->this$0:Lcom/perm/kate/NewGroupActivity;

    invoke-static {v3}, Lcom/perm/kate/NewGroupActivity;->access$000(Lcom/perm/kate/NewGroupActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/NewGroupActivity$5;->this$0:Lcom/perm/kate/NewGroupActivity;

    invoke-static {v4}, Lcom/perm/kate/NewGroupActivity;->access$200(Lcom/perm/kate/NewGroupActivity;)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/perm/kate/NewGroupActivity$5;->this$0:Lcom/perm/kate/NewGroupActivity;

    invoke-static {v5}, Lcom/perm/kate/NewGroupActivity;->access$600(Lcom/perm/kate/NewGroupActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v5

    iget-object v6, p0, Lcom/perm/kate/NewGroupActivity$5;->this$0:Lcom/perm/kate/NewGroupActivity;

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/session/Session;->createGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 94
    return-void
.end method
