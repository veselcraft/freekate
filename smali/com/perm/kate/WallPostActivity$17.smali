.class Lcom/perm/kate/WallPostActivity$17;
.super Ljava/lang/Object;
.source "WallPostActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/WallPostActivity;->disableFieldAndButtonsInUI(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/WallPostActivity;

.field final synthetic val$disable:Z


# direct methods
.method constructor <init>(Lcom/perm/kate/WallPostActivity;Z)V
    .locals 0

    .line 1078
    iput-object p1, p0, Lcom/perm/kate/WallPostActivity$17;->this$0:Lcom/perm/kate/WallPostActivity;

    iput-boolean p2, p0, Lcom/perm/kate/WallPostActivity$17;->val$disable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1081
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$17;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v0}, Lcom/perm/kate/WallPostActivity;->access$3300(Lcom/perm/kate/WallPostActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-boolean v1, p0, Lcom/perm/kate/WallPostActivity$17;->val$disable:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1082
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$17;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v0}, Lcom/perm/kate/WallPostActivity;->access$3400(Lcom/perm/kate/WallPostActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-boolean v1, p0, Lcom/perm/kate/WallPostActivity$17;->val$disable:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1083
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$17;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v0}, Lcom/perm/kate/WallPostActivity;->access$3500(Lcom/perm/kate/WallPostActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-boolean v1, p0, Lcom/perm/kate/WallPostActivity$17;->val$disable:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1084
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$17;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v0}, Lcom/perm/kate/WallPostActivity;->access$3600(Lcom/perm/kate/WallPostActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-boolean v1, p0, Lcom/perm/kate/WallPostActivity$17;->val$disable:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1085
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$17;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v0}, Lcom/perm/kate/WallPostActivity;->access$3700(Lcom/perm/kate/WallPostActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-boolean v1, p0, Lcom/perm/kate/WallPostActivity$17;->val$disable:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1086
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$17;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v0}, Lcom/perm/kate/WallPostActivity;->access$000(Lcom/perm/kate/WallPostActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-boolean v1, p0, Lcom/perm/kate/WallPostActivity$17;->val$disable:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    return-void
.end method
