.class Lcom/perm/kate/ChangePasswordActivity$4;
.super Ljava/lang/Thread;
.source "ChangePasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/ChangePasswordActivity;->saveInThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ChangePasswordActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/ChangePasswordActivity;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/perm/kate/ChangePasswordActivity$4;->this$0:Lcom/perm/kate/ChangePasswordActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 103
    iget-object v0, p0, Lcom/perm/kate/ChangePasswordActivity$4;->this$0:Lcom/perm/kate/ChangePasswordActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 104
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/ChangePasswordActivity$4;->this$0:Lcom/perm/kate/ChangePasswordActivity;

    invoke-static {v0}, Lcom/perm/kate/ChangePasswordActivity;->access$600(Lcom/perm/kate/ChangePasswordActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/perm/kate/ChangePasswordActivity$4;->this$0:Lcom/perm/kate/ChangePasswordActivity;

    invoke-static {v0}, Lcom/perm/kate/ChangePasswordActivity;->access$700(Lcom/perm/kate/ChangePasswordActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/perm/kate/ChangePasswordActivity$4;->this$0:Lcom/perm/kate/ChangePasswordActivity;

    invoke-static {v0}, Lcom/perm/kate/ChangePasswordActivity;->access$800(Lcom/perm/kate/ChangePasswordActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v7

    iget-object v8, p0, Lcom/perm/kate/ChangePasswordActivity$4;->this$0:Lcom/perm/kate/ChangePasswordActivity;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/session/Session;->changePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
