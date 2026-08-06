.class Lcom/perm/kate/GroupContactsActivity$1;
.super Ljava/lang/Thread;
.source "GroupContactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GroupContactsActivity;->getProfiles()V
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
    .line 46
    iput-object p1, p0, Lcom/perm/kate/GroupContactsActivity$1;->this$0:Lcom/perm/kate/GroupContactsActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v1, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/perm/kate/GroupContactsActivity$1;->this$0:Lcom/perm/kate/GroupContactsActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupContactsActivity;->access$000(Lcom/perm/kate/GroupContactsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/perm/kate/api/Contact;

    .line 54
    .local v7, "contact":Lcom/perm/kate/api/Contact;
    iget-object v2, v7, Lcom/perm/kate/api/Contact;->user_id:Ljava/lang/Long;

    if-eqz v2, :cond_0

    .line 55
    iget-object v2, v7, Lcom/perm/kate/api/Contact;->user_id:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 57
    .end local v7    # "contact":Lcom/perm/kate/api/Contact;
    :cond_1
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    const/4 v2, 0x0

    const-string v3, "photo_100,online"

    const-string v4, "nom"

    iget-object v5, p0, Lcom/perm/kate/GroupContactsActivity$1;->this$0:Lcom/perm/kate/GroupContactsActivity;

    invoke-static {v5}, Lcom/perm/kate/GroupContactsActivity;->access$100(Lcom/perm/kate/GroupContactsActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v5

    iget-object v6, p0, Lcom/perm/kate/GroupContactsActivity$1;->this$0:Lcom/perm/kate/GroupContactsActivity;

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/session/Session;->getProfiles(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 58
    return-void
.end method
