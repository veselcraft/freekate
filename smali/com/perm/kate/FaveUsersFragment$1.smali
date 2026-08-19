.class Lcom/perm/kate/FaveUsersFragment$1;
.super Ljava/lang/Object;
.source "FaveUsersFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FaveUsersFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FaveUsersFragment;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/perm/kate/FaveUsersFragment$1;->this$0:Lcom/perm/kate/FaveUsersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 71
    iget-object p1, p0, Lcom/perm/kate/FaveUsersFragment$1;->this$0:Lcom/perm/kate/FaveUsersFragment;

    invoke-static {p1}, Lcom/perm/kate/FaveUsersFragment;->access$000(Lcom/perm/kate/FaveUsersFragment;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
