.class Lcom/perm/kate/SuggestionsFriendsFragment$7;
.super Ljava/lang/Object;
.source "SuggestionsFriendsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SuggestionsFriendsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/SuggestionsFriendsFragment;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/perm/kate/SuggestionsFriendsFragment$7;->this$0:Lcom/perm/kate/SuggestionsFriendsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2

    .line 205
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/User;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 208
    :cond_0
    iget-wide p2, p1, Lcom/perm/kate/api/User;->uid:J

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    .line 209
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 210
    new-instance p4, Lcom/perm/kate/MenuItemDetails;

    const p5, 0x7f0f029f

    const/4 v0, 0x1

    invoke-direct {p4, p5, v0}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    new-instance p4, Lcom/perm/kate/MenuItemDetails;

    const p5, 0x7f0f0232

    const/4 v1, 0x2

    invoke-direct {p4, p5, v1}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    new-instance p4, Lcom/perm/kate/MenuItemDetails;

    const p5, 0x7f0f01db

    const/4 v1, 0x3

    invoke-direct {p4, p5, v1}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    new-instance p4, Lcom/perm/kate/MenuItemDetails;

    const p5, 0x7f0f00ba

    const/4 v1, 0x4

    invoke-direct {p4, p5, v1}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    new-instance p4, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p5, p0, Lcom/perm/kate/SuggestionsFriendsFragment$7;->this$0:Lcom/perm/kate/SuggestionsFriendsFragment;

    invoke-virtual {p5}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p5

    invoke-static {p5}, Lcom/perm/kate/Helper;->getBaseActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object p5

    invoke-direct {p4, p5}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 216
    invoke-static {p3}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object p5

    new-instance v1, Lcom/perm/kate/SuggestionsFriendsFragment$7$1;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/perm/kate/SuggestionsFriendsFragment$7$1;-><init>(Lcom/perm/kate/SuggestionsFriendsFragment$7;Ljava/util/ArrayList;Ljava/lang/String;Lcom/perm/kate/api/User;)V

    invoke-virtual {p4, p5, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 236
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 237
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 238
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return v0
.end method
