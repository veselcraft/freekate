.class Lcom/perm/kate/GroupBannedActivity$3$1;
.super Ljava/lang/Object;
.source "GroupBannedActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GroupBannedActivity$3;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/GroupBannedActivity$3;

.field final synthetic val$item:Lcom/perm/kate/api/GroupBanItem;

.field final synthetic val$menus:Ljava/util/ArrayList;


# direct methods
.method public static synthetic $r8$lambda$yQyrN6pP0ciGxn99RnaMYkaUvJ0(Lcom/perm/kate/GroupBannedActivity$3$1;Lcom/perm/kate/api/GroupBanItem;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/perm/kate/GroupBannedActivity$3$1;->lambda$onClick$0(Lcom/perm/kate/api/GroupBanItem;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method constructor <init>(Lcom/perm/kate/GroupBannedActivity$3;Ljava/util/ArrayList;Lcom/perm/kate/api/GroupBanItem;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/perm/kate/GroupBannedActivity$3$1;->this$1:Lcom/perm/kate/GroupBannedActivity$3;

    iput-object p2, p0, Lcom/perm/kate/GroupBannedActivity$3$1;->val$menus:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/perm/kate/GroupBannedActivity$3$1;->val$item:Lcom/perm/kate/api/GroupBanItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onClick$0(Lcom/perm/kate/api/GroupBanItem;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 118
    iget-object p2, p0, Lcom/perm/kate/GroupBannedActivity$3$1;->this$1:Lcom/perm/kate/GroupBannedActivity$3;

    iget-object p2, p2, Lcom/perm/kate/GroupBannedActivity$3;->this$0:Lcom/perm/kate/GroupBannedActivity;

    invoke-static {p2, p1}, Lcom/perm/kate/GroupBannedActivity;->access$600(Lcom/perm/kate/GroupBannedActivity;Lcom/perm/kate/api/GroupBanItem;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 106
    iget-object p1, p0, Lcom/perm/kate/GroupBannedActivity$3$1;->val$menus:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/MenuItemDetails;

    iget p1, p1, Lcom/perm/kate/MenuItemDetails;->code:I

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/GroupBannedActivity$3$1;->this$1:Lcom/perm/kate/GroupBannedActivity$3;

    iget-object p1, p1, Lcom/perm/kate/GroupBannedActivity$3;->this$0:Lcom/perm/kate/GroupBannedActivity;

    iget-object p2, p0, Lcom/perm/kate/GroupBannedActivity$3$1;->val$item:Lcom/perm/kate/api/GroupBanItem;

    invoke-static {p1, p2}, Lcom/perm/kate/GroupBannedActivity;->access$400(Lcom/perm/kate/GroupBannedActivity;Lcom/perm/kate/api/GroupBanItem;)V

    .line 124
    iget-object p1, p0, Lcom/perm/kate/GroupBannedActivity$3$1;->this$1:Lcom/perm/kate/GroupBannedActivity$3;

    iget-object p1, p1, Lcom/perm/kate/GroupBannedActivity$3;->this$0:Lcom/perm/kate/GroupBannedActivity;

    iget-object p2, p0, Lcom/perm/kate/GroupBannedActivity$3$1;->val$item:Lcom/perm/kate/api/GroupBanItem;

    invoke-static {p1, p2}, Lcom/perm/kate/GroupBannedActivity;->access$500(Lcom/perm/kate/GroupBannedActivity;Lcom/perm/kate/api/GroupBanItem;)V

    goto :goto_0

    .line 115
    :cond_1
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/perm/kate/GroupBannedActivity$3$1;->this$1:Lcom/perm/kate/GroupBannedActivity$3;

    iget-object p2, p2, Lcom/perm/kate/GroupBannedActivity$3;->this$0:Lcom/perm/kate/GroupBannedActivity;

    invoke-direct {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p2, 0x7f0f03ef

    .line 116
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f0f02e8

    .line 117
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f0f05a7

    iget-object v0, p0, Lcom/perm/kate/GroupBannedActivity$3$1;->val$item:Lcom/perm/kate/api/GroupBanItem;

    new-instance v1, Lcom/perm/kate/GroupBannedActivity$3$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/perm/kate/GroupBannedActivity$3$1$$ExternalSyntheticLambda0;-><init>(Lcom/perm/kate/GroupBannedActivity$3$1;Lcom/perm/kate/api/GroupBanItem;)V

    .line 118
    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f0f037a

    const/4 v0, 0x0

    .line 119
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 120
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 111
    :cond_2
    iget-object p1, p0, Lcom/perm/kate/GroupBannedActivity$3$1;->this$1:Lcom/perm/kate/GroupBannedActivity$3;

    iget-object p1, p1, Lcom/perm/kate/GroupBannedActivity$3;->this$0:Lcom/perm/kate/GroupBannedActivity;

    iget-object p2, p0, Lcom/perm/kate/GroupBannedActivity$3$1;->val$item:Lcom/perm/kate/api/GroupBanItem;

    invoke-static {p1, p2}, Lcom/perm/kate/GroupBannedActivity;->access$400(Lcom/perm/kate/GroupBannedActivity;Lcom/perm/kate/api/GroupBanItem;)V

    .line 112
    iget-object p1, p0, Lcom/perm/kate/GroupBannedActivity$3$1;->val$item:Lcom/perm/kate/api/GroupBanItem;

    iget-object p1, p1, Lcom/perm/kate/api/GroupBanItem;->user:Lcom/perm/kate/api/User;

    iget-wide p1, p1, Lcom/perm/kate/api/User;->uid:J

    iget-object v0, p0, Lcom/perm/kate/GroupBannedActivity$3$1;->this$1:Lcom/perm/kate/GroupBannedActivity$3;

    iget-object v0, v0, Lcom/perm/kate/GroupBannedActivity$3;->this$0:Lcom/perm/kate/GroupBannedActivity;

    invoke-static {p1, p2, v0}, Lcom/perm/kate/Helper;->ShowProfile(JLandroid/app/Activity;)V

    goto :goto_0

    .line 108
    :cond_3
    iget-object p1, p0, Lcom/perm/kate/GroupBannedActivity$3$1;->val$item:Lcom/perm/kate/api/GroupBanItem;

    iget-object p1, p1, Lcom/perm/kate/api/GroupBanItem;->group:Lcom/perm/kate/api/Group;

    iget-wide p1, p1, Lcom/perm/kate/api/Group;->gid:J

    iget-object v0, p0, Lcom/perm/kate/GroupBannedActivity$3$1;->this$1:Lcom/perm/kate/GroupBannedActivity$3;

    iget-object v0, v0, Lcom/perm/kate/GroupBannedActivity$3;->this$0:Lcom/perm/kate/GroupBannedActivity;

    invoke-static {p1, p2, v0}, Lcom/perm/kate/Helper;->showGroup(JLandroid/app/Activity;)V

    :goto_0
    return-void
.end method
