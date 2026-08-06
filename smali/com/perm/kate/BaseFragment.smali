.class public Lcom/perm/kate/BaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "BaseFragment.java"


# instance fields
.field create_time:J

.field managedCursors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field refreshState:Z

.field swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perm/kate/BaseFragment;->refreshState:Z

    .line 24
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/perm/kate/BaseFragment;->create_time:J

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/BaseFragment;->managedCursors:Ljava/util/ArrayList;

    .line 29
    invoke-static {}, Lcom/perm/utils/LeakDetector;->getInstance()Lcom/perm/utils/LeakDetector;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/perm/utils/LeakDetector;->monitorObject(Ljava/lang/Object;)V

    .line 30
    return-void
.end method

.method private deactivateManagedCursors()V
    .locals 4

    .prologue
    .line 136
    iget-object v2, p0, Lcom/perm/kate/BaseFragment;->managedCursors:Ljava/util/ArrayList;

    monitor-enter v2

    .line 137
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/BaseFragment;->managedCursors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 138
    .local v0, "c":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    goto :goto_0

    .line 139
    .end local v0    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    return-void
.end method

.method private requeryManagedCursors()V
    .locals 6

    .prologue
    .line 114
    :try_start_0
    const-string v2, "Kate.BaseFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requeryManagedCursors size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/BaseFragment;->managedCursors:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v3, p0, Lcom/perm/kate/BaseFragment;->managedCursors:Ljava/util/ArrayList;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :try_start_1
    iget-object v2, p0, Lcom/perm/kate/BaseFragment;->managedCursors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x5

    if-le v2, v4, :cond_0

    .line 119
    new-instance v2, Ljava/lang/Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Too much cursors managed in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 121
    :cond_0
    iget-object v2, p0, Lcom/perm/kate/BaseFragment;->managedCursors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 122
    .local v0, "c":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    goto :goto_0

    .line 123
    .end local v0    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 124
    :catch_0
    move-exception v1

    .line 125
    .local v1, "th":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 126
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 128
    .end local v1    # "th":Ljava/lang/Throwable;
    :goto_1
    return-void

    .line 123
    :cond_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public static setButtonsBg(Landroid/view/View;[I)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "view_ids"    # [I

    .prologue
    .line 201
    sget-boolean v2, Lcom/perm/kate/BaseActivity;->IsCustomTheme:Z

    if-nez v2, :cond_1

    .line 208
    :cond_0
    return-void

    .line 203
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 204
    aget v2, p1, v0

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 205
    .local v1, "view_button_bg":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 206
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v2

    invoke-virtual {v2}, Lcom/perm/kate/theme/ColorTheme;->getButtonBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 203
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method displayToast(I)V
    .locals 1
    .param p1, "res_id"    # I

    .prologue
    .line 68
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->displayToast(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method displayToast(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 75
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->displayToast(Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method displayToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/perm/kate/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 64
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/BaseFragment$1;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/BaseFragment$1;-><init>(Lcom/perm/kate/BaseFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method getRefreshState()Z
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/perm/kate/BaseFragment;->refreshState:Z

    return v0
.end method

.method public hideSwipeRefreshIndicator()V
    .locals 2

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/perm/kate/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/BaseFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/perm/kate/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/BaseFragment$3;

    invoke-direct {v1, p0}, Lcom/perm/kate/BaseFragment$3;-><init>(Lcom/perm/kate/BaseFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 186
    :cond_0
    return-void
.end method

.method protected initSwipeRefreshLayout(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 162
    const v0, 0x7f0e0245

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/perm/kate/BaseFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 163
    iget-object v0, p0, Lcom/perm/kate/BaseFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance v1, Lcom/perm/kate/BaseFragment$2;

    invoke-direct {v1, p0}, Lcom/perm/kate/BaseFragment$2;-><init>(Lcom/perm/kate/BaseFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 169
    iget-object v0, p0, Lcom/perm/kate/BaseFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    sget v3, Lcom/perm/kate/BaseActivity;->Theme:I

    invoke-static {v3}, Lcom/perm/kate/theme/ThemeColorsHelper;->getNotifyBgColor(I)I

    move-result v3

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 170
    sget v0, Lcom/perm/kate/BaseActivity;->Theme:I

    const v1, 0x7f0a00cc

    if-ne v0, v1, :cond_1

    .line 171
    iget-object v0, p0, Lcom/perm/kate/BaseFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {p0}, Lcom/perm/kate/BaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setProgressBackgroundColorSchemeColor(I)V

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    invoke-static {}, Lcom/perm/kate/theme/ThemeColorsHelper;->isLightTheme()Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/perm/kate/BaseFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const v1, -0xcccccd

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setProgressBackgroundColorSchemeColor(I)V

    goto :goto_0
.end method

.method protected jumpTop()V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/BaseFragment;->create_time:J

    .line 36
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 95
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 96
    iget-object v2, p0, Lcom/perm/kate/BaseFragment;->managedCursors:Ljava/util/ArrayList;

    monitor-enter v2

    .line 97
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/BaseFragment;->managedCursors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 98
    .local v0, "c":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 100
    .end local v0    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 99
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/perm/kate/BaseFragment;->managedCursors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 100
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/perm/kate/BaseFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 102
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 4
    .param p1, "hidden"    # Z

    .prologue
    .line 144
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V

    .line 145
    if-eqz p1, :cond_1

    .line 146
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;->deactivateManagedCursors()V

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/perm/kate/BaseFragment;->create_time:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xbebc200

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 149
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;->requeryManagedCursors()V

    goto :goto_0
.end method

.method protected onRefreshButton()V
    .locals 0

    .prologue
    .line 153
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 106
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 108
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/perm/kate/BaseFragment;->create_time:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xbebc200

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 109
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;->requeryManagedCursors()V

    .line 110
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 131
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 132
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;->deactivateManagedCursors()V

    .line 133
    return-void
.end method

.method protected setButtonsBg(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 193
    sget-boolean v1, Lcom/perm/kate/BaseActivity;->IsCustomTheme:Z

    if-nez v1, :cond_0

    .line 197
    :goto_0
    return-void

    .line 195
    :cond_0
    const/4 v1, 0x2

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 196
    .local v0, "view_ids":[I
    invoke-static {p1, v0}, Lcom/perm/kate/BaseFragment;->setButtonsBg(Landroid/view/View;[I)V

    goto :goto_0

    .line 195
    nop

    :array_0
    .array-data 4
        0x7f0e0068
        0x7f0e00a3
    .end array-data
.end method

.method protected showProgressBar(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/perm/kate/BaseFragment;->refreshState:Z

    .line 40
    invoke-virtual {p0}, Lcom/perm/kate/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    invoke-virtual {p0}, Lcom/perm/kate/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 43
    .local v0, "activity":Landroid/app/Activity;
    instance-of v1, v0, Lcom/perm/kate/KTabActivity;

    if-eqz v1, :cond_3

    .line 44
    check-cast v0, Lcom/perm/kate/KTabActivity;

    .end local v0    # "activity":Landroid/app/Activity;
    invoke-interface {v0}, Lcom/perm/kate/KTabActivity;->displayRefreshState()V

    .line 49
    :cond_2
    :goto_1
    if-nez p1, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/perm/kate/BaseFragment;->hideSwipeRefreshIndicator()V

    goto :goto_0

    .line 45
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_3
    instance-of v1, v0, Lcom/perm/kate/BaseActivity;

    if-eqz v1, :cond_2

    .line 47
    check-cast v0, Lcom/perm/kate/BaseActivity;

    .end local v0    # "activity":Landroid/app/Activity;
    iget-boolean v1, p0, Lcom/perm/kate/BaseFragment;->refreshState:Z

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    goto :goto_1
.end method

.method protected startManagingCursor(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 82
    iget-object v1, p0, Lcom/perm/kate/BaseFragment;->managedCursors:Ljava/util/ArrayList;

    monitor-enter v1

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/BaseFragment;->managedCursors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    monitor-exit v1

    .line 85
    return-void

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected stopManagingCursor(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 88
    iget-object v1, p0, Lcom/perm/kate/BaseFragment;->managedCursors:Ljava/util/ArrayList;

    monitor-enter v1

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/BaseFragment;->managedCursors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 90
    monitor-exit v1

    .line 91
    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
