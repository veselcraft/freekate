.class Lcom/perm/kate/RequestsFriendsFragment$6;
.super Ljava/lang/Object;
.source "RequestsFriendsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/RequestsFriendsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/RequestsFriendsFragment;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/perm/kate/RequestsFriendsFragment$6;->this$0:Lcom/perm/kate/RequestsFriendsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1

    .line 177
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 178
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 179
    new-instance p3, Lcom/perm/kate/MenuItemDetails;

    const p4, 0x7f0f029f

    const/4 p5, 0x1

    invoke-direct {p3, p4, p5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    new-instance p3, Lcom/perm/kate/MenuItemDetails;

    const p4, 0x7f0f0232

    const/4 v0, 0x2

    invoke-direct {p3, p4, v0}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    new-instance p3, Lcom/perm/kate/MenuItemDetails;

    const p4, 0x7f0f01db

    const/4 v0, 0x3

    invoke-direct {p3, p4, v0}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    new-instance p3, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p4, p0, Lcom/perm/kate/RequestsFriendsFragment$6;->this$0:Lcom/perm/kate/RequestsFriendsFragment;

    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p4

    invoke-direct {p3, p4}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 183
    invoke-static {p2}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object p4

    new-instance v0, Lcom/perm/kate/RequestsFriendsFragment$6$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/perm/kate/RequestsFriendsFragment$6$1;-><init>(Lcom/perm/kate/RequestsFriendsFragment$6;Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {p3, p4, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 199
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 200
    invoke-virtual {p1, p5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 201
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return p5
.end method
