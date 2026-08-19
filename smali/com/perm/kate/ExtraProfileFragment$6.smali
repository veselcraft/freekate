.class Lcom/perm/kate/ExtraProfileFragment$6;
.super Ljava/lang/Object;
.source "ExtraProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ExtraProfileFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/ExtraProfileFragment;)V
    .locals 0

    .line 407
    iput-object p1, p0, Lcom/perm/kate/ExtraProfileFragment$6;->this$0:Lcom/perm/kate/ExtraProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 410
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 412
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment$6;->this$0:Lcom/perm/kate/ExtraProfileFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/perm/kate/Helper;->ShowProfile(Ljava/lang/String;Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
