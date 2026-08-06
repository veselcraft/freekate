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
    .param p1, "this$0"    # Lcom/perm/kate/GroupContactsActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/perm/kate/GroupContactsActivity$2;->this$0:Lcom/perm/kate/GroupContactsActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 93
    iget-object v0, p0, Lcom/perm/kate/GroupContactsActivity$2;->this$0:Lcom/perm/kate/GroupContactsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/GroupContactsActivity;->showProgressBar(Z)V

    .line 94
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 10
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 66
    move-object v3, p1

    check-cast v3, Ljava/util/ArrayList;

    .line 67
    .local v3, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/User;>;"
    iget-object v4, p0, Lcom/perm/kate/GroupContactsActivity$2;->this$0:Lcom/perm/kate/GroupContactsActivity;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/perm/kate/GroupContactsActivity;->showProgressBar(Z)V

    .line 68
    iget-object v4, p0, Lcom/perm/kate/GroupContactsActivity$2;->this$0:Lcom/perm/kate/GroupContactsActivity;

    invoke-static {v4}, Lcom/perm/kate/GroupContactsActivity;->access$200(Lcom/perm/kate/GroupContactsActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 69
    iget-object v4, p0, Lcom/perm/kate/GroupContactsActivity$2;->this$0:Lcom/perm/kate/GroupContactsActivity;

    invoke-static {v4}, Lcom/perm/kate/GroupContactsActivity;->access$000(Lcom/perm/kate/GroupContactsActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Contact;

    .line 70
    .local v0, "contact":Lcom/perm/kate/api/Contact;
    new-instance v1, Lcom/perm/kate/ContactsListAdapter$ContactItem;

    invoke-direct {v1}, Lcom/perm/kate/ContactsListAdapter$ContactItem;-><init>()V

    .line 71
    .local v1, "item":Lcom/perm/kate/ContactsListAdapter$ContactItem;
    iput-object v0, v1, Lcom/perm/kate/ContactsListAdapter$ContactItem;->contact:Lcom/perm/kate/api/Contact;

    .line 72
    iget-object v5, v0, Lcom/perm/kate/api/Contact;->user_id:Ljava/lang/Long;

    if-eqz v5, :cond_2

    .line 73
    sget-object v5, Lcom/perm/kate/ContactsListAdapter$ContactType;->USER:Lcom/perm/kate/ContactsListAdapter$ContactType;

    iput-object v5, v1, Lcom/perm/kate/ContactsListAdapter$ContactItem;->type:Lcom/perm/kate/ContactsListAdapter$ContactType;

    .line 74
    if-eqz v3, :cond_1

    .line 75
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/User;

    .line 76
    .local v2, "user":Lcom/perm/kate/api/User;
    iget-wide v6, v2, Lcom/perm/kate/api/User;->uid:J

    iget-object v8, v0, Lcom/perm/kate/api/Contact;->user_id:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 77
    iput-object v2, v1, Lcom/perm/kate/ContactsListAdapter$ContactItem;->user:Lcom/perm/kate/api/User;

    .line 85
    .end local v2    # "user":Lcom/perm/kate/api/User;
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/perm/kate/GroupContactsActivity$2;->this$0:Lcom/perm/kate/GroupContactsActivity;

    invoke-static {v5}, Lcom/perm/kate/GroupContactsActivity;->access$200(Lcom/perm/kate/GroupContactsActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 81
    :cond_2
    iget-object v5, v0, Lcom/perm/kate/api/Contact;->phone:Ljava/lang/String;

    invoke-static {v5}, Lcom/perm/kate/Helper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 82
    sget-object v5, Lcom/perm/kate/ContactsListAdapter$ContactType;->PHONE:Lcom/perm/kate/ContactsListAdapter$ContactType;

    iput-object v5, v1, Lcom/perm/kate/ContactsListAdapter$ContactItem;->type:Lcom/perm/kate/ContactsListAdapter$ContactType;

    goto :goto_1

    .line 84
    :cond_3
    sget-object v5, Lcom/perm/kate/ContactsListAdapter$ContactType;->EMAIL:Lcom/perm/kate/ContactsListAdapter$ContactType;

    iput-object v5, v1, Lcom/perm/kate/ContactsListAdapter$ContactItem;->type:Lcom/perm/kate/ContactsListAdapter$ContactType;

    goto :goto_1

    .line 87
    .end local v0    # "contact":Lcom/perm/kate/api/Contact;
    .end local v1    # "item":Lcom/perm/kate/ContactsListAdapter$ContactItem;
    :cond_4
    iget-object v4, p0, Lcom/perm/kate/GroupContactsActivity$2;->this$0:Lcom/perm/kate/GroupContactsActivity;

    iget-object v5, p0, Lcom/perm/kate/GroupContactsActivity$2;->this$0:Lcom/perm/kate/GroupContactsActivity;

    invoke-static {v5}, Lcom/perm/kate/GroupContactsActivity;->access$200(Lcom/perm/kate/GroupContactsActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/perm/kate/GroupContactsActivity;->access$300(Lcom/perm/kate/GroupContactsActivity;Ljava/util/ArrayList;)V

    .line 88
    return-void
.end method
