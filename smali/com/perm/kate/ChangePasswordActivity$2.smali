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

    .line 58
    iput-object p1, p0, Lcom/perm/kate/ChangePasswordActivity$2;->this$0:Lcom/perm/kate/ChangePasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 61
    iget-object p1, p0, Lcom/perm/kate/ChangePasswordActivity$2;->this$0:Lcom/perm/kate/ChangePasswordActivity;

    invoke-static {p1}, Lcom/perm/kate/ChangePasswordActivity;->access$300(Lcom/perm/kate/ChangePasswordActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 62
    iget-object p1, p0, Lcom/perm/kate/ChangePasswordActivity$2;->this$0:Lcom/perm/kate/ChangePasswordActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/perm/kate/ChangePasswordActivity;->access$400(Lcom/perm/kate/ChangePasswordActivity;Z)V

    .line 63
    iget-object p1, p0, Lcom/perm/kate/ChangePasswordActivity$2;->this$0:Lcom/perm/kate/ChangePasswordActivity;

    invoke-static {p1}, Lcom/perm/kate/ChangePasswordActivity;->access$500(Lcom/perm/kate/ChangePasswordActivity;)V

    :cond_0
    return-void
.end method
