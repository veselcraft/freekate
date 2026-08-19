.class public Lcom/perm/kate/BaseFragment;
.super Landroidx/fragment/app/Fragment;
.source "BaseFragment.java"


# instance fields
.field create_time:J

.field managedCursors:Ljava/util/ArrayList;

.field refreshState:Z

.field swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/perm/kate/BaseFragment;->refreshState:Z

    const-wide/16 v0, 0x0

    .line 25
    iput-wide v0, p0, Lcom/perm/kate/BaseFragment;->create_time:J

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/BaseFragment;->managedCursors:Ljava/util/ArrayList;

    .line 30
    invoke-static {}, Lcom/perm/utils/LeakDetector;->getInstance()Lcom/perm/utils/LeakDetector;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/perm/utils/LeakDetector;->monitorObject(Ljava/lang/Object;)V

    return-void
.end method

.method private deactivateManagedCursors()V
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/perm/kate/BaseFragment;->managedCursors:Ljava/util/ArrayList;

    monitor-enter v0

    .line 138
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/BaseFragment;->managedCursors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    .line 139
    invoke-interface {v2}, Landroid/database/Cursor;->deactivate()V

    goto :goto_0

    .line 140
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method private requeryManagedCursors()V
    .locals 4

    :try_start_0
    const-string v0, "Kate.BaseFragment"

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requeryManagedCursors size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/perm/kate/BaseFragment;->managedCursors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lcom/perm/kate/BaseFragment;->managedCursors:Ljava/util/ArrayList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 119
    :try_start_1
    iget-object v1, p0, Lcom/perm/kate/BaseFragment;->managedCursors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_0

    .line 120
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too much cursors managed in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/BaseFragment;->managedCursors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    .line 123
    invoke-interface {v2}, Landroid/database/Cursor;->requery()Z

    goto :goto_0

    .line 124
    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 127
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public static setButtonsBg(Landroid/view/View;[I)V
    .locals 3

    .line 196
    sget-boolean v0, Lcom/perm/kate/BaseActivity;->IsCustomTheme:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 198
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 199
    aget v1, p1, v0

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 201
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v2

    invoke-virtual {v2}, Lcom/perm/kate/theme/ColorTheme;->getButtonBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method displayToast(I)V
    .locals 0

    .line 69
    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseFragment;->displayToast(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method displayToast(Ljava/lang/CharSequence;)V
    .locals 0

    .line 76
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseFragment;->displayToast(Ljava/lang/String;)V

    return-void
.end method

.method displayToast(Ljava/lang/String;)V
    .locals 2

    .line 56
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 58
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/BaseFragment$1;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/BaseFragment$1;-><init>(Lcom/perm/kate/BaseFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method getRefreshState()Z
    .locals 1

    .line 185
    iget-boolean v0, p0, Lcom/perm/kate/BaseFragment;->refreshState:Z

    return v0
.end method

.method public hideSwipeRefreshIndicator()V
    .locals 2

    .line 173
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/BaseFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/BaseFragment$2;

    invoke-direct {v1, p0}, Lcom/perm/kate/BaseFragment$2;-><init>(Lcom/perm/kate/BaseFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method protected initSwipeRefreshLayout(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f090315

    .line 163
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object p1, p0, Lcom/perm/kate/BaseFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 164
    new-instance v0, Lcom/perm/kate/BaseFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/perm/kate/BaseFragment$$ExternalSyntheticLambda0;-><init>(Lcom/perm/kate/BaseFragment;)V

    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 165
    iget-object p1, p0, Lcom/perm/kate/BaseFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v0, 0x1

    new-array v0, v0, [I

    sget v1, Lcom/perm/kate/BaseActivity;->Theme:I

    invoke-static {v1}, Lcom/perm/kate/theme/ThemeColorsHelper;->getNotifyBgColor(I)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 166
    sget p1, Lcom/perm/kate/BaseActivity;->Theme:I

    const v0, 0x7f1000df

    if-ne p1, v0, :cond_0

    .line 167
    iget-object p1, p0, Lcom/perm/kate/BaseFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setProgressBackgroundColorSchemeColor(I)V

    goto :goto_0

    .line 168
    :cond_0
    invoke-static {}, Lcom/perm/kate/theme/ThemeColorsHelper;->isLightTheme()Z

    move-result p1

    if-nez p1, :cond_1

    .line 169
    iget-object p1, p0, Lcom/perm/kate/BaseFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const v0, -0xcccccd

    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setProgressBackgroundColorSchemeColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected jumpTop()V
    .locals 0

    return-void
.end method

.method protected onCommitContent(Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 35
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/BaseFragment;->create_time:J

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 96
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 97
    iget-object v0, p0, Lcom/perm/kate/BaseFragment;->managedCursors:Ljava/util/ArrayList;

    monitor-enter v0

    .line 98
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/BaseFragment;->managedCursors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    .line 99
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/BaseFragment;->managedCursors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 101
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 102
    iput-object v0, p0, Lcom/perm/kate/BaseFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    return-void

    :catchall_0
    move-exception v1

    .line 101
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public onHiddenChanged(Z)V
    .locals 4

    .line 145
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    if-eqz p1, :cond_0

    .line 147
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;->deactivateManagedCursors()V

    goto :goto_0

    .line 149
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/perm/kate/BaseFragment;->create_time:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xbebc200

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    .line 150
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;->requeryManagedCursors()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onRefreshButton()V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 5

    .line 107
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 109
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/perm/kate/BaseFragment;->create_time:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xbebc200

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 110
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;->requeryManagedCursors()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 132
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 133
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;->deactivateManagedCursors()V

    return-void
.end method

.method protected setButtonsBg(Landroid/view/View;)V
    .locals 1

    .line 189
    sget-boolean v0, Lcom/perm/kate/BaseActivity;->IsCustomTheme:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 191
    fill-array-data v0, :array_0

    .line 192
    invoke-static {p1, v0}, Lcom/perm/kate/BaseFragment;->setButtonsBg(Landroid/view/View;[I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f090138
        0x7f090139
    .end array-data
.end method

.method protected showProgressBar(Z)V
    .locals 2

    .line 40
    iput-boolean p1, p0, Lcom/perm/kate/BaseFragment;->refreshState:Z

    .line 41
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 43
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 44
    instance-of v1, v0, Lcom/perm/kate/KTabActivity;

    if-eqz v1, :cond_1

    .line 45
    check-cast v0, Lcom/perm/kate/KTabActivity;

    invoke-interface {v0}, Lcom/perm/kate/KTabActivity;->displayRefreshState()V

    goto :goto_0

    .line 46
    :cond_1
    instance-of v1, v0, Lcom/perm/kate/BaseActivity;

    if-eqz v1, :cond_2

    .line 48
    check-cast v0, Lcom/perm/kate/BaseActivity;

    iget-boolean v1, p0, Lcom/perm/kate/BaseFragment;->refreshState:Z

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    :cond_2
    :goto_0
    if-nez p1, :cond_3

    .line 51
    invoke-virtual {p0}, Lcom/perm/kate/BaseFragment;->hideSwipeRefreshIndicator()V

    :cond_3
    return-void
.end method

.method protected startManagingCursor(Landroid/database/Cursor;)V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/perm/kate/BaseFragment;->managedCursors:Ljava/util/ArrayList;

    monitor-enter v0

    .line 84
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/BaseFragment;->managedCursors:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected stopManagingCursor(Landroid/database/Cursor;)V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/perm/kate/BaseFragment;->managedCursors:Ljava/util/ArrayList;

    monitor-enter v0

    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/BaseFragment;->managedCursors:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 91
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
