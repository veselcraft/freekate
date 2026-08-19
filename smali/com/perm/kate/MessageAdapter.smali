.class public Lcom/perm/kate/MessageAdapter;
.super Landroid/widget/BaseAdapter;
.source "MessageAdapter.java"


# instance fields
.field activity:Lcom/perm/kate/BaseActivity;

.field core:Lcom/perm/kate/MessageAdapterCore;

.field me:Lcom/perm/kate/api/User;

.field messages:Ljava/util/ArrayList;

.field userCache:Lcom/perm/utils/UserCache;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lcom/perm/kate/BaseActivity;Lcom/perm/kate/api/User;Z)V
    .locals 1

    .line 19
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
    new-instance p1, Lcom/perm/kate/MessageAdapterCore;

    invoke-direct {p1, p2, p4}, Lcom/perm/kate/MessageAdapterCore;-><init>(Lcom/perm/kate/BaseActivity;Z)V

    iput-object p1, p0, Lcom/perm/kate/MessageAdapter;->core:Lcom/perm/kate/MessageAdapterCore;

    .line 23
    iput-object p3, p0, Lcom/perm/kate/MessageAdapter;->me:Lcom/perm/kate/api/User;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/perm/kate/MessageAdapter;->core:Lcom/perm/kate/MessageAdapterCore;

    invoke-virtual {v0}, Lcom/perm/kate/MessageAdapterCore;->destroy()V

    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lcom/perm/kate/MessageAdapter;->activity:Lcom/perm/kate/BaseActivity;

    .line 118
    iput-object v0, p0, Lcom/perm/kate/MessageAdapter;->core:Lcom/perm/kate/MessageAdapterCore;

    return-void
.end method

.method public displayNewData(Ljava/util/ArrayList;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/perm/kate/MessageAdapter;->messages:Ljava/util/ArrayList;

    .line 94
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/perm/kate/MessageAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/perm/kate/MessageAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/MessageAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Message;

    iget-wide v0, v0, Lcom/perm/kate/api/Message;->mid:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    move-exception v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 51
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/perm/kate/MessageAdapter;->core:Lcom/perm/kate/MessageAdapterCore;

    iget-boolean v0, v0, Lcom/perm/kate/MessageAdapterCore;->useTwoItems:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 107
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/MessageAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/Message;

    iget-boolean p1, p1, Lcom/perm/kate/api/Message;->is_out:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    .line 109
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 110
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v0, 0x0

    .line 60
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/MessageAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/perm/kate/api/Message;

    if-nez p2, :cond_0

    .line 62
    iget-object p1, p0, Lcom/perm/kate/MessageAdapter;->core:Lcom/perm/kate/MessageAdapterCore;

    iget-boolean v1, v3, Lcom/perm/kate/api/Message;->is_out:Z

    invoke-virtual {p1, p3, v1}, Lcom/perm/kate/MessageAdapterCore;->createNewView(Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    move-object p2, p1

    .line 64
    :cond_0
    iget-wide v1, v3, Lcom/perm/kate/api/Message;->uid:J

    invoke-static {v1, v2}, Lcom/perm/kate/api/User;->isVirtualUser(J)Z

    move-result p1

    if-nez p1, :cond_1

    .line 65
    iget-object p1, p0, Lcom/perm/kate/MessageAdapter;->userCache:Lcom/perm/utils/UserCache;

    iget-wide v1, v3, Lcom/perm/kate/api/Message;->uid:J

    invoke-virtual {p1, v1, v2}, Lcom/perm/utils/UserCache;->get(J)Lcom/perm/kate/api/User;

    move-result-object p1

    move-object v2, p1

    goto :goto_0

    :cond_1
    move-object v2, v0

    .line 68
    :goto_0
    iget-object v1, p0, Lcom/perm/kate/MessageAdapter;->core:Lcom/perm/kate/MessageAdapterCore;

    iget-object v4, p0, Lcom/perm/kate/MessageAdapter;->me:Lcom/perm/kate/api/User;

    iget-object v6, p0, Lcom/perm/kate/MessageAdapter;->userCache:Lcom/perm/utils/UserCache;

    iget-object v7, p0, Lcom/perm/kate/MessageAdapter;->messages:Ljava/util/ArrayList;

    move-object v5, p2

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/MessageAdapterCore;->displayMessage(Lcom/perm/kate/api/User;Lcom/perm/kate/api/Message;Lcom/perm/kate/api/User;Landroid/view/View;Lcom/perm/utils/UserCache;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 70
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 72
    iget-object v1, p0, Lcom/perm/kate/MessageAdapter;->activity:Lcom/perm/kate/BaseActivity;

    if-eqz v1, :cond_2

    .line 73
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 74
    :cond_2
    invoke-static {p1, v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_1
    if-nez p2, :cond_3

    .line 81
    :try_start_1
    iget-object p1, p0, Lcom/perm/kate/MessageAdapter;->core:Lcom/perm/kate/MessageAdapterCore;

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Lcom/perm/kate/MessageAdapterCore;->createNewView(Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 82
    new-instance p1, Ljava/lang/Exception;

    const-string p3, "recreated view"

    invoke-direct {p1, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    .line 85
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 86
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/perm/kate/MessageAdapter;->core:Lcom/perm/kate/MessageAdapterCore;

    iget-boolean v0, v0, Lcom/perm/kate/MessageAdapterCore;->useTwoItems:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setSelectedMessages(Ljava/util/ArrayList;)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/perm/kate/MessageAdapter;->core:Lcom/perm/kate/MessageAdapterCore;

    iput-object p1, v0, Lcom/perm/kate/MessageAdapterCore;->selectedMessages:Ljava/util/ArrayList;

    return-void
.end method
