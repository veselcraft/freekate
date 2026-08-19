.class public abstract Landroidx/fragment/app/FragmentManager;
.super Ljava/lang/Object;
.source "FragmentManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract beginTransaction()Landroidx/fragment/app/FragmentTransaction;
.end method

.method public abstract dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract findFragmentById(I)Landroidx/fragment/app/Fragment;
.end method

.method public abstract findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
.end method

.method public abstract getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
.end method

.method public abstract getFragments()Ljava/util/List;
.end method

.method public abstract isStateSaved()Z
.end method

.method public abstract popBackStack(II)V
.end method

.method public abstract popBackStackImmediate()Z
.end method

.method public abstract putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V
.end method

.method public abstract saveFragmentInstanceState(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment$SavedState;
.end method
