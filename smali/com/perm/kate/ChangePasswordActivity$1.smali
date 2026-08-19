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

    .line 42
    iput-object p1, p0, Lcom/perm/kate/ChangePasswordActivity$1;->this$0:Lcom/perm/kate/ChangePasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 47
    iget-object p1, p0, Lcom/perm/kate/ChangePasswordActivity$1;->this$0:Lcom/perm/kate/ChangePasswordActivity;

    invoke-static {p1}, Lcom/perm/kate/ChangePasswordActivity;->access$000(Lcom/perm/kate/ChangePasswordActivity;)Landroid/widget/EditText;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 48
    iget-object p1, p0, Lcom/perm/kate/ChangePasswordActivity$1;->this$0:Lcom/perm/kate/ChangePasswordActivity;

    invoke-static {p1}, Lcom/perm/kate/ChangePasswordActivity;->access$100(Lcom/perm/kate/ChangePasswordActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 49
    iget-object p1, p0, Lcom/perm/kate/ChangePasswordActivity$1;->this$0:Lcom/perm/kate/ChangePasswordActivity;

    invoke-static {p1}, Lcom/perm/kate/ChangePasswordActivity;->access$200(Lcom/perm/kate/ChangePasswordActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0

    .line 51
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/ChangePasswordActivity$1;->this$0:Lcom/perm/kate/ChangePasswordActivity;

    invoke-static {p1}, Lcom/perm/kate/ChangePasswordActivity;->access$000(Lcom/perm/kate/ChangePasswordActivity;)Landroid/widget/EditText;

    move-result-object p1

    new-instance p2, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {p2}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 52
    iget-object p1, p0, Lcom/perm/kate/ChangePasswordActivity$1;->this$0:Lcom/perm/kate/ChangePasswordActivity;

    invoke-static {p1}, Lcom/perm/kate/ChangePasswordActivity;->access$100(Lcom/perm/kate/ChangePasswordActivity;)Landroid/widget/EditText;

    move-result-object p1

    new-instance p2, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {p2}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 53
    iget-object p1, p0, Lcom/perm/kate/ChangePasswordActivity$1;->this$0:Lcom/perm/kate/ChangePasswordActivity;

    invoke-static {p1}, Lcom/perm/kate/ChangePasswordActivity;->access$200(Lcom/perm/kate/ChangePasswordActivity;)Landroid/widget/EditText;

    move-result-object p1

    new-instance p2, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {p2}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :goto_0
    return-void
.end method
