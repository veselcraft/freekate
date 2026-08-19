.class Lcom/perm/kate/ProfileFragment$18;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileFragment;)V
    .locals 0

    .line 997
    iput-object p1, p0, Lcom/perm/kate/ProfileFragment$18;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1000
    iget-object p1, p0, Lcom/perm/kate/ProfileFragment$18;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-static {p1}, Lcom/perm/kate/ProfileFragment;->access$800(Lcom/perm/kate/ProfileFragment;)Lcom/perm/kate/api/User;

    move-result-object p1

    iget-object p1, p1, Lcom/perm/kate/api/User;->status:Ljava/lang/String;

    iget-object p2, p0, Lcom/perm/kate/ProfileFragment$18;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/perm/kate/Helper;->copyText(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
