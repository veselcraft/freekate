.class Lcom/perm/kate/ChangePasswordActivity$2;
.super Ljava/lang/Object;
.source "ChangePasswordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/ChangePasswordActivity;
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
    .param p1, "this$0"    # Lcom/perm/kate/ChangePasswordActivity;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/perm/kate/ChangePasswordActivity$2;->this$0:Lcom/perm/kate/ChangePasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/perm/kate/ChangePasswordActivity$2;->this$0:Lcom/perm/kate/ChangePasswordActivity;

    invoke-static {v0}, Lcom/perm/kate/ChangePasswordActivity;->access$300(Lcom/perm/kate/ChangePasswordActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/perm/kate/ChangePasswordActivity$2;->this$0:Lcom/perm/kate/ChangePasswordActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/perm/kate/ChangePasswordActivity;->access$400(Lcom/perm/kate/ChangePasswordActivity;Z)V

    .line 65
    iget-object v0, p0, Lcom/perm/kate/ChangePasswordActivity$2;->this$0:Lcom/perm/kate/ChangePasswordActivity;

    invoke-static {v0}, Lcom/perm/kate/ChangePasswordActivity;->access$500(Lcom/perm/kate/ChangePasswordActivity;)V

    .line 67
    :cond_0
    return-void
.end method
