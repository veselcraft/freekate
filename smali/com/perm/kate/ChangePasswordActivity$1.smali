.class Lcom/perm/kate/ChangePasswordActivity$1;
.super Ljava/lang/Object;
.source "ChangePasswordActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 44
    iput-object p1, p0, Lcom/perm/kate/ChangePasswordActivity$1;->this$0:Lcom/perm/kate/ChangePasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v1, 0x0

    .line 48
    if-eqz p2, :cond_0

    .line 49
    iget-object v0, p0, Lcom/perm/kate/ChangePasswordActivity$1;->this$0:Lcom/perm/kate/ChangePasswordActivity;

    invoke-static {v0}, Lcom/perm/kate/ChangePasswordActivity;->access$000(Lcom/perm/kate/ChangePasswordActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 50
    iget-object v0, p0, Lcom/perm/kate/ChangePasswordActivity$1;->this$0:Lcom/perm/kate/ChangePasswordActivity;

    invoke-static {v0}, Lcom/perm/kate/ChangePasswordActivity;->access$100(Lcom/perm/kate/ChangePasswordActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 51
    iget-object v0, p0, Lcom/perm/kate/ChangePasswordActivity$1;->this$0:Lcom/perm/kate/ChangePasswordActivity;

    invoke-static {v0}, Lcom/perm/kate/ChangePasswordActivity;->access$200(Lcom/perm/kate/ChangePasswordActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 57
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/ChangePasswordActivity$1;->this$0:Lcom/perm/kate/ChangePasswordActivity;

    invoke-static {v0}, Lcom/perm/kate/ChangePasswordActivity;->access$000(Lcom/perm/kate/ChangePasswordActivity;)Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v1}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 54
    iget-object v0, p0, Lcom/perm/kate/ChangePasswordActivity$1;->this$0:Lcom/perm/kate/ChangePasswordActivity;

    invoke-static {v0}, Lcom/perm/kate/ChangePasswordActivity;->access$100(Lcom/perm/kate/ChangePasswordActivity;)Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v1}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 55
    iget-object v0, p0, Lcom/perm/kate/ChangePasswordActivity$1;->this$0:Lcom/perm/kate/ChangePasswordActivity;

    invoke-static {v0}, Lcom/perm/kate/ChangePasswordActivity;->access$200(Lcom/perm/kate/ChangePasswordActivity;)Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v1}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0
.end method
