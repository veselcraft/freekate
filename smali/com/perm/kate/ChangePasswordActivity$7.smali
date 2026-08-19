.class Lcom/perm/kate/ChangePasswordActivity$7;
.super Ljava/lang/Object;
.source "ChangePasswordActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/ChangePasswordActivity;->errorOnUiThread(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ChangePasswordActivity;

.field final synthetic val$focus_to_old:Z


# direct methods
.method constructor <init>(Lcom/perm/kate/ChangePasswordActivity;Z)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/perm/kate/ChangePasswordActivity$7;->this$0:Lcom/perm/kate/ChangePasswordActivity;

    iput-boolean p2, p0, Lcom/perm/kate/ChangePasswordActivity$7;->val$focus_to_old:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/perm/kate/ChangePasswordActivity$7;->this$0:Lcom/perm/kate/ChangePasswordActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/perm/kate/ChangePasswordActivity;->access$400(Lcom/perm/kate/ChangePasswordActivity;Z)V

    .line 162
    iget-boolean v0, p0, Lcom/perm/kate/ChangePasswordActivity$7;->val$focus_to_old:Z

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/perm/kate/ChangePasswordActivity$7;->this$0:Lcom/perm/kate/ChangePasswordActivity;

    invoke-static {v0}, Lcom/perm/kate/ChangePasswordActivity;->access$1200(Lcom/perm/kate/ChangePasswordActivity;)V

    :cond_0
    return-void
.end method
