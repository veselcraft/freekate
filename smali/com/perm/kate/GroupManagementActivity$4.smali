.class Lcom/perm/kate/GroupManagementActivity$4;
.super Ljava/lang/Object;
.source "GroupManagementActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/GroupManagementActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupManagementActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupManagementActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/GroupManagementActivity;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/perm/kate/GroupManagementActivity$4;->this$0:Lcom/perm/kate/GroupManagementActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v9, 0x1

    .line 121
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/api/User;

    .line 122
    .local v3, "user":Lcom/perm/kate/api/User;
    if-nez v3, :cond_0

    .line 157
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v6, v3, Lcom/perm/kate/api/User;->role:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, v3, Lcom/perm/kate/api/User;->role:Ljava/lang/String;

    const-string v7, "add"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 125
    iget-object v6, p0, Lcom/perm/kate/GroupManagementActivity$4;->this$0:Lcom/perm/kate/GroupManagementActivity;

    invoke-static {v6}, Lcom/perm/kate/GroupManagementActivity;->access$600(Lcom/perm/kate/GroupManagementActivity;)V

    goto :goto_0

    .line 128
    :cond_1
    sget-object v6, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    const/4 v7, 0x0

    invoke-virtual {v6, v3, v7}, Lcom/perm/kate/db/DataHelper;->createOrUpdateUser(Lcom/perm/kate/api/User;Z)V

    .line 129
    iget-wide v6, v3, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 130
    .local v4, "user_id":Ljava/lang/String;
    iget-object v2, v3, Lcom/perm/kate/api/User;->role:Ljava/lang/String;

    .line 131
    .local v2, "role":Ljava/lang/String;
    iget-object v6, p0, Lcom/perm/kate/GroupManagementActivity$4;->this$0:Lcom/perm/kate/GroupManagementActivity;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v3, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/perm/kate/GroupManagementActivity;->access$702(Lcom/perm/kate/GroupManagementActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 132
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v1, "menuItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    new-instance v6, Lcom/perm/kate/MenuItemDetails;

    const v7, 0x7f070245

    invoke-direct {v6, v7, v9}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    new-instance v6, Lcom/perm/kate/MenuItemDetails;

    const v7, 0x7f07018d

    const/4 v8, 0x2

    invoke-direct {v6, v7, v8}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v6, v3, Lcom/perm/kate/api/User;->role:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, v3, Lcom/perm/kate/api/User;->role:Ljava/lang/String;

    const-string v7, "creator"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 136
    new-instance v6, Lcom/perm/kate/MenuItemDetails;

    const v7, 0x7f07018a

    const/4 v8, 0x3

    invoke-direct {v6, v7, v8}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_2
    new-instance v6, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/perm/kate/GroupManagementActivity$4;->this$0:Lcom/perm/kate/GroupManagementActivity;

    invoke-static {v7}, Lcom/perm/kate/Helper;->getBaseActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 138
    invoke-static {v1}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v7

    new-instance v8, Lcom/perm/kate/GroupManagementActivity$4$1;

    invoke-direct {v8, p0, v1, v4, v2}, Lcom/perm/kate/GroupManagementActivity$4$1;-><init>(Lcom/perm/kate/GroupManagementActivity$4;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v5

    .line 154
    .local v5, "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v5}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 155
    .local v0, "dialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {v0, v9}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 156
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method
