.class Lcom/perm/kate/ChangePasswordActivity$3;
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
    .line 70
    iput-object p1, p0, Lcom/perm/kate/ChangePasswordActivity$3;->this$0:Lcom/perm/kate/ChangePasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/perm/kate/ChangePasswordActivity$3;->this$0:Lcom/perm/kate/ChangePasswordActivity;

    invoke-virtual {v0}, Lcom/perm/kate/ChangePasswordActivity;->finish()V

    .line 74
    return-void
.end method
