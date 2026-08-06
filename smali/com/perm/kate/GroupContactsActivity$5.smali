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
    .param p1, "this$0"    # Lcom/perm/kate/GroupContactsActivity;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/perm/kate/GroupContactsActivity$5;->this$0:Lcom/perm/kate/GroupContactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 10
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 148
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/ContactsListAdapter$ContactItem;

    .line 150
    .local v1, "item":Lcom/perm/kate/ContactsListAdapter$ContactItem;
    iget-object v8, v1, Lcom/perm/kate/ContactsListAdapter$ContactItem;->type:Lcom/perm/kate/ContactsListAdapter$ContactType;

    sget-object v9, Lcom/perm/kate/ContactsListAdapter$ContactType;->USER:Lcom/perm/kate/ContactsListAdapter$ContactType;

    if-ne v8, v9, :cond_0

    .line 151
    iget-object v3, v1, Lcom/perm/kate/ContactsListAdapter$ContactItem;->user:Lcom/perm/kate/api/User;

    .line 154
    .local v3, "user":Lcom/perm/kate/api/User;
    if-nez v3, :cond_1

    .line 180
    .end local v3    # "user":Lcom/perm/kate/api/User;
    :goto_0
    return v6

    :cond_0
    move v6, v7

    .line 153
    goto :goto_0

    .line 156
    .restart local v3    # "user":Lcom/perm/kate/api/User;
    :cond_1
    sget-object v8, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v8, v3, v6}, Lcom/perm/kate/db/DataHelper;->createOrUpdateUser(Lcom/perm/kate/api/User;Z)V

    .line 157
    iget-wide v8, v3, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 158
    .local v4, "user_id":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v2, "menuItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    new-instance v6, Lcom/perm/kate/MenuItemDetails;

    const v8, 0x7f070245

    invoke-direct {v6, v8, v7}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    new-instance v6, Lcom/perm/kate/MenuItemDetails;

    const v8, 0x7f0701d6

    const/4 v9, 0x2

    invoke-direct {v6, v8, v9}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance v6, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/perm/kate/GroupContactsActivity$5;->this$0:Lcom/perm/kate/GroupContactsActivity;

    invoke-static {v8}, Lcom/perm/kate/Helper;->getBaseActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 163
    invoke-static {v2}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v8

    new-instance v9, Lcom/perm/kate/GroupContactsActivity$5$1;

    invoke-direct {v9, p0, v2, v4}, Lcom/perm/kate/GroupContactsActivity$5$1;-><init>(Lcom/perm/kate/GroupContactsActivity$5;Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {v6, v8, v9}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v5

    .line 177
    .local v5, "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v5}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 178
    .local v0, "dialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {v0, v7}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 179
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    move v6, v7

    .line 180
    goto :goto_0
.end method
