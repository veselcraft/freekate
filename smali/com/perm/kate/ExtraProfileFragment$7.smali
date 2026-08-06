.class Lcom/perm/kate/ExtraProfileFragment$7;
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
    .line 435
    iput-object p1, p0, Lcom/perm/kate/ExtraProfileFragment$7;->this$0:Lcom/perm/kate/ExtraProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x1

    .line 438
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 439
    .local v2, "id":Ljava/lang/String;
    const v6, 0x7f0e0345

    invoke-virtual {p1, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 440
    .local v4, "label":Ljava/lang/String;
    const v6, 0x7f0e0346

    invoke-virtual {p1, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 441
    .local v0, "code":I
    const/4 v6, 0x2

    new-array v3, v6, [Ljava/lang/CharSequence;

    .line 442
    .local v3, "items":[Ljava/lang/CharSequence;
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment$7;->this$0:Lcom/perm/kate/ExtraProfileFragment;

    const v8, 0x7f070344

    invoke-virtual {v7, v8}, Lcom/perm/kate/ExtraProfileFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v3, v6

    .line 443
    iget-object v6, p0, Lcom/perm/kate/ExtraProfileFragment$7;->this$0:Lcom/perm/kate/ExtraProfileFragment;

    const v7, 0x7f070171

    invoke-virtual {v6, v7}, Lcom/perm/kate/ExtraProfileFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v3, v9

    .line 444
    new-instance v6, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/perm/kate/ExtraProfileFragment$7;->this$0:Lcom/perm/kate/ExtraProfileFragment;

    invoke-virtual {v7}, Lcom/perm/kate/ExtraProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/perm/kate/ExtraProfileFragment$7$1;

    invoke-direct {v7, p0, v2, v0}, Lcom/perm/kate/ExtraProfileFragment$7$1;-><init>(Lcom/perm/kate/ExtraProfileFragment$7;Ljava/lang/String;I)V

    .line 445
    invoke-virtual {v6, v3, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v5

    .line 454
    .local v5, "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v5}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 455
    .local v1, "dialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {v1, v9}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 456
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 457
    return-void
.end method
