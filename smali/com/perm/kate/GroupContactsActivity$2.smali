.class Lcom/perm/kate/GroupContactsActivity$2;
.super Lcom/perm/kate/session/Callback;
.source "GroupContactsActivity.java"


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
.method constructor <init>(Lcom/perm/kate/GroupContactsActivity;Landroid/app/Activity;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/perm/kate/GroupContactsActivity$2;->this$0:Lcom/perm/kate/GroupContactsActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 92
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 93
    iget-object p1, p0, Lcom/perm/kate/GroupContactsActivity$2;->this$0:Lcom/perm/kate/GroupContactsActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 10

    .line 66
    check-cast p1, Ljava/util/ArrayList;

    .line 67
    iget-object v0, p0, Lcom/perm/kate/GroupContactsActivity$2;->this$0:Lcom/perm/kate/GroupContactsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 68
    iget-object v0, p0, Lcom/perm/kate/GroupContactsActivity$2;->this$0:Lcom/perm/kate/GroupContactsActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupContactsActivity;->access$200(Lcom/perm/kate/GroupContactsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 69
    iget-object v0, p0, Lcom/perm/kate/GroupContactsActivity$2;->this$0:Lcom/perm/kate/GroupContactsActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupContactsActivity;->access$000(Lcom/perm/kate/GroupContactsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Contact;

    .line 70
    new-instance v2, Lcom/perm/kate/ContactsListAdapter$ContactItem;

    invoke-direct {v2}, Lcom/perm/kate/ContactsListAdapter$ContactItem;-><init>()V

    .line 71
    iput-object v1, v2, Lcom/perm/kate/ContactsListAdapter$ContactItem;->contact:Lcom/perm/kate/api/Contact;

    .line 72
    iget-object v3, v1, Lcom/perm/kate/api/Contact;->user_id:Ljava/lang/Long;

    if-eqz v3, :cond_1

    .line 73
    sget-object v3, Lcom/perm/kate/ContactsListAdapter$ContactType;->USER:Lcom/perm/kate/ContactsListAdapter$ContactType;

    iput-object v3, v2, Lcom/perm/kate/ContactsListAdapter$ContactItem;->type:Lcom/perm/kate/ContactsListAdapter$ContactType;

    if-eqz p1, :cond_3

    .line 75
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perm/kate/api/User;

    .line 76
    iget-wide v5, v4, Lcom/perm/kate/api/User;->uid:J

    iget-object v7, v1, Lcom/perm/kate/api/Contact;->user_id:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-nez v9, :cond_0

    .line 77
    iput-object v4, v2, Lcom/perm/kate/ContactsListAdapter$ContactItem;->user:Lcom/perm/kate/api/User;

    goto :goto_1

    .line 81
    :cond_1
    iget-object v1, v1, Lcom/perm/kate/api/Contact;->phone:Ljava/lang/String;

    invoke-static {v1}, Lcom/perm/kate/Helper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 82
    sget-object v1, Lcom/perm/kate/ContactsListAdapter$ContactType;->PHONE:Lcom/perm/kate/ContactsListAdapter$ContactType;

    iput-object v1, v2, Lcom/perm/kate/ContactsListAdapter$ContactItem;->type:Lcom/perm/kate/ContactsListAdapter$ContactType;

    goto :goto_1

    .line 84
    :cond_2
    sget-object v1, Lcom/perm/kate/ContactsListAdapter$ContactType;->EMAIL:Lcom/perm/kate/ContactsListAdapter$ContactType;

    iput-object v1, v2, Lcom/perm/kate/ContactsListAdapter$ContactItem;->type:Lcom/perm/kate/ContactsListAdapter$ContactType;

    .line 85
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/perm/kate/GroupContactsActivity$2;->this$0:Lcom/perm/kate/GroupContactsActivity;

    invoke-static {v1}, Lcom/perm/kate/GroupContactsActivity;->access$200(Lcom/perm/kate/GroupContactsActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 87
    :cond_4
    iget-object p1, p0, Lcom/perm/kate/GroupContactsActivity$2;->this$0:Lcom/perm/kate/GroupContactsActivity;

    invoke-static {p1}, Lcom/perm/kate/GroupContactsActivity;->access$200(Lcom/perm/kate/GroupContactsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/perm/kate/GroupContactsActivity;->access$300(Lcom/perm/kate/GroupContactsActivity;Ljava/util/ArrayList;)V

    return-void
.end method
