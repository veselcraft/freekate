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
    .param p1, "this$0"    # Lcom/perm/kate/WallPostActivity;

    .prologue
    .line 1050
    iput-object p1, p0, Lcom/perm/kate/WallPostActivity$17;->this$0:Lcom/perm/kate/WallPostActivity;

    iput-boolean p2, p0, Lcom/perm/kate/WallPostActivity$17;->val$disable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1053
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$17;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v0}, Lcom/perm/kate/WallPostActivity;->access$3200(Lcom/perm/kate/WallPostActivity;)Landroid/widget/Button;

    move-result-object v3

    iget-boolean v0, p0, Lcom/perm/kate/WallPostActivity$17;->val$disable:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1054
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$17;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v0}, Lcom/perm/kate/WallPostActivity;->access$3300(Lcom/perm/kate/WallPostActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    iget-boolean v0, p0, Lcom/perm/kate/WallPostActivity$17;->val$disable:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1055
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$17;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v0}, Lcom/perm/kate/WallPostActivity;->access$3400(Lcom/perm/kate/WallPostActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    iget-boolean v0, p0, Lcom/perm/kate/WallPostActivity$17;->val$disable:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1056
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$17;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v0}, Lcom/perm/kate/WallPostActivity;->access$3500(Lcom/perm/kate/WallPostActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    iget-boolean v0, p0, Lcom/perm/kate/WallPostActivity$17;->val$disable:Z

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1057
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$17;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v0}, Lcom/perm/kate/WallPostActivity;->access$3600(Lcom/perm/kate/WallPostActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    iget-boolean v0, p0, Lcom/perm/kate/WallPostActivity$17;->val$disable:Z

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1058
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$17;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v0}, Lcom/perm/kate/WallPostActivity;->access$000(Lcom/perm/kate/WallPostActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-boolean v3, p0, Lcom/perm/kate/WallPostActivity$17;->val$disable:Z

    if-nez v3, :cond_5

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1059
    return-void

    :cond_0
    move v0, v2

    .line 1053
    goto :goto_0

    :cond_1
    move v0, v2

    .line 1054
    goto :goto_1

    :cond_2
    move v0, v2

    .line 1055
    goto :goto_2

    :cond_3
    move v0, v2

    .line 1056
    goto :goto_3

    :cond_4
    move v0, v2

    .line 1057
    goto :goto_4

    :cond_5
    move v1, v2

    .line 1058
    goto :goto_5
.end method
