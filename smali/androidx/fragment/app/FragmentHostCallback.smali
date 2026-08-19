.class public abstract Landroidx/fragment/app/FragmentHostCallback;
.super Landroidx/fragment/app/FragmentContainer;
.source "FragmentHostCallback.java"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mContext:Landroid/content/Context;

.field final mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 0

    .line 61
    invoke-direct {p0}, Landroidx/fragment/app/FragmentContainer;-><init>()V

    .line 48
    new-instance p4, Landroidx/fragment/app/FragmentManagerImpl;

    invoke-direct {p4}, Landroidx/fragment/app/FragmentManagerImpl;-><init>()V

    iput-object p4, p0, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    .line 62
    iput-object p1, p0, Landroidx/fragment/app/FragmentHostCallback;->mActivity:Landroid/app/Activity;

    const-string p1, "context == null"

    .line 63
    invoke-static {p2, p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Landroidx/fragment/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    const-string p1, "handler == null"

    .line 64
    invoke-static {p3, p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    iput-object p1, p0, Landroidx/fragment/app/FragmentHostCallback;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 2

    .line 57
    iget-object v0, p1, Landroidx/fragment/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p1, v0, v1}, Landroidx/fragment/app/FragmentHostCallback;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    return-void
.end method


# virtual methods
.method getActivity()Landroid/app/Activity;
    .locals 1

    .line 190
    iget-object v0, p0, Landroidx/fragment/app/FragmentHostCallback;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .line 195
    iget-object v0, p0, Landroidx/fragment/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getFragmentManagerImpl()Landroidx/fragment/app/FragmentManagerImpl;
    .locals 1

    .line 204
    iget-object v0, p0, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    return-object v0
.end method

.method getHandler()Landroid/os/Handler;
    .locals 1

    .line 200
    iget-object v0, p0, Landroidx/fragment/app/FragmentHostCallback;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method abstract onAttachFragment(Landroidx/fragment/app/Fragment;)V
.end method

.method public abstract onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract onGetLayoutInflater()Landroid/view/LayoutInflater;
.end method

.method public abstract onGetWindowAnimations()I
.end method

.method public abstract onHasWindowAnimations()Z
.end method

.method public abstract onRequestPermissionsFromFragment(Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)V
.end method

.method public abstract onShouldSaveFragmentState(Landroidx/fragment/app/Fragment;)Z
.end method

.method public abstract onStartActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
.end method

.method public abstract onSupportInvalidateOptionsMenu()V
.end method
