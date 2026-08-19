.class Lcom/perm/kate/FollowersFragment$8;
.super Ljava/lang/Object;
.source "FollowersFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FollowersFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FollowersFragment;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/perm/kate/FollowersFragment$8;->this$0:Lcom/perm/kate/FollowersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1

    .line 234
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 235
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    const-wide/16 p4, 0x0

    cmp-long v0, p2, p4

    if-lez v0, :cond_0

    .line 236
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 237
    new-instance p3, Lcom/perm/kate/MenuItemDetails;

    const p4, 0x7f0f029f

    const/4 p5, 0x1

    invoke-direct {p3, p4, p5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    new-instance p3, Lcom/perm/kate/MenuItemDetails;

    const p4, 0x7f0f0232

    const/4 v0, 0x2

    invoke-direct {p3, p4, v0}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    new-instance p3, Lcom/perm/kate/MenuItemDetails;

    const p4, 0x7f0f01db

    const/4 v0, 0x3

    invoke-direct {p3, p4, v0}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    new-instance p3, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p4, p0, Lcom/perm/kate/FollowersFragment$8;->this$0:Lcom/perm/kate/FollowersFragment;

    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p4

    invoke-direct {p3, p4}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 241
    invoke-static {p2}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object p4

    new-instance v0, Lcom/perm/kate/FollowersFragment$8$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/perm/kate/FollowersFragment$8$1;-><init>(Lcom/perm/kate/FollowersFragment$8;Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {p3, p4, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 257
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 258
    invoke-virtual {p1, p5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 259
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return p5

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
