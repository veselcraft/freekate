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

    .line 129
    iput-object p1, p0, Lcom/perm/kate/GroupContactsActivity$4;->this$0:Lcom/perm/kate/GroupContactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 133
    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/ContactsListAdapter$ContactItem;

    .line 134
    iget-object p2, p1, Lcom/perm/kate/ContactsListAdapter$ContactItem;->type:Lcom/perm/kate/ContactsListAdapter$ContactType;

    sget-object p3, Lcom/perm/kate/ContactsListAdapter$ContactType;->USER:Lcom/perm/kate/ContactsListAdapter$ContactType;

    if-ne p2, p3, :cond_0

    iget-object p3, p1, Lcom/perm/kate/ContactsListAdapter$ContactItem;->user:Lcom/perm/kate/api/User;

    if-eqz p3, :cond_0

    .line 135
    sget-object p2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Lcom/perm/kate/db/DataHelper;->createOrUpdateUser(Lcom/perm/kate/api/User;Z)V

    .line 136
    iget-object p1, p1, Lcom/perm/kate/ContactsListAdapter$ContactItem;->user:Lcom/perm/kate/api/User;

    iget-wide p1, p1, Lcom/perm/kate/api/User;->uid:J

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/perm/kate/GroupContactsActivity$4;->this$0:Lcom/perm/kate/GroupContactsActivity;

    invoke-static {p1, p2}, Lcom/perm/kate/Helper;->ShowProfile(Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_0

    .line 137
    :cond_0
    sget-object p3, Lcom/perm/kate/ContactsListAdapter$ContactType;->PHONE:Lcom/perm/kate/ContactsListAdapter$ContactType;

    if-ne p2, p3, :cond_1

    .line 138
    iget-object p2, p0, Lcom/perm/kate/GroupContactsActivity$4;->this$0:Lcom/perm/kate/GroupContactsActivity;

    iget-object p1, p1, Lcom/perm/kate/ContactsListAdapter$ContactItem;->contact:Lcom/perm/kate/api/Contact;

    iget-object p1, p1, Lcom/perm/kate/api/Contact;->phone:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/perm/kate/Helper;->onDial(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 140
    :cond_1
    iget-object p2, p0, Lcom/perm/kate/GroupContactsActivity$4;->this$0:Lcom/perm/kate/GroupContactsActivity;

    iget-object p1, p1, Lcom/perm/kate/ContactsListAdapter$ContactItem;->contact:Lcom/perm/kate/api/Contact;

    iget-object p1, p1, Lcom/perm/kate/api/Contact;->email:Ljava/lang/String;

    const/4 p3, 0x0

    invoke-static {p2, p1, p3, p3}, Lcom/perm/kate/Helper;->onEmail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 143
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 144
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
