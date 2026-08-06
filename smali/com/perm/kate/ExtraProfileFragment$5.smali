.class Lcom/perm/kate/ExtraProfileFragment$5;
.super Ljava/lang/Object;
.source "ExtraProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/ExtraProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ExtraProfileFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/ExtraProfileFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/ExtraProfileFragment;

    .prologue
    .line 361
    iput-object p1, p0, Lcom/perm/kate/ExtraProfileFragment$5;->this$0:Lcom/perm/kate/ExtraProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 364
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    .line 365
    .local v0, "tv":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 366
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/ExtraProfileFragment$5;->this$0:Lcom/perm/kate/ExtraProfileFragment;

    invoke-virtual {v2}, Lcom/perm/kate/ExtraProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/perm/kate/Helper;->createCopyTextContextMenu(Ljava/lang/String;Landroid/content/Context;)V

    .line 367
    :cond_0
    return-void
.end method
