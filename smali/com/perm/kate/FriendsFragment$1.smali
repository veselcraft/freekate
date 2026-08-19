.class Lcom/perm/kate/FriendsFragment$1;
.super Ljava/lang/Object;
.source "FriendsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FriendsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FriendsFragment;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/perm/kate/FriendsFragment$1;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 113
    iget-object p1, p0, Lcom/perm/kate/FriendsFragment$1;->this$0:Lcom/perm/kate/FriendsFragment;

    iget-object p1, p1, Lcom/perm/kate/FriendsFragment;->filterText:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
