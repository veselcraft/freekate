.class Lcom/perm/kate/GroupContactsActivity$4;
.super Ljava/lang/Object;
.source "GroupContactsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 129
    iput-object p1, p0, Lcom/perm/kate/GroupContactsActivity$4;->this$0:Lcom/perm/kate/GroupContactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    const/4 v3, 0x0

    .line 132
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/ContactsListAdapter$ContactItem;

    .line 133
    .local v0, "item":Lcom/perm/kate/ContactsListAdapter$ContactItem;
    iget-object v1, v0, Lcom/perm/kate/ContactsListAdapter$ContactItem;->type:Lcom/perm/kate/ContactsListAdapter$ContactType;

    sget-object v2, Lcom/perm/kate/ContactsListAdapter$ContactType;->USER:Lcom/perm/kate/ContactsListAdapter$ContactType;

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/perm/kate/ContactsListAdapter$ContactItem;->user:Lcom/perm/kate/api/User;

    if-eqz v1, :cond_0

    .line 134
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, v0, Lcom/perm/kate/ContactsListAdapter$ContactItem;->user:Lcom/perm/kate/api/User;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/perm/kate/db/DataHelper;->createOrUpdateUser(Lcom/perm/kate/api/User;Z)V

    .line 135
    iget-object v1, v0, Lcom/perm/kate/ContactsListAdapter$ContactItem;->user:Lcom/perm/kate/api/User;

    iget-wide v2, v1, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/GroupContactsActivity$4;->this$0:Lcom/perm/kate/GroupContactsActivity;

    invoke-static {v1, v2}, Lcom/perm/kate/Helper;->ShowProfile(Ljava/lang/String;Landroid/app/Activity;)V

    .line 140
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v1, v0, Lcom/perm/kate/ContactsListAdapter$ContactItem;->type:Lcom/perm/kate/ContactsListAdapter$ContactType;

    sget-object v2, Lcom/perm/kate/ContactsListAdapter$ContactType;->PHONE:Lcom/perm/kate/ContactsListAdapter$ContactType;

    if-ne v1, v2, :cond_1

    .line 137
    iget-object v1, p0, Lcom/perm/kate/GroupContactsActivity$4;->this$0:Lcom/perm/kate/GroupContactsActivity;

    iget-object v2, v0, Lcom/perm/kate/ContactsListAdapter$ContactItem;->contact:Lcom/perm/kate/api/Contact;

    iget-object v2, v2, Lcom/perm/kate/api/Contact;->phone:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/perm/kate/Helper;->onDial(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/GroupContactsActivity$4;->this$0:Lcom/perm/kate/GroupContactsActivity;

    iget-object v2, v0, Lcom/perm/kate/ContactsListAdapter$ContactItem;->contact:Lcom/perm/kate/api/Contact;

    iget-object v2, v2, Lcom/perm/kate/api/Contact;->email:Ljava/lang/String;

    invoke-static {v1, v2, v3, v3}, Lcom/perm/kate/Helper;->onEmail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
