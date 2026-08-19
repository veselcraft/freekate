.class Lcom/perm/kate/GroupContactsActivity$5;
.super Ljava/lang/Object;
.source "GroupContactsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/GroupContactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupContactsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupContactsActivity;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/perm/kate/GroupContactsActivity$5;->this$0:Lcom/perm/kate/GroupContactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 154
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/ContactsListAdapter$ContactItem;

    .line 156
    iget-object p2, p1, Lcom/perm/kate/ContactsListAdapter$ContactItem;->type:Lcom/perm/kate/ContactsListAdapter$ContactType;

    sget-object p3, Lcom/perm/kate/ContactsListAdapter$ContactType;->USER:Lcom/perm/kate/ContactsListAdapter$ContactType;

    const/4 p4, 0x1

    if-ne p2, p3, :cond_1

    .line 157
    iget-object p1, p1, Lcom/perm/kate/ContactsListAdapter$ContactItem;->user:Lcom/perm/kate/api/User;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    .line 162
    :cond_0
    sget-object p3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {p3, p1, p2}, Lcom/perm/kate/db/DataHelper;->createOrUpdateUser(Lcom/perm/kate/api/User;Z)V

    .line 163
    iget-wide p1, p1, Lcom/perm/kate/api/User;->uid:J

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 164
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 165
    new-instance p3, Lcom/perm/kate/MenuItemDetails;

    const p5, 0x7f0f029f

    invoke-direct {p3, p5, p4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    new-instance p3, Lcom/perm/kate/MenuItemDetails;

    const p5, 0x7f0f0232

    const/4 v0, 0x2

    invoke-direct {p3, p5, v0}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    new-instance p3, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p5, p0, Lcom/perm/kate/GroupContactsActivity$5;->this$0:Lcom/perm/kate/GroupContactsActivity;

    invoke-static {p5}, Lcom/perm/kate/Helper;->getBaseActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object p5

    invoke-direct {p3, p5}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 169
    invoke-static {p2}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object p5

    new-instance v0, Lcom/perm/kate/GroupContactsActivity$5$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/perm/kate/GroupContactsActivity$5$1;-><init>(Lcom/perm/kate/GroupContactsActivity$5;Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {p3, p5, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 183
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 184
    invoke-virtual {p1, p4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 185
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_1
    return p4
.end method
