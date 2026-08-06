.class public Lcom/perm/kate/MessageAdapter;
.super Landroid/widget/BaseAdapter;
.source "MessageAdapter.java"


# instance fields
.field activity:Lcom/perm/kate/BaseActivity;

.field core:Lcom/perm/kate/MessageAdapterCore;

.field me:Lcom/perm/kate/api/User;

.field messages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Message;",
            ">;"
        }
    .end annotation
.end field

.field userCache:Lcom/perm/utils/UserCache;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lcom/perm/kate/BaseActivity;Lcom/perm/kate/api/User;Z)V
    .locals 1
    .param p2, "activity"    # Lcom/perm/kate/BaseActivity;
    .param p3, "me"    # Lcom/perm/kate/api/User;
    .param p4, "is_chat"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Message;",
            ">;",
            "Lcom/perm/kate/BaseActivity;",
            "Lcom/perm/kate/api/User;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Message;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 16
    new-instance v0, Lcom/perm/utils/UserCache;

    invoke-direct {v0}, Lcom/perm/utils/UserCache;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/MessageAdapter;->userCache:Lcom/perm/utils/UserCache;

    .line 20
    iput-object p1, p0, Lcom/perm/kate/MessageAdapter;->messages:Ljava/util/ArrayList;

    .line 21
    iput-object p2, p0, Lcom/perm/kate/MessageAdapter;->activity:Lcom/perm/kate/BaseActivity;

    .line 22
    new-instance v0, Lcom/perm/kate/MessageAdapterCore;

    invoke-direct {v0, p2, p4}, Lcom/perm/kate/MessageAdapterCore;-><init>(Lcom/perm/kate/BaseActivity;Z)V

    iput-object v0, p0, Lcom/perm/kate/MessageAdapter;->core:Lcom/perm/kate/MessageAdapterCore;

    .line 23
    iput-object p3, p0, Lcom/perm/kate/MessageAdapter;->me:Lcom/perm/kate/api/User;

    .line 24
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 105
    iget-object v0, p0, Lcom/perm/kate/MessageAdapter;->core:Lcom/perm/kate/MessageAdapterCore;

    invoke-virtual {v0}, Lcom/perm/kate/MessageAdapterCore;->destroy()V

    .line 106
    iput-object v1, p0, Lcom/perm/kate/MessageAdapter;->activity:Lcom/perm/kate/BaseActivity;

    .line 107
    iput-object v1, p0, Lcom/perm/kate/MessageAdapter;->core:Lcom/perm/kate/MessageAdapterCore;

    .line 108
    return-void
.end method

.method public displayNewData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Message;>;"
    iput-object p1, p0, Lcom/perm/kate/MessageAdapter;->messages:Ljava/util/ArrayList;

    .line 83
    invoke-virtual {p0}, Lcom/perm/kate/MessageAdapter;->notifyDataSetChanged()V

    .line 84
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/perm/kate/MessageAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 37
    iget-object v0, p0, Lcom/perm/kate/MessageAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 42
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 93
    iget-object v1, p0, Lcom/perm/kate/MessageAdapter;->core:Lcom/perm/kate/MessageAdapterCore;

    iget-boolean v1, v1, Lcom/perm/kate/MessageAdapterCore;->useTwoItems:Z

    if-nez v1, :cond_0

    .line 100
    :goto_0
    return v2

    .line 96
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/MessageAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Message;

    iget-boolean v1, v1, Lcom/perm/kate/api/Message;->is_out:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 99
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 47
    move-object v4, p2

    .line 49
    .local v4, "view":Landroid/view/View;
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/MessageAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/Message;

    .line 50
    .local v2, "message":Lcom/perm/kate/api/Message;
    if-nez v4, :cond_0

    .line 51
    iget-object v0, p0, Lcom/perm/kate/MessageAdapter;->core:Lcom/perm/kate/MessageAdapterCore;

    iget-boolean v3, v2, Lcom/perm/kate/api/Message;->is_out:Z

    invoke-virtual {v0, p3, v3}, Lcom/perm/kate/MessageAdapterCore;->createNewView(Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 52
    :cond_0
    const/4 v1, 0x0

    .line 53
    .local v1, "user":Lcom/perm/kate/api/User;
    iget-wide v8, v2, Lcom/perm/kate/api/Message;->uid:J

    invoke-static {v8, v9}, Lcom/perm/kate/api/User;->isVirtualUser(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/perm/kate/MessageAdapter;->userCache:Lcom/perm/utils/UserCache;

    iget-wide v8, v2, Lcom/perm/kate/api/Message;->uid:J

    invoke-virtual {v0, v8, v9}, Lcom/perm/utils/UserCache;->get(J)Lcom/perm/kate/api/User;

    move-result-object v1

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/MessageAdapter;->core:Lcom/perm/kate/MessageAdapterCore;

    iget-object v3, p0, Lcom/perm/kate/MessageAdapter;->me:Lcom/perm/kate/api/User;

    iget-object v5, p0, Lcom/perm/kate/MessageAdapter;->userCache:Lcom/perm/utils/UserCache;

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/MessageAdapterCore;->displayMessage(Lcom/perm/kate/api/User;Lcom/perm/kate/api/Message;Lcom/perm/kate/api/User;Landroid/view/View;Lcom/perm/utils/UserCache;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v1    # "user":Lcom/perm/kate/api/User;
    .end local v2    # "message":Lcom/perm/kate/api/Message;
    :goto_0
    if-nez v4, :cond_2

    .line 70
    :try_start_1
    iget-object v0, p0, Lcom/perm/kate/MessageAdapter;->core:Lcom/perm/kate/MessageAdapterCore;

    const/4 v3, 0x0

    invoke-virtual {v0, p3, v3}, Lcom/perm/kate/MessageAdapterCore;->createNewView(Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 71
    new-instance v0, Ljava/lang/Exception;

    const-string v3, "recreated view"

    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 78
    :cond_2
    :goto_1
    return-object v4

    .line 58
    :catch_0
    move-exception v7

    .line 59
    .local v7, "th":Ljava/lang/Throwable;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    .line 60
    const/4 v6, 0x0

    .line 61
    .local v6, "info":Ljava/lang/String;
    iget-object v0, p0, Lcom/perm/kate/MessageAdapter;->activity:Lcom/perm/kate/BaseActivity;

    if-eqz v0, :cond_3

    .line 62
    iget-object v0, p0, Lcom/perm/kate/MessageAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 63
    :cond_3
    invoke-static {v7, v6}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 73
    .end local v6    # "info":Ljava/lang/String;
    .end local v7    # "th":Ljava/lang/Throwable;
    :catch_1
    move-exception v7

    .line 74
    .restart local v7    # "th":Ljava/lang/Throwable;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    .line 75
    invoke-static {v7}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/perm/kate/MessageAdapter;->core:Lcom/perm/kate/MessageAdapterCore;

    iget-boolean v0, v0, Lcom/perm/kate/MessageAdapterCore;->useTwoItems:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setSelectedMessages(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "selectedMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/perm/kate/MessageAdapter;->core:Lcom/perm/kate/MessageAdapterCore;

    iput-object p1, v0, Lcom/perm/kate/MessageAdapterCore;->selectedMessages:Ljava/util/ArrayList;

    .line 28
    return-void
.end method
