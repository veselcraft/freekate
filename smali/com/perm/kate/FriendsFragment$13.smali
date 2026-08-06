.class Lcom/perm/kate/FriendsFragment$13;
.super Ljava/lang/Object;
.source "FriendsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/FriendsFragment;->showFriendsListsDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FriendsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FriendsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/FriendsFragment;

    .prologue
    .line 610
    iput-object p1, p0, Lcom/perm/kate/FriendsFragment$13;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 612
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment$13;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-static {v0, p2}, Lcom/perm/kate/FriendsFragment;->access$1400(Lcom/perm/kate/FriendsFragment;I)V

    .line 613
    return-void
.end method
